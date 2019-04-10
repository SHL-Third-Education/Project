/*
 * QuadCopter.h
 *
 *  Created on: 2018. 8. 13.
 *      Author: HyunwooPark
 */

#ifndef INCLUDE_QUADCOPTER_H_
#define INCLUDE_QUADCOPTER_H_

#include "MPU9250.h"

#include <stdio.h>
#include <time.h>
#include <FreeRTOS.h>
#include "FreeRTOSConfig.h"
#include "os_mpu_wrappers.h"
#include "os_task.h"
#include "os_projdefs.h"
#include "os_semphr.h"
#include "os_task.h"


#define THROTTLE_MAX    1600
#define THROTTLE_MIN    1060
#define MAX_PID_OUTPUT   300
#define ANTI_WINDUP_LIMIT   30

//이중루프PID에서 제어할 변수들(Roll, Pitch, Yaw)//
float roll_target_angle = 0.0;
float roll_angle_in;
float roll_rate_in;
float roll_stabilize_kp = 8;  // angle kp     6.5
float roll_rate_kp = 0.30;  // angle rate kp setting   0.3
float roll_rate_ki = 0.3805;  // angle rate ki setting   0.37
float roll_rate_kd = 0.03;  // angle rate kd setting   0.0042
float roll_err_pre = 0;
float roll_rate_iterm;
float roll_output;

float pitch_target_angle = 0.0;
float pitch_angle_in;
float pitch_rate_in;
float pitch_stabilize_kp = 8;  // 1.8
float pitch_rate_kp = 0.30;  // 0.004 0379340
float pitch_rate_ki = 0.3805;  // 0.0035
float pitch_rate_kd = 0.03;   // 0.0006
float pitch_err_pre = 0;
float pitch_rate_iterm = 0;
float pitch_output = 0;

float yaw_target_angle = 0.0;
float yaw_angle_in;
float yaw_rate_in;
float yaw_stabilize_kp = 0.0;
float yaw_rate_kp = 0.0;
float yaw_rate_ki = 0.000;
float yaw_rate_kd = 0;
float yaw_err_pre = 0;
float yaw_rate_iterm = 0;
float yaw_output = 0;

float z_target_height = 0.0;
float z_height_in;
float z_rate_in;
float z_stabilize_kp = 2.5;
float z_rate_kp = 0.033;
float z_rate_ki = 0.0035;
float z_rate_kd = 0;
float z_err_pre = 0;
float z_rate_iterm = 0;
float z_output = 0;

/*모터별 속도 관련 변수*/
int motorA_PWM, motorB_PWM, motorC_PWM, motorD_PWM;//각 모터별 RPM

float hold_throttle = 0; // PWM

/*Uart */
uint32 rx_data =0;
uint32 tmp =0;
uint32 value =0;


/*쿼드로터 각도 관련 변수*/
extern float roll;
extern float pitch;
extern float yaw;

extern float init_pitch;
extern float init_roll;
extern float init_yaw;
//시간관련 값//
float dt = 0.0025;
unsigned long t_now;
unsigned long t_prev;

/*조종기 관련 변수*/
extern int real_elev,real_rudd,real_ail,throttle;  // 조종기 전후진, 좌우회전, 제자리 회전, 스로틀
static int stop_n_start = 0;
int real_elev,real_rudd,real_ail,throttle;  // 조종기 전후진, 좌우회전, 제자리 회전, 스로틀
int quad_start =0; // 쿼드콥터 켜기


void initDT(void);
void calcDT(void);

void initYPR(void);
void initMotorPWM(void);
void h_cal_controller(float sns);
void dualPID(float target_angle,
             float angle_in,
             float rate_in,
             float stabilize_kp,
             float rate_kp,
             float rate_ki,
             float rate_kd,
             float *rate_err_pre,
             float *rate_iterm,
             float *output
);

