#include "xparameters.h"
#include "xil_io.h"
#include <stdio.h>
#include <time.h>

//#define MY_PWM XPAR_MY_PWM_CORE_0_S00_AXI_BASEADDR //Because of a bug in Vivado 2015.3 and 2015.4, this value is not correct.
#define MY_STEP 0x43C00000 //This value is found in the Address editor tab in Vivado (next to Diagram tab)

int main(){
    int num=0;
    int i;
    float degree;




    	Xil_Out32(MY_STEP+16,0);

    	while(1)
    	{
    		num = Xil_In32(MY_STEP+0);
    		degree = num * 0.9;
        	xil_printf("dgree = %d\n\r",Xil_In32(MY_STEP+0));
        	sleep(1);
        	Xil_Out32(MY_STEP+16,1);

    	}

}
