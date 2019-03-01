
#include <stdio.h>
#include "platform.h"
#include "xil_printf.h"
#include "xbasic_types.h"
#include "xparameters.h"
#include "xil_io.h"

Xuint32 *addr = (Xuint32 *)XPAR_AXI_GPIO_0_BASEADDR;


int main()
{
	int i =0;
    init_platform();
	xil_printf("\n\r GPIO TEST\n\r");

    while(1){

    		(int*)(addr +0) = 1;
    		xil_printf("gpio = 1\n\r");
    		for(i=0;i<100000000;i++);
    		(int*)(addr +0) = 0;
    		xil_printf("gpio = 0\n\r");
    		for(i=0;i<100000000;i++);
    }
    print("Hello World\n\r");

    cleanup_platform();
    return 0;
}
