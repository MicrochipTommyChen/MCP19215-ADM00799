

/**
  IVOUT1 Generated Driver File

  @Company
    Microchip Technology Inc.

  @File Name
    ivout1.c

  @Summary
    This is the generated driver implementation file for the IVOUT1
    driver using MPLAB(c) Code Configurator (MCC).

  @Description
    This source file provides implementations for the IVOUT1 driver APIs.
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
#include "ivout1.h"

/**
  Section: IVOUT1 APIs
*/

void IVOUT1_Initialize(void)
{
    // IC1OAC 200 mV; 
    ICOACONbits.IC1OAC = 0x04;
    // IC1LEBC 50 ns; 
    ICLEBCONbits.IC1LEBC = 0x01;
    // IVLRES disabled; IVGDINTP disabled; IVGDINTN disabled; 
    LOOPCON1 = 0x0;
    // CREFCON1 = 0 before startup
    CREFCON1 = 0;  
    // PDRV1EN disabled; 
    PE1bits.PDRV1EN = 0x00;
    // EA1DIS1 enabled; EA2DIS1 enabled; 
    ABECON1bits.EA1DIS1 = 0x01;
    ABECON1bits.EA2DIS1 = 0x01;
    // VREFCON1 = 0 before startup
    VREFCON1 = 0;  
    // PWM1RL = 0 before startup
    PWM1RL = 0;
    // SLPS 12.62 mV/us; SLPBY enabled; 
    SLPCRCON1 = 0xE;
    // Voltage Reference Target = 1.592[V]
    uint8_t target = 0xC7;
    // Set Output
    IVOUT1_SetOutput(target);
}

void IVOUT1_SetOutput(uint8_t outputTarget)
{
	//Apply ramping channel initial value
	VREFCON1 = 0x0;
	
	
	
    // Enable Voltage Error Amplifier
    ABECON1bits.EA1DIS1 = 0;   
    // Enable Current Error Amplifier
    ABECON1bits.EA2DIS1 = 0;  
    // Enable Primary MOSFET Driver  
    PE1bits.PDRV1EN = 1;  
	//Making the Duty Cycle Max ramp
	uint8_t pwmStep = 1;
    if (PWM1RL < 0x14)
    {
        //Adding first step to make sure we will reach the target
        uint8_t firstStep = (uint8_t)((0x14 - PWM1RL) % pwmStep);
        PWM1RL += firstStep;
        while (PWM1RL != 0x14) {
            PWM1RL += pwmStep;
            __delay_us(2497);
        }
    } 
    if (PWM1RL > 0x14)
    {
        //Removing first step to make sure we will reach the target
        uint8_t firstStep = (uint8_t)((PWM1RL - 0x14) % pwmStep);
        PWM1RL -= firstStep;
        while (PWM1RL != 0x14) {
            PWM1RL -= pwmStep;
            __delay_us(2497);
        }     
    }
	//Making the reference ramp    	
	//Apply not ramping channel fixed value
	CREFCON1 = 0x32;
    uint8_t outputStep = 1;
    if (VREFCON1 < outputTarget)
    {
        //Adding first step to make sure we will reach the target
        uint8_t firstStep = (uint8_t)((outputTarget - VREFCON1) % outputStep);
        VREFCON1 += firstStep;
        while (VREFCON1 != outputTarget) {
            VREFCON1 += outputStep;
            __delay_us(248);
        }
    } 
    if (VREFCON1 > outputTarget)
    {
        //Removing first step to make sure we will reach the target
        uint8_t firstStep = (uint8_t)((VREFCON1 - outputTarget) % outputStep);
        VREFCON1 -= firstStep;
        while (VREFCON1 != outputTarget) {
            VREFCON1 -= outputStep;
            __delay_us(248);
        }     
    }
}

void IVOUT1_StopOutput()
{
    // Disable Primary MOSFET Driver  
    PE1bits.PDRV1EN = 1;  
	
	
	
    // Disable Voltage Error Amplifier
    ABECON1bits.EA1DIS1 = 0;   
    // Disable Current Error Amplifier
    ABECON1bits.EA2DIS1 = 0;  
    // Clearing VREFCON1 value
    VREFCON1 = 0; 
    // Clearing CREFCON1 value
    CREFCON1 = 0; 
}






/**
 End of File
*/
