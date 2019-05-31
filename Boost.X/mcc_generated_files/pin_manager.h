/**
  @Generated Pin Manager Header File

  @Company:
    Microchip Technology Inc.

  @File Name:
    pin_manager.h

  @Summary:
    This is the Pin Manager file generated using MPLAB(c) Code 
    Configurator (MCC).

  @Description:
    This header file provides implementations for pin APIs for all pins selected 
    in the GUI.
    Generation Information :
        MCC Library       :  MPLAB(c) Code Configurator - 4.65
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

#ifndef PIN_MANAGER_H
#define PIN_MANAGER_H

#define INPUT   1
#define OUTPUT  0

#define HIGH    1
#define LOW     0

#define ANALOG      1
#define DIGITAL     0

#define PULL_UP_ENABLED      1
#define PULL_UP_DISABLED     0

// get/set IO_RA6 aliases
#define IO_RA6_TRIS               TRISGPAbits.TRISGPA6
#define IO_RA6_LAT                PORTAbits.RA6
#define IO_RA6_PORT               PORTAbits.RA6
#define IO_RA6_WPU                WPUGPAbits.WPUGPA6
#define IO_RA6_SetHigh()            do { PORTAbits.RA6 = 1; } while(0)
#define IO_RA6_SetLow()             do { PORTAbits.RA6 = 0; } while(0)
#define IO_RA6_Toggle()             do { PORTAbits.RA6 = ~(unsigned)PORTAbits.RA6; } while(0)
#define IO_RA6_GetValue()           PORTAbits.RA6
#define IO_RA6_SetDigitalInput()    do { TRISGPAbits.TRISGPA6 = 1; } while(0)
#define IO_RA6_SetDigitalOutput()   do { TRISGPAbits.TRISGPA6 = 0; } while(0)
#define IO_RA6_SetPullup()      do { WPUGPAbits.WPUGPA6 = 1; } while(0)
#define IO_RA6_ResetPullup()    do { WPUGPAbits.WPUGPA6 = 0; } while(0)

// get/set channel_AN4 aliases
#define channel_AN4_TRIS               TRISGPBbits.TRISGPB1
#define channel_AN4_LAT                PORTBbits.RB1
#define channel_AN4_PORT               PORTBbits.RB1
#define channel_AN4_WPU                WPUGPBbits.WPUGPB1
#define channel_AN4_SetHigh()            do { PORTBbits.RB1 = 1; } while(0)
#define channel_AN4_SetLow()             do { PORTBbits.RB1 = 0; } while(0)
#define channel_AN4_Toggle()             do { PORTBbits.RB1 = ~(unsigned)PORTBbits.RB1; } while(0)
#define channel_AN4_GetValue()           PORTBbits.RB1
#define channel_AN4_SetDigitalInput()    do { TRISGPBbits.TRISGPB1 = 1; } while(0)
#define channel_AN4_SetDigitalOutput()   do { TRISGPBbits.TRISGPB1 = 0; } while(0)
#define channel_AN4_SetPullup()      do { WPUGPBbits.WPUGPB1 = 1; } while(0)
#define channel_AN4_ResetPullup()    do { WPUGPBbits.WPUGPB1 = 0; } while(0)

// get/set IO_RB7 aliases
#define IO_RB7_TRIS               TRISGPBbits.TRISGPB7
#define IO_RB7_LAT                PORTBbits.RB7
#define IO_RB7_PORT               PORTBbits.RB7
#define IO_RB7_WPU                WPUGPBbits.WPUGPB7
#define IO_RB7_SetHigh()            do { PORTBbits.RB7 = 1; } while(0)
#define IO_RB7_SetLow()             do { PORTBbits.RB7 = 0; } while(0)
#define IO_RB7_Toggle()             do { PORTBbits.RB7 = ~(unsigned)PORTBbits.RB7; } while(0)
#define IO_RB7_GetValue()           PORTBbits.RB7
#define IO_RB7_SetDigitalInput()    do { TRISGPBbits.TRISGPB7 = 1; } while(0)
#define IO_RB7_SetDigitalOutput()   do { TRISGPBbits.TRISGPB7 = 0; } while(0)
#define IO_RB7_SetPullup()      do { WPUGPBbits.WPUGPB7 = 1; } while(0)
#define IO_RB7_ResetPullup()    do { WPUGPBbits.WPUGPB7 = 0; } while(0)

/**
   @Param
    none
   @Returns
    none
   @Description
    GPIO and peripheral I/O initialization
   @Example
    PIN_MANAGER_Initialize();
 */
void PIN_MANAGER_Initialize (void);




#endif // PIN_MANAGER_H
/**
 End of File
*/