/**
  IVOUT1 Generated Driver API Header File

  @Company
    Microchip Technology Inc.

  @File Name
    ivout1.h

  @Summary:
    This is the generated header file for the IVOUT1 driver using 
    MPLAB(c) Code Configurator (MCC).

  @Description
    This header file provides APIs for the IVOUT1 driver.
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

#ifndef _IVOUT1_H
#define _IVOUT1_H

/**
  Section: Included Files
*/

#include <stdbool.h>
#include <stdint.h>
#include "mcc.h"

#ifdef __cplusplus  // Provide C++ Compatibility

    extern "C" {

#endif

/**
  Section: IVOUT1 APIs
*/

/**
  @Summary
    Initializes the IVOUT1

  @Description
    This routine initializes the IVOUT1.
    This routine must be called before any other IVOUT1 routine is called.
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
    IVOUT1_Initialize();
    </code>
*/
void IVOUT1_Initialize(void);

/**
  @Summary
    Set Input data into IVOUT1 VOUT1 reference voltage.

  @Description
    This routine pass the digital input data into
    IVOUT1 VOUT1 voltage reference control register.

  @Preconditions
    The IVOUT1_Initialize() routine should be called
    prior to use this routine.

  @Param
    inputData - uint8_t digital data to IVOUT1 reference voltage.

  @Returns
    None

  @Example
    <code>    
    IVOUT1_SetOutput(0x15C);
    </code>
*/
void IVOUT1_SetOutput(uint8_t voutTarget);

/**
  @Summary
    Stop Input data into IVOUT1 VOUT1 reference voltage.

  @Description
    IVOUT1 Stop the VOUT1 voltage.

  @Preconditions
    The IVOUT1_Initialize() routine should be called
    prior to use this routine.

  @Param
    None

  @Returns
    None

  @Example
    <code>    
    IVOUT1_StopOutput();
    </code>
*/
void IVOUT1_StopOutput();






#ifdef __cplusplus  // Provide C++ Compatibility

    }

#endif

#endif // _IVOUT1_H
/**
 End of File
*/
