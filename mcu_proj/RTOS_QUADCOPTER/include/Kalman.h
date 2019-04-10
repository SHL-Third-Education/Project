/*
 * Kalman.h
 *
 *  Created on: 2018. 10. 16.
 *      Author: HyunwooPark
 */

#ifndef INCLUDE_KALMAN_H_
#define INCLUDE_KALMAN_H_

float u;
float y;

float s_00;
float inn_00;
float K_00;
float K_10;
float AP_00;
float AP_01;
float AP_10;
float AP_11;
float APAT_00;
float APAT_01;
float APAT_10;
float APAT_11;


typedef struct _kalman kalman;

struct _kalman
{
    float x_00;
    float x_10;

    float P_00;
    float P_01;
    float P_10;
    float P_11;

    float A_00;
    float A_01;
    float A_10;
    float A_11;

    float B_00;

    float Sw_00;
    float Sw_11;

    float Sz_00;
};

kalman roll_kalman_state;
kalman pitch_kalman_state;
kalman yaw_kalman_state;

void kalman_init(kalman *self, float dt, float Sz_00, float Sw_00, float Sw_11);

float kalman_update(kalman *self, float gyro_rate, float accel_angle);

void kalman_init(kalman *self, float dt, float Sz_00, float Sw_00, float Sw_11)
{
    self->x_00 = 0.0;
    self->x_10 = 0.0;

    self->P_00 = 3.0;
    self->P_01 = 0.0;
    self->P_10 = 0.0;
    self->P_11 = 3.0;

    self->A_00 = 1.0;
    self->A_01 = -dt;
    self->A_10 = 0.0;
    self->A_11 = 1.0;

    self->B_00 = dt;

    self->Sz_00 = Sz_00;

    self->Sw_00 = Sw_00;
    self->Sw_11 = Sw_11;
}

float kalman_update(kalman *self,  float gyro_rate,  float accel_angle)
{
    u = gyro_rate;
    y = accel_angle;

    self->x_00 = (self->A_01 * self->x_10) + (self->B_00 * u);

    inn_00 = y - self->x_00;

    s_00 = self->P_00 + self->Sz_00;

    AP_00 = self->P_00 + self->A_01 * self->P_10;
    AP_01 = self->P_01 + self->A_01 * self->P_11;
    AP_10 = self->P_10;
    AP_11 = self->P_11;

    K_00 = AP_00 / s_00;
    K_10 = AP_10 / s_00;

    self->x_00 += K_00 * inn_00;
    self->x_10 += K_10 * inn_00;

    APAT_00 = AP_00 + (AP_01 * self->A_01);
    APAT_01 = AP_01;
    APAT_10 = AP_10 + (AP_11 * self->A_01);
    APAT_11 = AP_11;

    self->P_00 = APAT_00 + self->Sw_00;
    self->P_01 = APAT_01;
    self->P_10 = APAT_10;
    self->P_11 = APAT_11 + self->Sw_11;

    return self->x_00;
}

#endif /* INCLUDE_KALMAN_H_ */
