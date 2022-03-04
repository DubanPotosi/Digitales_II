/*!
\file   contador.c
\date   2021-09-22
\author Fulvio Vivas <fulvio.vivas@unicauca.edu.co>
\brief  Example contador.
\par Copyright
Information contained herein is proprietary to and constitutes valuable
confidential trade secrets of unicauca, and
is subject to restrictions on use and disclosure.
\par
Copyright (c) unicauca 2021. All rights reserved.
\par
The copyright notices above do not evidence any actual or
intended publication of this material.
******************************************************************************
*/

#include    <xc.h>
#include    <pic16f887.h> //Header file PIC16f887 definitions

unsigned char count = 0;
char display  [10]= {0x3F,0X06,0x5B, 0x4F, 0x66, 0x6D,0X7D, 0x07, 0x7F, 0x6F}; 
int main(void) {
    INTCONbits.GIE = 0;
    OPTION_REGbits.T0CS = 1;//mode contador
    OPTION_REGbits.T0SE = 1;//flanco de bajada Ra4
    TMR0 = 0;
    
    TRISD = 0x00;
    PORTD = 0x00;
    
    TRISA4 = 1;//Pin input contador
    ANSEL = 0x00;//digital
    
    while (1) {
        if (TMR0 == 10) {
            TMR0 = 0;
            count = 0;
        }
        count = TMR0;
        PORTD =  ~display [count]; 
    }
    //return 1;
}
