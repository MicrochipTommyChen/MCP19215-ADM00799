

/**
  IVOUT2 Generated Driver File

  @Company
    Microchip Technology Inc.

  @File Name
    ivout2.c

  @Summary
    This is the generated driver implementation file for the IVOUT2
    driver using MPLAB(c) Code Configurator (MCC).

  @Description
    This source file provides implementations for the IVOUT2 driver APIs.
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

/**
  Section: Included Files
*/

#include <xc.h>
#include "ivout2.h"

/**
  Section: IVOUT2 APIs
*/

void IVOUT2_Initialize(void)
{
    // IC2OAC 200 mV; 
    ICOACONbits.IC2OAC = 0x04;
    // IC2LEBC 50 ns; 
    ICLEBCONbits.IC2LEBC = 0x01;
    // IVLRES disabled; IVGDINTP disabled; IVGDINTN disabled; 
    LOOPCON2 = 0x0;
    // CREFCON2 = 0 before startup
    CREFCON2 = 0;  
    // PDRV2EN disabled; 
    PE1bits.PDRV2EN = 0x00;
    // EA1DIS2 enabled; EA2DIS2 enabled; 
    ABECON2bits.EA1DIS2 = 0x01;
    ABECON2bits.EA2DIS2 = 0x01;
    // VREFCON2 = 0 before startup
    VREFCON2 = 0;  
    // PWM2RL = 0 before startup
    PWM2RL = 0;
    // PWMPHL 0; 
    PWM2PHL = 0x0;
    // SLPS 12.62 mV/us; SLPBY enabled; 
    SLPCRCON2 = 0xE;
    // Voltage Reference Target = 0.48[V]
    uint8_t target = 0x3C;
    // Set Output
    IVOUT2_SetOutput(target);
}

void IVOUT2_SetOutput(uint8_t outputTarget)
{
	//Apply ramping channel initial value
	VREFCON2 = 0x0;
	
	
	
    // Enable Voltage Error Amplifier
    ABECON2bits.EA1DIS2 = 0;   
    // Enable Current Error Amplifier
    ABECON2bits.EA2DIS2 = 0;  
    // Enable Primary MOSFET Driver  
    PE1bits.PDRV2EN = 1;  
	//Making the Duty Cycle Max ramp
	uint8_t pwmStep = 1;
    if (PWM2RL < 0x12)
    {
        //Adding first step to make sure we will reach the target
        uint8_t firstStep = (uint8_t)((0x12 - PWM2RL) % pwmStep);
        PWM2RL += firstStep;
        while (PWM2RL != 0x12) {
            PWM2RL += pwmStep;
            __delay_us(2774);
        }
    } 
    if (PWM2RL > 0x12)
    {
        //Removing first step to make sure we will reach the target
        uint8_t firstStep = (uint8_t)((PWM2RL - 0x12) % pwmStep);
        PWM2RL -= firstStep;
        while (PWM2RL != 0x12) {
            PWM2RL -= pwmStep;
            __delay_us(2774);
        }     
    }
	//Making the reference ramp    	
	//Apply not ramping channel fixed value
	CREFCON2 = 0x7D;
    uint8_t outputStep = 1;
    if (VREFCON2 < outputTarget)
    {
        //Adding first step to make sure we will reach the target
        uint8_t firstStep = (uint8_t)((outputTarget - VREFCON2) % outputStep);
        VREFCON2 += firstStep;
        while (VREFCON2 != outputTarget) {
            VREFCON2 += outputStep;
            __delay_us(830);
        }
    } 
    if (VREFCON2 > outputTarget)
    {
        //Removing first step to make sure we will reach the target
        uint8_t firstStep = (uint8_t)((VREFCON2 - outputTarget) % outputStep);
        VREFCON2 -= firstStep;
        while (VREFCON2 != outputTarget) {
            VREFCON2 -= outputStep;
            __delay_us(830);
        }     
    }
}

void IVOUT2_StopOutput()
{
    // Disable Primary MOSFET Driver  
    PE1bits.PDRV2EN = 1;  
	
	
	
    // Disable Voltage Error Amplifier
    ABECON2bits.EA1DIS2 = 0;   
    // Disable Current Error Amplifier
    ABECON2bits.EA2DIS2 = 0;  
    // Clearing VREFCON2 value
    VREFCON2 = 0; 
    // Clearing CREFCON2 value
    CREFCON2 = 0; 
}






/**
 End of File
*/