/*초기 시간 값*/
void initDT(void){
  t_prev = clock(); //초기 t_prev값은 근사값//
}
/*구동 시간 계산*/
void calcDT(void){

    char txt_buf[256] = {0};
    unsigned int buf_len;

  t_now = clock();
  dt = (double)(t_now - t_prev)/180000000000.0 ;
//  t_prev = t_now;

  sprintf(txt_buf, "\t %lf \n\r\0",
          dt);

  buf_len = strlen(txt_buf);
  sciDisplayText(sciREG1, (uint8 *) txt_buf, buf_len);
}

void initYPR(void)
{
    int cnt;
    for (cnt = 0; cnt < 2000; cnt++)
    {
        get_YPR();
        avr_roll += roll;
        avr_pitch += pitch;
        avr_yaw += yaw;
        wait(100);
    }

    avr_roll /= 2000; //Divide the gyro_x_cal variable by 2000 to get the avarage offset
    avr_pitch /= 2000; //Divide the gyro_y_cal variable by 2000 to get the avarage offset
    avr_yaw /= 2000;

    /*for mpu9250*/
    /*for mpu6050*/
//    get_mpu6050_RPY();
    init_pitch = avr_pitch;
    init_roll = avr_roll;
    init_yaw = avr_yaw;
    roll_target_angle = init_roll;
    pitch_target_angle = init_pitch;
    yaw_target_angle = init_yaw;
}

/*이중 PID 쿼드 제어에 효과적. angle의 오차를 목표로 두고 제어하므로 더 안정적이다.*/
void dualPID(float target_angle,
             float angle_in,
             float rate_in,
             float stabilize_kp,
             float rate_kp,
             float rate_ki,
             float rate_kd,
             float *rate_err_pre,
             float *rate_iterm,
             float *output
){
  float angle_error;
  float desired_rate;
  float rate_error;
  float rate_pterm, rate_dterm;

  //이중루프PID알고리즘//
  angle_error = target_angle - angle_in;

  desired_rate = stabilize_kp * angle_error;
  rate_error = desired_rate - rate_in;

  rate_pterm = (rate_kp ) * rate_error; //각속도 비례항//
  *rate_iterm += (rate_ki) * rate_error * dt; //각속도 적분항//
  rate_dterm = (rate_error - *rate_err_pre) * (rate_kd) / dt;
  *rate_err_pre = rate_error;

  if(*output > MAX_PID_OUTPUT){
      *output = MAX_PID_OUTPUT;
  }else if(*output < -MAX_PID_OUTPUT){
      *output = -MAX_PID_OUTPUT;
  }
  *output = rate_pterm + *rate_iterm + rate_dterm; //최종 출력 : 각속도 비례항 + 각속도 적분항 + 안정화 적분항//
}
/* 각 motor RPM 초기화*/
void initMotorPWM(void){

    motorA_PWM = 1000;
    motorB_PWM = 1000;
    motorC_PWM = 1000;
    motorD_PWM = 1000;

}

