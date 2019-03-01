/*
 * Can Custom Protocol
 * 1   -   좌회전
 * 2   -   우회전
 * 3   -   전진
 * 4   -   후진
 * 5   -   정지
 * 6   -   충돌경보          -   0 or 1
 * 7   -   좌측 깜빡이      -   0 or 1
 * 8   -   우측 깜빡이      -   0 or 1
 * 9   -   브레이크 등      -   0 or 1
 * 10  -   영상 데이터      -   0 or 1(장애물 존재 여부), 근접여부
 * 11  -   라디오             -
 * 12  -   각도 지정         -   PWM Duty(서보)
 * 13  -   속도 지정         -   PWM Duty
 * 14  -   카메라 온/오프 -   0 or 1
 * 15  -   영상 데이터      -   장애물 존재 여부
 * 16  -   레이더 데이터   -   각도, 거리
 * 33  -   수동 / 자동 전환 -  0(수동), 1(자동)
 * 44  -   전 기능 정지     -  고려중
 * */

//문제는 태스크가 많은경우 polling 방식 수신이 컨텍스트 스위칭 에러가 발생할 가능성이 높다.
//CAN data 수신시, 무시하는 데이터가 존재하여 안정적이지 않다. CAN DATA를 인터럽트 방식으로 구현하도록 하자.
#include <FreeRTOS.h>
#include <FreeRTOSConfig.h>
#include <HL_adc.h>
#include <HL_can.h>
#include <HL_etpwm.h>
#include <HL_gio.h>
#include <HL_hal_stdtypes.h>
#include <HL_reg_can.h>
#include <HL_reg_etpwm.h>
#include <HL_reg_gio.h>
#include <HL_reg_sci.h>
#include <HL_sci.h>
#include <os_mpu_wrappers.h>
#include <os_portmacro.h>
#include <os_projdefs.h>
#include <os_queue.h>
#include <os_semphr.h>
#include <os_task.h>

#define etPwm1_neutral 1500
#define etPwm2_neutral 1875

xTaskHandle xTask0Handle;
xTaskHandle xTask1Handle;
xTaskHandle xTask2Handle;
xTaskHandle xTask3Handle;

QueueHandle_t mutex = NULL;

enum
{
    nothing, right_light, left_light, brake_light, manual, autonomous
} flag;

void canMessageNotification(canBASE_t *node, uint32 messageBox);

char submodule = 0;
char status = autonomous;
uint8 rx_data[8] = { 0 };
uint16 etPwm1_val = 0;
uint16 etPwm2_val = 0;

/*
#define D_COUNT 8
uint8 tx_data[D_COUNT] = { 1, 2, 3, 4, 4, 3, 2, 1 };
*/

void vTask0(void* pvParameters); // Can data instruction 판단 TASK
void vTask1(void* pvParameters); // Angle control TASK
void vTask2(void* pvParameters); // velocity control TASK
void vTask3(void* pvParameters);

void send_data(sciBASE_t* sci, uint8* msg, int length);
void delay(int time);

int main(void)
{
    sciInit();
    gioInit();
    canInit();
    //_enable_interrupt_(); //
    etpwmInit();
    etpwmStartTBCLK();
    etpwmREG1->CMPA = etPwm1_neutral;
    etpwmREG2->CMPA = etPwm2_neutral;

    gioSetBit(gioPORTA, 0, 1); //3.3v 전원공급용
    gioSetBit(gioPORTB, 1, 0); //입력
    gioSetBit(gioPORTB, 2, 1); //센서
    gioSetBit(gioPORTB, 3, 1); //LED
    gioSetBit(gioPORTB, 4, 1); //

    gioSetBit(gioPORTB, 0, 0);
    adcStartConversion(adcREG1, adcGROUP1);

    delay(10000);

    canEnableErrorNotification(canREG1);

    vSemaphoreCreateBinary(mutex)

    if (xTaskCreate(vTask0, "instructon_judge", configMINIMAL_STACK_SIZE, NULL,
                    5, &xTask0Handle) != pdTRUE)
    {
        while (1)
            ;
    }

    if (xTaskCreate(vTask1, "submodule1", configMINIMAL_STACK_SIZE, NULL, 1,
                    &xTask1Handle) != pdTRUE)
    {
        while (1)
            ;
    }
    if (xTaskCreate(vTask2, "submodule2", configMINIMAL_STACK_SIZE, NULL, 1,
                    &xTask2Handle) != pdTRUE)
    {
        while (1)
            ;
    }
    if (xTaskCreate(vTask3, "submodule3", configMINIMAL_STACK_SIZE, NULL, 1,
                    &xTask3Handle) != pdTRUE)
    {
        while (1)
            ;
    }

    vTaskStartScheduler();
/*
    while (1){
        canTransmit(canREG1, canMESSAGE_BOX1, (const uint8 *)&tx_data[0]);
    }
*/

    while (1)
        ;

}

