/**
  @Generated MPLAB(c) Code Configurator (MCC) Source File

  @Company:
    Microchip Technology Inc.

  @File Name:
    mcc.c

  @Summary:
    This is the mcc.c file generated using MPLAB(c) Code Configurator (MCC).

  @Description:
    This header file provides implementations for driver APIs for all modules selected in the GUI.
    Generation Information :
        MCC Library       :  MCP19XXX - v1.1
        Device            :  MCP19215
    The generated drivers are tested against the following:
        Compiler          :  XC8 1.45
        MPLAB             :  MPLAB X 4.10
*/

/*
? [2018] Microchip Technology Inc. and its subsidiaries.

Subject to your compliance with these terms, you may use Microchip software and 
any derivatives exclusively with Microchip products. It is your responsibility 
to comply with third party license terms applicable to your use of third party 
software (including open source software) that may accompany Microchip software.

THIS SOFTWARE IS SUPPLIED BY MICROCHIP "AS IS". NO WARRANTIES, WHETHER EXPRESS, 
IMPLIED OR STATUTORY, APPLY TO THIS SOFTWARE, INCLUDING ANY IMPLIED WARRANTIES 
OF NON-INFRINGEMENT, MERCHANTABILITY, AND FITNESS FOR A PARTICULAR PURPOSE.

IN NO EVENT WILL MICROCHIP BE LIABLE FOR ANY INDIRECT, SPECIAL, PUNITIVE, 
INCIDENTAL OR CONSEQUENTIAL LOSS, DAMAGE, COST OR EXPENSE OF ANY KIND WHATSOEVER 
RELATED TO THE SOFTWARE, HOWEVER CAUSED, EVEN IF MICROCHIP HAS BEEN ADVISED OF 
THE POSSIBILITY OR THE DAMAGES ARE FORESEEABLE. TO THE FULLEST EXTENT ALLOWED BY 
LAW, MICROCHIP'S TOTAL LIABILITY ON ALL CLAIMS IN ANY WAY RELATED TO THIS 
SOFTWARE WILL NOT EXCEED THE AMOUNT OF FEES, IF ANY, THAT YOU HAVE PAID DIRECTLY 
TO MICROCHIP FOR THIS SOFTWARE. 
*/

// Configuration bits: selected in the GUI

// CONFIG
#pragma config WDTE = OFF    // Watchdog Timer Enable bit->Watchdog Timer disabled
#pragma config PWRTE = OFF    // Power-up Timer Enable bit->Power-up Timer disabled
#pragma config MCLRE = ON    // MCLR/VPP Pin Function Select bit->MCLR pin is MCLR function with internal weak pullup
#pragma config CP = OFF    // Code Protection bit->Program memory code protection is disabled
#pragma config BOREN = ON    // Brown-out Reset Enable bits->BOR enabled
#pragma config WRT = OFF    // Flash Program Memory Self Write Enable bit->Flash self-write protection off

#include "mcc.h"

void SYSTEM_Initialize(void)
{
    PIN_MANAGER_Initialize();
    SYSTEM_CONFIGURATION_Initialize();
    OSCILLATOR_Initialize();
    VIN_Initialize();
    IVOUT2_Initialize();
    IVOUT1_Initialize();
}

void OSCILLATOR_Initialize(void)
{
    // T2CKPS 1:1; TMR2ON off; 
    T2CON = 0x0;
    // PR2 22; 
    PR2 = 0x16;
    // TMR2 0; 
    TMR2 = 0x0;
	
    // Enable PWM Switching
    T2CONbits.TMR2ON = 1;  
}

void SYSTEM_CONFIGURATION_Initialize(void)
{
    init_Calibration();
    // LDO_LV LDO voltage is 3V; IS1PUEN disabled; IS2PUEN disabled; LDO_LP disabled; 
    PE1 = 0x0;
    // DRUVSEL disabled; 
    ABECON1 = 0x0;
}




/**
 End of File
*/
