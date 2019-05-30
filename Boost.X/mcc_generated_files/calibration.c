
/**
  @Generated MCP19XXX Source File

  @Company:
    Microchip Technology Inc.

  @File Name:
    calibration.c

  @Summary:
    This is the calibration.c file generated using MPLAB(c) Code 
    Configurator (MCC).

  @Description:
    This source file provides the function to load the calibration registers.
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

#include "calibration.h"

void init_Calibration(void)
{
	//Select test memory area for reads only (for loading calibration trim registers)
	PMCON1bits.CALSEL = 1;

    PMADRH = 0x20;
    //Differential Current Sense Amplifier[13:8] and Current Loop EA transconductance[7:4] and Voltage Loop EA transconductance[3:0] calibration for PWM channel #1.
    PMADRL = 0x80;
    PMCON1bits.RD = 1;
    NOP();
    NOP();
    DCSCAL1 = (uint8_t)(PMDATH);
    GMCAL1 = (uint8_t)(PMDATL);

    //Differential Current Sense Amplifier[13:8] and Current Loop EA transconductance[7:4] and Voltage Loop EA transconductance[3:0] calibration for PWM channel #2.
    PMADRL = 0x81;
    PMCON1bits.RD = 1;
    NOP();
    NOP();
    DCSCAL2 = (uint8_t)(PMDATH);
    GMCAL2 = (uint8_t)(PMDATL);

    //The 4.096V reference voltage and DACT[7:6] Calibration bits for the input current of the DACs and BGRT[3:0]: Band Gap Reference Voltage Generator calibration bits.
    PMADRL = 0x82;
    PMCON1bits.RD = 1;
    NOP();
    NOP();
    VRCAL = (uint8_t)(PMDATH);
    DACBGRCAL = (uint8_t)(PMDATL);

    //Pedestal voltage and ADBOT[3:0]: 2X Differential Amplifier offset and TTA[3:0]: Over temperature threshold calibration bits
    PMADRL = 0x83;
    PMCON1bits.RD = 1;
    NOP();
    NOP();
    PDSCAL = (uint8_t)(PMDATH);
    ADBT = (uint8_t)((PMDATL >> 4) & 0xF);
    TTCAL = (uint8_t)(PMDATL & 0xF);

    //TANA[9:0]: ADC TEMP_ANA reading at 30°C calibration bits
    PMADRL = 0x84;
    PMCON1bits.RD = 1;
    NOP();
    NOP();
    TANA = (uint16_t)(PMDAT);

    //Internal oscillator calibration bits
    PMADRL = 0x85;
    PMCON1bits.RD = 1;
    NOP();
    NOP();
    OSCCAL = (uint8_t)(PMDATL);

    //EACAL[7:4]: Trimming bits for the current loop error amplifier and  EACAL[3:0]: Trimming bits for the voltage loop error amplifier of PWM channel #2.
    PMADRL = 0x86;
    PMCON1bits.RD = 1;
    NOP();
    NOP();
    EACAL2 = (uint8_t)(PMDATL);

    //DACCAL[7:4]: Trimming bits for the current loop DAC of PWM channel #2 and DACCAL[3:0]: Trimming bits for the voltage loop DAC of PWM channel #2.
    PMADRL = 0x88;
    PMCON1bits.RD = 1;
    NOP();
    NOP();
    DACCAL2 = (uint8_t)(PMDATL);

    //DACCAL[7:4]: Trimming bits for the current loop DAC of PWM channel #1 and DACCAL[3:0]: Trimming bits for the voltage loop DAC of PWM channel #1.
    PMADRL = 0x89;
    PMCON1bits.RD = 1;
    NOP();
    NOP();
    DACCAL1 = (uint8_t)(PMDATL);

    //EACAL[7:4]: Trimming bits for the current loop error amplifier and  EACAL[3:0]: Trimming bits for the voltage loop error amplifier of PWM channel #1.
    PMADRL = 0x8A;
    PMCON1bits.RD = 1;
    NOP();
    NOP();
    EACAL1 = (uint8_t)(PMDATL);

    //GAIN[9:0]: Measured voltage gain of the 10x differential amplifier of PWM channel #1
    PMADRL = 0x8B;
    PMCON1bits.RD = 1;
    NOP();
    NOP();
    GAIN1 = (uint16_t)(PMDAT & 0x3FF);

    //GAIN[9:0]: Measured voltage gain of the 10x differential amplifier of PWM channel #2
    PMADRL = 0x8C;
    PMCON1bits.RD = 1;
    NOP();
    NOP();
    GAIN2 = (uint16_t)(PMDAT & 0x3FF);
	
	
}
/**
 End of File
*/
