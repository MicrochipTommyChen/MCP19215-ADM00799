/**
  Generated Main Source File

  @Company:
    Microchip Technology Inc.

  @File Name:
    main.c

  @Summary:
    This is the main file generated using MPLAB(c) Code Configurator (MCC).

  @Description:
    This is the main.c file.
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

#include "mcc_generated_files/mcc.h"

/*
                         Main application
 */

adc_result_t TEMP_SNS = 0;
adc_result_t Reference_1024mV = 0;
adc_result_t PWM1_EA1_Current_loop_reference_voltage = 0;
adc_result_t PWM1_EA2_Voltage_loop_reference_voltage = 0;
adc_result_t PWM1_VFB1_pin_voltage = 0;
adc_result_t ADC_channel_AN4 = 0;

void main(void)
{
    // initialize the device
    SYSTEM_Initialize();

    // When using interrupts, you need to set the Global and Peripheral Interrupt Enable bits
    // Use the following macros to:

    // Enable the Global Interrupts
    //INTERRUPT_GlobalInterruptEnable();

    // Enable the Peripheral Interrupts
    //INTERRUPT_PeripheralInterruptEnable();

    // Disable the Global Interrupts
    //INTERRUPT_GlobalInterruptDisable();

    // Disable the Peripheral Interrupts
    //INTERRUPT_PeripheralInterruptDisable();

    while (1)
    {
        // Add your application code
        
        // ADC conversion
        TEMP_SNS = ADC_GetConversion(channel_TEMP_SNS_temperature_sensor_voltage_measurement);
        Reference_1024mV = ADC_GetConversion(channel_Reference_1024_mV_adjust);
        PWM1_EA1_Current_loop_reference_voltage = ADC_GetConversion(channel_PWM1_EA1_Current_loop_reference_voltage);
        PWM1_EA2_Voltage_loop_reference_voltage = ADC_GetConversion(channel_PWM1_EA2_Voltage_loop_reference_voltage);
        PWM1_VFB1_pin_voltage = ADC_GetConversion(channel_PWM1_VFB1_pin_voltage);
        ADC_channel_AN4 = ADC_GetConversion(channel_AN4);
        
    }
}
/**
 End of File
*/