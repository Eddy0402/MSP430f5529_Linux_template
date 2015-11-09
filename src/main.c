//***************************************************************************************
//  MSP430 Blink the LED Demo - Software Toggle P1.0
//
//  Description; Toggle P1.0 by xor'ing P1.0 inside of a software loop.
//  ACLK = n/a, MCLK = SMCLK = default DCO
//
//                MSP430x5xx
//             -----------------
//         /|\|              XIN|-
//          | |                 |
//          --|RST          XOUT|-
//            |                 |
//            |             P1.0|-->LED
//
//  J. Stevenson
//  Texas Instruments, Inc
//  July 2011
//  Built with Code Composer Studio v5
//***************************************************************************************

#include <msp430.h>

#include <stdlib.h>

#include "FreeRTOS.h"
#include "task.h"

static void __attribute__((naked, section(".crt_0042"), used))
disable_watchdog(void)
{
    __asm__("MOV.W	#23168, &0x015C");
}

void LEDTask(void *args)
{
    volatile unsigned int i;  // volatile to prevent optimization
    while (1) {
        do
            i--;
        while (i != 0);
        P1OUT ^= 0x01;  // Toggle P1.0 using exclusive-OR
        i = 65535;      // SW Delay
    }
}

int main(void)
{
    WDTCTL = WDTPW | WDTHOLD;  // Stop watchdog timer // See function above
    P1DIR |= 0x01;             // Set P1.0 to output direction
    P1OUT |= 0x01;  // Toggle P1.0 using exclusive-OR

    xTaskCreate(LEDTask, "LED Task",
                256, NULL,
                tskIDLE_PRIORITY + 1, NULL);
    vTaskStartScheduler();

    return 0;
}