void calcMotorPWM(void){
    char txt_buf[256] = { 0 };
    unsigned int buf_len;



  if(stop_n_start == 1){ /*고도 제어 모드*/

//      motorA_PWM = hold_throttle - pitch_output - roll_output + yaw_output ; /// front - left cw
//      motorB_PWM = hold_throttle + pitch_output - roll_output - yaw_output ; // rear -left ccw
//      motorC_PWM = hold_throttle + pitch_output + roll_output + yaw_output ; // rear -right  cw
//      motorD_PWM = hold_throttle - pitch_output + roll_output - yaw_output ; // front - right ccw

  }else if(stop_n_start == 0){ /*수동 제어 모드*/
//      motorA_PWM = throttle - pitch_output - roll_output + yaw_output ; /// front - left cw
//      motorB_PWM = throttle + pitch_output - roll_output - yaw_output ; // rear -left ccw
//      motorC_PWM = throttle + pitch_output + roll_output + yaw_output ; // rear -right  cw
//      motorD_PWM = throttle - pitch_output + roll_output - yaw_output ; // front - right ccw
        motorA_PWM = throttle + pitch_output + roll_output - yaw_output ;
        motorB_PWM = throttle - pitch_output + roll_output + yaw_output ;
        motorC_PWM = throttle - pitch_output - roll_output - yaw_output ;
        motorD_PWM = throttle + pitch_output - roll_output + yaw_output ;
      hold_throttle = throttle;
  }
  //PWM값은 1000~2000이므로 각 경계값마다의 보정작업, 내 모터는 토크가 워낙 쎄기 때문에 최대 1500으로 일단 고정.//
  if(motorA_PWM < THROTTLE_MIN){
      motorA_PWM = THROTTLE_MIN;
  } if(motorA_PWM > THROTTLE_MAX){
      motorA_PWM = THROTTLE_MAX;
  } if(motorB_PWM < THROTTLE_MIN){
      motorB_PWM = THROTTLE_MIN;
  } if(motorB_PWM > THROTTLE_MAX){
      motorB_PWM = THROTTLE_MAX;
  } if(motorC_PWM < THROTTLE_MIN){
      motorC_PWM = THROTTLE_MIN;
  } if(motorC_PWM > THROTTLE_MAX){
      motorC_PWM = THROTTLE_MAX;
  } if(motorD_PWM < THROTTLE_MIN){
      motorD_PWM = THROTTLE_MIN;
  } if(motorD_PWM > THROTTLE_MAX){
      motorD_PWM = THROTTLE_MAX;
  }
//
//    sprintf(txt_buf,
//            "pwm_front_left_A = %f \t pwm_rear_left_B = %f \t pwm_rear_right_C = %f \t pwm_front_right_D= %f \n\r\0",
//            motorA_PWM, motorB_PWM, motorC_PWM, motorD_PWM);

//    sprintf(txt_buf,
//            "pwm_front_left_A = %d \t  pwm_rear_right_C = %d \t \n\r\0",
//            motorB_PWM, motorD_PWM);
//  sprintf(txt_buf, "ptrim = %f ms\n\r", p_trim);
//    buf_len = strlen(txt_buf);
//    sciDisplayText(sciREG1, (uint8 *) txt_buf, buf_len);

    etpwmSetCmpA(etpwmREG1, motorA_PWM);    // front cw
    etpwmSetCmpA(etpwmREG2, motorB_PWM);  // rear ccw
    etpwmSetCmpA(etpwmREG3, motorC_PWM);    // rear cw
    etpwmSetCmpA(etpwmREG4, motorD_PWM);  // front ccw

}


void pwmSet(){
    value = 1000;
    etpwmSetCmpA(etpwmREG1, value);
    etpwmSetCmpA(etpwmREG2, value);
    etpwmSetCmpA(etpwmREG3, value);
    etpwmSetCmpA(etpwmREG4, value);
    wait(10000);
}

void itoa(int num, char *c){  // integer to ascii
    int radix = 10;
    int count = 0, degree = 1;
    int i;
    while(true){
        if(num/degree > 0 ) count++;
        else break;
        degree *= radix;
    }

    degree/=radix;

    for( i=0;i<count;i++){
        *(c+i) = (num/degree) + '0';
        num -=(num/degree) * degree;
        degree /=radix;
    }

    *(c+count) = '\0';
}