void vTask0(void *pbParameters) // judge_instruction
{
    while (1)
    {
        if (xSemaphoreTake(mutex, ( TickType_t ) 0x01) == pdTRUE)
        { //키를 받아왔을 경우, 실행코드 입력.
            if (status == autonomous)
            {
                switch (rx_data[0])
                {
                case 1:
                    xSemaphoreGive(mutex);
                    vTaskDelay(10);
                    break;
                case 2:
                    xSemaphoreGive(mutex);
                    vTaskDelay(10);
                    break;
                case 3:
                    xSemaphoreGive(mutex);
                    vTaskDelay(10);
                    break;
                case 4:
                    xSemaphoreGive(mutex);
                    vTaskDelay(10);
                    break;
                case 5:
                    xSemaphoreGive(mutex);
                    vTaskDelay(10);
                    break;
                case 6:
                    xSemaphoreGive(mutex);
                    vTaskDelay(10);
                    break;
                case 7: //left light
                    if (rx_data[1] == 1)
                        submodule = left_light;
                    else
                        submodule = nothing;
                    xSemaphoreGive(mutex);
                    vTaskDelay(10);
                    break;
                case 8: //right light
                    if (rx_data[1] == 1)
                        submodule = right_light;
                    else
                        submodule = nothing;
                    xSemaphoreGive(mutex);
                    vTaskDelay(10);
                    break;
                case 9:
                    if (rx_data[1] == 1)
                        submodule = brake_light;
                    else
                        submodule = 0;
                    xSemaphoreGive(mutex);
                    vTaskDelay(10);
                    break;
                case 10:
                    xSemaphoreGive(mutex);
                    vTaskDelay(10);
                    break;
                case 11:
                    xSemaphoreGive(mutex);
                    vTaskDelay(10);
                    break;
                case 12: // move angle
                    etPwm2_val = ((rx_data[1] - 0x30) * 1000)
                            + ((rx_data[2] - 0x30) * 100)
                            + ((rx_data[3] - 0x30) * 10) + (rx_data[4] - 0x30);
                    etpwmREG2->CMPA = etPwm2_val;
                    xSemaphoreGive(mutex);
                    vTaskDelay(10);
                    break;
                case 13: // move velocity
                    etPwm1_val = ((rx_data[1] - 0x30) * 1000)
                            + ((rx_data[2] - 0x30) * 100)
                            + ((rx_data[3] - 0x30) * 10) + (rx_data[4] - 0x30);
                    etpwmREG1->CMPA = etPwm1_val;
                    xSemaphoreGive(mutex);
                    vTaskDelay(10);
                    break;
                case 14:
                    xSemaphoreGive(mutex);
                    vTaskDelay(10);
                    break;
                case 15:
                    xSemaphoreGive(mutex);
                    vTaskDelay(10);
                    break;
                case 16:
                    xSemaphoreGive(mutex);
                    vTaskDelay(10);
                    break;
                case 33:
                    xSemaphoreGive(mutex);
                    vTaskDelay(10);
                    break;
                case 44:
                    xSemaphoreGive(mutex);
                    vTaskDelay(10);
                    break;
                case 99: //수동 or 어플
                    if (rx_data[1] == 1)
                        status = manual;
                    else
                        status = autonomous;
                    xSemaphoreGive(mutex);
                    vTaskDelay(10);
                    break;
                default:
                    xSemaphoreGive(mutex);
                    vTaskDelay(10);
                    break;
                }
            }
            else if (rx_data[0] == 99 && rx_data[1] == 0)
                status = autonomous;
            xSemaphoreGive(mutex);
            vTaskDelay(10);
        }
    }
}


