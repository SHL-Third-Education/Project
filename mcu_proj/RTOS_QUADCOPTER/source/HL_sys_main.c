#include "MPU9250.h"
#include "QuadCopter.h"
#include "MS5611.h"

int i;
int real_elev,real_rudd,real_ail,throttle;  // 조종기 전후진, 좌우회전, 제자리 회전, 스로틀
int quad_start; // 쿼드콥터 켜기

xTaskHandle task_MPU6050_handle;  // MPU6050 센서 값 다루는 테스크
xTaskHandle task_MPU9250_handle;  // MPU9250
xTaskHandle task_CALATT_handle; // 자세 제어 테스크
xTaskHandle task_CALALT_handle; // 고도 제어 테스크
xTaskHandle task_CONTROLLER_handle; // 조종기 테스크

QueueHandle_t mutex;

void send_data(sciBASE_t *sci, uint8* msg, int length);


void MPU9250_TASK(void *pbParameters){

    for(;;){

        xSemaphoreTake(mutex, portMAX_DELAY);
        get_YPR();

        roll_angle_in = roll - init_roll;
        pitch_angle_in = pitch - init_pitch;
        yaw_angle_in = yaw - init_yaw;

        roll_rate_in = gyro_roll_input;
        pitch_rate_in = gyro_pitch_input;
        yaw_rate_in = gyro_yaw_input;

        h_cal_controller(quad_start);


        vTaskDelay(10);
        if (stop_n_start == -1)
        {
             pwmSet();
//            if(count == 0){
//                disp_set("Quad is stopped!!\n\r\0");
//                count++;
//            }
        }

        if (stop_n_start == 0)  // 수동모드
        {


            calcYPRtoDualPID();


            calcMotorPWM();


        }

        if (stop_n_start == 1)  // 고도 제어 모드
        {
            /*roll(x)와 pitch(y) yaw(z) 의 각도*/
//            get_YPR();
//           cal_altitude();

            /*QuadCopter Dynamics for Math Calculation & PWM for mpu9250*/

//            calcMotorPWM();

        }

        xSemaphoreGive(mutex);
    }


    // vTaskDelay(10);
}


int main(void)
{


    sciInit();

    disp_set("SCI Configuration Success!!\n\r\0");


//    disp_set("GIO Init Success!!\n\r\0");

    i2cInit();
    wait(10000000);
    disp_set("I2C Init Success!!\n\r\0");

    etpwmInit();
    disp_set("ETPWM Configuration Success!!\n\r\0");


    etpwmStartTBCLK();
    wait(10000);

    pwmSet();

    uint8 c = readByte(MPU9250_ADDRESS, WHO_AM_I_MPU9250); // MPU9250 인식이 되어 제대로 값이 읽어져 오면 0x71이 읽힘.

    if (c == 0x71)
    {
//        Init_MS5611(MS5611_STANDARD);

//        disp_set("Init MS5611 Success!!\n\r\0");

        calibrateMPU9250(gyroBias, accelBias); // gyro, acc 평균값 셋팅을 위한 함수
        disp_set("MPU9250 calibration Success!!!!!!\n\r\0");

        initMPU9250(); // MPU9250 초기화
        disp_set("MPU9250 Init Success!!!!!!\n\r\0");

        initAK8963(magCalibration); // 지자기 초기화
        disp_set("MPU9250 AK8963 Init Success!!!!!!\n\r\0");

        get_offset_value(); // gyro 값을 2000번을 읽어 평균값을 구하는 함수
        disp_set("gyro_offset_setting Success!!\n\r\0");

        initMotorPWM();
        disp_set("Init MOTOR_PWM Success!!\n\r\0");

        ecapInit();
        _enable_interrupt_();

        ecapStartCounter(ecapREG1);
        ecapStartCounter(ecapREG2);
        ecapStartCounter(ecapREG3);
        ecapStartCounter(ecapREG4);
        ecapStartCounter(ecapREG5);
        ecapStartCounter(ecapREG6);
        ecapEnableCapture(ecapREG1);
        ecapEnableCapture(ecapREG2);
        ecapEnableCapture(ecapREG3);
        ecapEnableCapture(ecapREG4);
        ecapEnableCapture(ecapREG5);
        ecapEnableCapture(ecapREG6);
        disp_set("Init Controller Success!!\n\r\0");

        initYPR();  // roll,pitch,yaw를 2000번 돌려서 0도를 잡기 위함.
        disp_set("Init YPR Success!!\n\r\0");



        wait(1000000);

    }
    else
    {
        disp_set("MPU9250 doesn`t work!!!");
        while (1)
            ;
    }

    vSemaphoreCreateBinary(mutex) // 매크로

  //  start = clock();

    if(xTaskCreate(MPU9250_TASK, "Task1",configMINIMAL_STACK_SIZE, NULL, 1, &task_MPU9250_handle) != pdTRUE){

        while(1);
    }

    vTaskStartScheduler();

    while(1);
}

void send_data(sciBASE_t *sci, uint8* msg, int length){
    int i;
    for(i=0;i<length;i++) sciSendByte(sci, msg[i]);
}

void ecapNotification(ecapBASE_t *ecap, uint16 flags)
{
    uint32 cap[12];


    cap[0] = ecapGetCAP1(ecapREG1);
    cap[1] = ecapGetCAP2(ecapREG1);
    cap[2] = ecapGetCAP1(ecapREG2);
    cap[3] = ecapGetCAP2(ecapREG2);
    cap[4] = ecapGetCAP1(ecapREG3);
    cap[5] = ecapGetCAP2(ecapREG3);
    cap[6] = ecapGetCAP1(ecapREG4);
    cap[7] = ecapGetCAP2(ecapREG4);
    cap[8] = ecapGetCAP1(ecapREG5);
    cap[9] = ecapGetCAP2(ecapREG5);
    cap[10] = ecapGetCAP1(ecapREG6);
    cap[11] = ecapGetCAP2(ecapREG6);

    real_ail = (cap[3] - cap[2]) * 1000 / VCLK3_FREQ /1000 +10; // ecap2  channel 1
    real_elev = (cap[1] - cap[0]) * 1000 / VCLK3_FREQ /1000 -17;  // ecap1  channel 2
    throttle = (cap[5] - cap[4]) * 1000 / VCLK3_FREQ / 1000 +2 ; // ecap3   channel 3
    real_rudd = (cap[7] - cap[6]) * 1000 / VCLK3_FREQ /1000 -16; //ecap4     channel 4
    quad_start = (cap[9] - cap[8]) * 1000 / VCLK3_FREQ / 1000;
    p_trim = (cap[11] - cap[10]) * 1000 / VCLK3_FREQ / 60000 - 16.615;   // 0~16.666

//    sprintf(txt_buf,
//            "p_trim = %f ms\n\r",
//            p_trim);
//    buf_len = strlen(txt_buf);
//    sciDisplayText(UART, (uint8 *) txt_buf, buf_len);
//    sprintf(txt_buf, "elev = %d ms\t rudd = %d ms\t ail = %d ms\t thro = %d ms \t start = %d ms\n\r", real_elev,real_rudd,real_ail,throttle,quad_start);
//    buf_len = strlen(txt_buf);
//    sciDisplayText(UART, (uint8 *) txt_buf, buf_len);
}