void calcYPRtoDualPID(void){

    char txt_buf[256] = { 0 };
    unsigned int buf_len;

    if (stop_n_start == 1)
    { /*고도 제어 모드*/
        dualPID(roll_target_angle,
                roll_angle_in,
                roll_rate_in,
                roll_stabilize_kp,
                roll_rate_kp,
                roll_rate_ki,
                roll_rate_kd,
                &roll_err_pre,
                &roll_rate_iterm,
                &roll_output);

        dualPID(pitch_target_angle,
                pitch_angle_in,
                pitch_rate_in,
                pitch_stabilize_kp,
                pitch_rate_kp,
                pitch_rate_ki,
                pitch_rate_kd,
                &pitch_err_pre,
                &pitch_rate_iterm,
                &pitch_output);

        dualPID(yaw_target_angle,
                yaw_angle_in,
                yaw_rate_in,
                yaw_stabilize_kp,
                yaw_rate_kp,
                yaw_rate_ki,
                yaw_rate_kd,
                &yaw_err_pre,
                &yaw_rate_iterm,
                &yaw_output);

    }
    else if (stop_n_start == 0)  // 수동모드
    {
        dualPID(roll_target_angle,
                roll_angle_in,
                roll_rate_in,
                roll_stabilize_kp,
                roll_rate_kp,
                roll_rate_ki,
                roll_rate_kd,
                &roll_err_pre,
                &roll_rate_iterm,
                &roll_output);

        dualPID(pitch_target_angle,
                pitch_angle_in,
                pitch_rate_in,
                pitch_stabilize_kp,
                pitch_rate_kp,
                pitch_rate_ki,
                pitch_rate_kd,
                &pitch_err_pre,
                &pitch_rate_iterm,
                &pitch_output);

        dualPID(yaw_target_angle,
                yaw_angle_in,
                yaw_rate_in,
                yaw_stabilize_kp,
                yaw_rate_kp,
                yaw_rate_ki,
                yaw_rate_kd,
                &yaw_err_pre,
                &yaw_rate_iterm,
                &yaw_output);
    }

//      sprintf(txt_buf, "roll_out = %d \t pitch_out = %d \t yaw_out = %d \n\r\0",
//              (int)roll_output , (int)pitch_output , (int)yaw_output );
//
//      buf_len = strlen(txt_buf);
//      sciDisplayText(sciREG1, (uint8 *) txt_buf, buf_len);


}

void h_cal_controller(float sns){

      pid_roll_setpoint = 0;
      //We need a little dead band of 16us for better results.
      if(real_rudd > 1518)pid_roll_setpoint = real_rudd - 1518;
      else if(real_rudd < 1492)pid_roll_setpoint = real_rudd - 1492;

      pid_roll_setpoint -= roll_level_adjust;                                   //Subtract the angle correction from the standardized receiver roll input value.
      pid_roll_setpoint /= 3.0;                                                 //Divide the setpoint for the PID roll controller by 3 to get angles in degrees.


      //The PID set point in degrees per second is determined by the pitch receiver input.
      //In the case of deviding by 3 the max pitch rate is aprox 164 degrees per second ( (500-8)/3 = 164d/s ).
      pid_pitch_setpoint = 0;
      //We need a little dead band of 16us for better results.
      if(real_elev > 1518)pid_pitch_setpoint = real_elev - 1518;
      else if(real_elev < 1492)pid_pitch_setpoint = real_elev - 1492;

      pid_pitch_setpoint -= pitch_level_adjust;                                  //Subtract the angle correction from the standardized receiver pitch input value.
      pid_pitch_setpoint /= 3.0;                                                 //Divide the setpoint for the PID pitch controller by 3 to get angles in degrees.

      //The PID set point in degrees per second is determined by the yaw receiver input.
      //In the case of deviding by 3 the max yaw rate is aprox 164 degrees per second ( (500-8)/3 = 164d/s ).
      pid_yaw_setpoint = 0;
      //We need a little dead band of 16us for better results.

      if(throttle > 1050){ //Do not yaw when turning off the motors.
        if(real_ail > 1508)pid_yaw_setpoint = (real_ail - 1508)/3.0;
        else if(real_ail < 1492)pid_yaw_setpoint = (real_ail - 1492)/3.0;
      }

     if(sns > 1900.0){ // start
         stop_n_start = 0;
     }
     else if (sns < 1000.0){ //고도제어 모드
          stop_n_start = 1;

     }else if ( sns >1000 && sns <1900){ // stop
         stop_n_start = -1;
     }
}



#endif
