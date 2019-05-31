/**
  ADC Generated Driver API Header File

  @Company
    Microchip Technology Inc.

  @File Name
    adc.h

  @Summary
    This is the generated header file for the ADC driver using 
    MPLAB(c) Code Configurator (MCC).

  @Description
    This header file provides APIs for the ADC driver.
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

#ifndef _ADC_H
#define _ADC_H

/**
  Section: Included Files
*/

#include <xc.h>
#include <stdint.h>
#include <stdbool.h>
#include "mcc.h"

#ifdef __cplusplus  // Provide C++ Compatibility

    extern "C" {

#endif

/**
  Section: Data Types Definitions
*/

/**
 *  result size of an A/D conversion
 */

typedef uint16_t adc_result_t;

/**
 *  result type of a Double ADC conversion
 */
typedef struct
{
    adc_result_t adcResult1;
    adc_result_t adcResult2;
} adc_sync_double_result_t;

/** ADC Channel Definition

 @Summary
   Defines the channels available for conversion.

 @Description
   This routine defines the channels that are available for the module to use.

 Remarks:
   None
 */

typedef enum
{
    channel_PWM1_EA1_Current_loop_reference_voltage =  0x0,
    channel_PWM1_EA2_Voltage_loop_reference_voltage =  0x1,
    channel_PWM1_Error_Amplifier_output_voltage =  0x2,
    channel_PWM1_VFB1_pin_voltage =  0x3,
    channel_PWM1_Slope_Compensation_reference_voltage =  0x4,
    channel_PWM1_IP1_signal_offset_reference_voltage =  0x5,
    channel_PWM1_PWM_Comparator_negative_input =  0x6,
    channel_PWM1_PWM_Comparator_positive_input =  0x7,
    channel_PWM2_EA1_Current_loop_reference_voltage =  0x8,
    channel_PWM2_EA2_Voltage_loop_reference_voltage =  0x9,
    channel_PWM2_Error_Amplifier_output_voltage =  0xA,
    channel_PWM2_VFB2_pin_voltage =  0xB,
    channel_PWM2_Slope_Compensation_reference_voltage =  0xC,
    channel_PWM2_IP2_signal_offset_reference_voltage =  0xD,
    channel_PWM2_PWM_Comparator_negative_input =  0xE,
    channel_PWM2_PWM_Comparator_positive_input =  0xF,
    channel_PWM1_A1_Current_Sense_Amplifier_output =  0x10,
    channel_Reference_1024_mV_adjust =  0x11,
    channel_PWM2_A1_Current_Sense_Amplifier_output =  0x12,
    channel_Internal_VDD_for_analog_circuitry =  0x13,
    channel_Internal_VDD_for_digital_circuitry =  0x14,
    channel_Reference_4096_mV =  0x15,
    channel_Reference_2048_mV =  0x16,
    channel_PWM2_ISN2_pin_voltage =  0x17,
    channel_Reference_1024_mV =  0x18,
    channel_Bandgap_Reference_Voltage =  0x19,
    channel_VIN_div_voltage =  0x1A,
    channel_VIN_UVLO_Threshold =  0x1B,
    channel_VIN_OVLO_Threshold =  0x1C,
    channel_VDR_div_MOSFET_drivers_supply_voltage =  0x1D,
    channel_VDD_UVLO_voltage =  0x1E,
    channel_TEMP_SNS_temperature_sensor_voltage_measurement =  0x1F,
    channel_Internal_GND_node =  0x20,
    channel_AN4 =  0x3C
} adc_channel_t;

/**
  Section: ADC Module APIs
*/

/**
  @Summary
    Initializes the ADC

  @Description
    This routine initializes the Initializes the ADC.
    This routine must be called before any other ADC routine is called.
    This routine should only be called once during system initialization.

  @Preconditions
    None

  @Param
    None

  @Returns
    None

  @Comment
    

  @Example
    <code>
    uint16_t convertedValue;

    ADC_Initialize();
    convertedValue = ADC_GetConversionResult();
    </code>
*/
void ADC_Initialize(void);

/**
  @Summary
    Allows selection of a channel for conversion

  @Description
    This routine is used to select desired channel for conversion.
    available

  @Preconditions
    ADC_Initialize() function should have been called before calling this function.

  @Returns
    None

  @Param
    Pass in required channel number
    "For available channel refer to enum under adc.h file"

  @Example
    <code>
    uint16_t convertedValue;

    ADC_Initialize();
    ADC_SelectChannel(AN1_Channel);
    ADC_StartConversion();
    convertedValue = ADC_GetConversionResult();
    </code>
*/
void ADC_SelectChannel(adc_channel_t channel);

/**
  @Summary
    Starts conversion

  @Description
    This routine is used to start conversion of desired channel.
    
  @Preconditions
    ADC_Initialize() function should have been called before calling this function.

  @Returns
    None

  @Param
    None

  @Example
    <code>
    uint16_t convertedValue;

    ADC_Initialize();    
    ADC_StartConversion();
    convertedValue = ADC_GetConversionResult();
    </code>
*/
void ADC_StartConversion();

/**
  @Summary
    Returns true when the conversion is completed otherwise false.

  @Description
    This routine is used to determine if conversion is completed.
    When conversion is complete routine returns true. It returns false otherwise.

  @Preconditions
    ADC_Initialize() and ADC_StartConversion(adc_channel_t channel)
    function should have been called before calling this function.

  @Returns
    true  - If conversion is complete
    false - If conversion is not completed

  @Param
    None

  @Example
    <code>
    uint16_t convertedValue;

    ADC_Initialize();
    ADC_StartConversion(AN1_Channel);

    while(!ADC_IsConversionDone());
    convertedValue = ADC_GetConversionResult();
    </code>
 */
bool ADC_IsConversionDone();

/**
  @Summary
    Returns the ADC conversion value.

  @Description
    This routine is used to get the analog to digital converted value. This
    routine gets converted values from the channel specified.

  @Preconditions
    This routine returns the conversion value only after the conversion is complete.
    Completion status can be checked using
    ADC_IsConversionDone() routine.

  @Returns
    Returns the converted value.

  @Param
    None

  @Example
    <code>
    uint16_t convertedValue;

    ADC_Initialize();
    ADC_StartConversion(AN1_Channel);

    while(ADC_IsConversionDone());

    convertedValue = ADC_GetConversionResult();
    </code>
 */
adc_result_t ADC_GetConversionResult(void);

/**
  @Summary
    Returns the ADC conversion value
    also allows selection of a channel for conversion.

  @Description
    This routine is used to select desired channel for conversion
    and to get the analog to digital converted value.

  @Preconditions
    ADC_Initialize() function should have been called before calling this function.

  @Returns
    Returns the converted value.

  @Param
    Pass in required channel number.
    "For available channel refer to enum under adc.h file"

  @Example
    <code>
    uint16_t convertedValue;

    ADC_Initialize();

    conversion = ADC_GetConversion(AN1_Channel);
    </code>
*/
adc_result_t ADC_GetConversion(adc_channel_t channel);


#ifdef __cplusplus  // Provide C++ Compatibility

    }

#endif

#endif	//_ADC_H
/**
 End of File
*/

