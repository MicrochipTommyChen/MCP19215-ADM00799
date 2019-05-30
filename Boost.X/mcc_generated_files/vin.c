/**
  VIN Generated Driver File

  @Company
    Microchip Technology Inc.

  @File Name
    vin.c

  @Summary
    This is the generated driver implementation file for the VIN
    driver using MPLAB(c) Code Configurator (MCC).

  @Description
    This source file provides implementations for the VIN driver APIs.
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
#include "vin.h"

/**
  Section: VIN APIs
*/

void VIN_Initialize(void)
{
    // VINCON = 0x88
    VINCON = 0x88;
    // VINUVLO = 0x21
    VINUVLO = 0x21;
    // VINOVLO = 0x19
    VINOVLO = 0x19;
    //Block until VIN is ready
    while(PIR2bits.UVLOIF)
    {
        PIR2bits.UVLOIF = 0;
        __delay_ms(1);
    }
}




/**
 End of File
*/