void vTask1(void *pbParameters) // angle - protocol 0x c 32 35 30 30 - 12번 신호모드
{
while (1)
{
    if (submodule == right_light)
    { //실행 순서를 정해주는 flag
        if (xSemaphoreTake(mutex, ( TickType_t ) portMAX_DELAY) == pdTRUE)
        { //키를 받아왔을 경우, 실행코드 입력.
            gioSetBit(gioPORTA, 4, 0);
            vTaskDelay(100);
            gioSetBit(gioPORTA, 6, 1);
            vTaskDelay(100);
            gioSetBit(gioPORTA, 6, 0);
            xSemaphoreGive(mutex);
            vTaskDelay(10);

        }
        else
        { //키를 받아오지 못하는 경우에 실행 코드를 작성
            xSemaphoreGive(mutex);
            vTaskDelay(10);
        }
    }
    else if (submodule == left_light)
    {
        if (xSemaphoreTake(mutex, ( TickType_t ) portMAX_DELAY) == pdTRUE)
        { //키를 받아왔을 경우, 실행코드 입력.
            gioSetBit(gioPORTA, 6, 0);
            vTaskDelay(100);
            gioSetBit(gioPORTA, 4, 1);
            vTaskDelay(100);
            gioSetBit(gioPORTA, 4, 0);
            xSemaphoreGive(mutex);
            vTaskDelay(10);
        }
        else
        { //키를 받아오지 못하는 경우에 실행 코드를 작성
            xSemaphoreGive(mutex);
            vTaskDelay(10);
        }
    }
    else
    {
        //canTransmit(canREG1, canMESSAGE_BOX1, (const uint8 *)&tx_data[0]);
        gioSetBit(gioPORTA, 6, 0);
        gioSetBit(gioPORTA, 4, 0);
        xSemaphoreGive(mutex);
        vTaskDelay(10);
    }
}
}

void vTask2(void *pbParameters) // velocity - protocol 0x d 32 35 30 30 - 13번 신호모드
{
while (1)
{
    if (submodule == brake_light)
    { //실행 순서를 정해주는 flag
        if (xSemaphoreTake(mutex, ( TickType_t ) portMAX_DELAY) == pdTRUE)
        { //키를 받아왔을 경우, 실행코드 입력.
            gioSetBit(gioPORTA, 1, 1);
            xSemaphoreGive(mutex);
            vTaskDelay(10);
        }
        else
        { //키를 받아오지 못하는 경우에 실행 코드를 작성
            xSemaphoreGive(mutex);
            vTaskDelay(10);
        }
    }
    else if (submodule == 0)
    {
        if (xSemaphoreTake(mutex, ( TickType_t ) portMAX_DELAY) == pdTRUE)
        { //키를 받아왔을 경우, 실행코드 입력.
            if (etpwmREG1->CMPA == 1500)
            {
                gioSetBit(gioPORTA, 1, 1);
                xSemaphoreGive(mutex);
                vTaskDelay(10);
            }
            else
            {
                gioSetBit(gioPORTA, 1, 0);
                xSemaphoreGive(mutex);
                vTaskDelay(10);
            }
        }
        else
        {
            xSemaphoreGive(mutex);
            vTaskDelay(10);
        }
    }
}
}

void vTask3(void *pbParameters) // velocity - protocol 0x d 32 35 30 30 - 13번 신호모드
{
while (1)
{
    if (status == manual)
    { //실행 순서를 정해주는 flag
        if (xSemaphoreTake(mutex, ( TickType_t ) portMAX_DELAY) == pdTRUE)
        { //키를 받아왔을 경우, 실행코드 입력.
            if (gioGetBit(gioPORTB, 1) == 0)
            {
                etpwmREG1->CMPA += 5;
                if ((etpwmREG1->CMPA) >= 1500)
                {

                    etpwmREG1->CMPA = 1500;

                }

                xSemaphoreGive(mutex);
                vTaskDelay(10);

            }
            else if (gioGetBit(gioPORTB, 1) == 1)
            {

                etpwmREG1->CMPA -= 3;

                xSemaphoreGive(mutex);
                vTaskDelay(10);

            }

            xSemaphoreGive(mutex);
            vTaskDelay(10);
        }
        else
        { //키를 받아오지 못하는 경우에 실행 코드를 작성
            xSemaphoreGive(mutex);
            vTaskDelay(10);
        }
    }
}
}

void delay(int time)
{
int i;
for (i = 0; i < time; i++)
    ;
}

void send_data(sciBASE_t* sci, uint8* msg, int length)
{
int i;
for (i = 0; i < length; i++)
    sciSendByte(sci, msg[i]);
}

void canMessageNotification(canBASE_t *node, uint32 messageBox)
{
if (canIsRxMessageArrived(canREG1, canMESSAGE_BOX2))
    canGetData(node, messageBox, rx_data);

}

