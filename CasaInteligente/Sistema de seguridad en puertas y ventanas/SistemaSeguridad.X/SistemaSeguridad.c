#include <xc.h>
#include <pic16f887.h>
#include <stdio.h>
#include <string.h>


__CONFIG(FOSC_INTRC_CLKOUT & WDTE_OFF & PWRTE_OFF & MCLRE_OFF & CP_OFF & CPD_OFF & BOREN_OFF & IESO_OFF & FCMEN_OFF & LVP_OFF);
__CONFIG(BOR4V_BOR40V & WRT_OFF);


unsigned int contador1=0;
unsigned int contador2=0;

void main(void) {
    ANSELH =0x00;
    ANSEL=0x00;
    
    TRISD=0x00;
    //TRISB=0x01;
    //PORTB=0x00;
    PORTD=0x00;
    
    while(1){
        if(PORTBbits.RB7==1){   //1 Cuando Hay Personas En Casa
            if(PORTBbits.RB0==0){//PIN=0 ventana o puerta abierta
                PORTDbits.RD0=0;
                PORTDbits.RD1=1;// Advertencia Puerta/Ventana Abierta
            }
            else if(PORTBbits.RB4==0){
                PORTDbits.RD0=0;
                PORTDbits.RD1=1;// Advertencia Puerta/Ventana Abierta
            }
            else if(PORTBbits.RB5==0){
                PORTDbits.RD0=0;
                PORTDbits.RD1=1;// Advertencia Puerta/Ventana Abierta
            }
            else if(PORTBbits.RB6==0){
                PORTDbits.RD0=0;
               PORTDbits.RD1=1;// Advertencia Puerta/Ventana Abierta
            }
            else{               
               PORTDbits.RD0=1; //Sistema es Seguro Puestas/Ventanas Cerradas
               PORTDbits.RD1=0;
            }
            if(PORTBbits.RB1==1){//EN= 1 si quiere cerrar Puertas/Ventanas
                
                PORTDbits.RD0=1;//enciennde led verde(Sistema Seguro)
                PORTDbits.RD1=0;//apaga led amarillo(Advertencia)
            }
            
        }
        else{                   //0 Cuando no hay personas en Casa
            if(PORTBbits.RB0==0){//PIN=0 ventana o puerta abierta
                PORTDbits.RD0=0;
                PORTDbits.RD2=1;// Peligro Puerta/Ventana Abierta
            }
            else if(PORTBbits.RB4==0){
                PORTDbits.RD0=0;
                PORTDbits.RD2=1;// Advertencia Puerta/Ventana Abierta
            }
            else if(PORTBbits.RB5==0){
                PORTDbits.RD0=0;
                PORTDbits.RD2=1;// Advertencia Puerta/Ventana Abierta
            }
            else if(PORTBbits.RB6==0){
                PORTDbits.RD0=0;
               PORTDbits.RD2=1;// Advertencia Puerta/Ventana Abierta 
            }
            else{
               PORTDbits.RD0=1; //Sistema es Seguro Puestas/Ventanas Cerradas
               PORTDbits.RD2=0;
            }
            if(PORTBbits.RB1==1){//EN = 1 si quiere cerrar ventanas/etc
                PORTDbits.RD0=1;//enciennde led verde
                
                PORTDbits.RD2=0;//apaga led rojo
            }
        }
        
    }
}

