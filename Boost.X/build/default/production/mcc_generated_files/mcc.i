# 1 "mcc_generated_files/mcc.c"
# 1 "<built-in>" 1
# 1 "<built-in>" 3
# 288 "<built-in>" 3
# 1 "<command line>" 1
# 1 "<built-in>" 2
# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\language_support.h" 1 3
# 2 "<built-in>" 2
# 1 "mcc_generated_files/mcc.c" 2
# 47 "mcc_generated_files/mcc.c"
#pragma config WDTE = OFF
#pragma config PWRTE = OFF
#pragma config MCLRE = ON
#pragma config CP = OFF
#pragma config BOREN = ON
#pragma config WRT = OFF


# 1 "mcc_generated_files/mcc.h" 1
# 46 "mcc_generated_files/mcc.h"
# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\xc.h" 1 3
# 18 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\xc.h" 3
extern const char __xc8_OPTIM_SPEED;

extern double __fpnormalize(double);



# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\c90\\xc8debug.h" 1 3
# 13 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\c90\\xc8debug.h" 3
#pragma intrinsic(__builtin_software_breakpoint)
extern void __builtin_software_breakpoint(void);
# 23 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\xc.h" 2 3




# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\pic.h" 1 3




# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\htc.h" 1 3



# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\xc.h" 1 3
# 4 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\htc.h" 2 3
# 5 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\pic.h" 2 3




extern unsigned char __osccal_val(void);




# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\pic_chip_select.h" 1 3
# 134 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\pic_chip_select.h" 3
# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 1 3
# 44 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\__at.h" 1 3
# 44 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 2 3








extern volatile unsigned char INDF __attribute__((address(0x000)));

__asm("INDF equ 00h");




extern volatile unsigned char TMR0 __attribute__((address(0x001)));

__asm("TMR0 equ 01h");




extern volatile unsigned char PCL __attribute__((address(0x002)));

__asm("PCL equ 02h");




extern volatile unsigned char STATUS __attribute__((address(0x003)));

__asm("STATUS equ 03h");


typedef union {
    struct {
        unsigned C :1;
        unsigned DC :1;
        unsigned Z :1;
        unsigned nPD :1;
        unsigned nTO :1;
        unsigned RP :2;
        unsigned IRP :1;
    };
    struct {
        unsigned :5;
        unsigned RP0 :1;
        unsigned RP1 :1;
    };
    struct {
        unsigned CARRY :1;
        unsigned :1;
        unsigned ZERO :1;
    };
} STATUSbits_t;
extern volatile STATUSbits_t STATUSbits __attribute__((address(0x003)));
# 159 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char FSR __attribute__((address(0x004)));

__asm("FSR equ 04h");




extern volatile unsigned char PORTGPA __attribute__((address(0x005)));

__asm("PORTGPA equ 05h");


extern volatile unsigned char PORTA __attribute__((address(0x005)));

__asm("PORTA equ 05h");


typedef union {
    struct {
        unsigned GPA0 :1;
        unsigned GPA1 :1;
        unsigned GPA2 :1;
        unsigned GPA3 :1;
        unsigned :1;
        unsigned GPA5 :1;
        unsigned GPA6 :1;
        unsigned GPA7 :1;
    };
    struct {
        unsigned GPIO0 :1;
        unsigned GPIO1 :1;
        unsigned GPIO2 :1;
        unsigned GPIO3 :1;
        unsigned :1;
        unsigned GPIO5 :1;
        unsigned GPIO6 :1;
        unsigned GPIO7 :1;
    };
    struct {
        unsigned RA0 :1;
        unsigned RA1 :1;
        unsigned RA2 :1;
        unsigned RA3 :1;
        unsigned :1;
        unsigned RA5 :1;
        unsigned RA6 :1;
        unsigned RA7 :1;
    };
} PORTGPAbits_t;
extern volatile PORTGPAbits_t PORTGPAbits __attribute__((address(0x005)));
# 316 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
typedef union {
    struct {
        unsigned GPA0 :1;
        unsigned GPA1 :1;
        unsigned GPA2 :1;
        unsigned GPA3 :1;
        unsigned :1;
        unsigned GPA5 :1;
        unsigned GPA6 :1;
        unsigned GPA7 :1;
    };
    struct {
        unsigned GPIO0 :1;
        unsigned GPIO1 :1;
        unsigned GPIO2 :1;
        unsigned GPIO3 :1;
        unsigned :1;
        unsigned GPIO5 :1;
        unsigned GPIO6 :1;
        unsigned GPIO7 :1;
    };
    struct {
        unsigned RA0 :1;
        unsigned RA1 :1;
        unsigned RA2 :1;
        unsigned RA3 :1;
        unsigned :1;
        unsigned RA5 :1;
        unsigned RA6 :1;
        unsigned RA7 :1;
    };
} PORTAbits_t;
extern volatile PORTAbits_t PORTAbits __attribute__((address(0x005)));
# 458 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char PORTGPB __attribute__((address(0x006)));

__asm("PORTGPB equ 06h");


extern volatile unsigned char PORTB __attribute__((address(0x006)));

__asm("PORTB equ 06h");


typedef union {
    struct {
        unsigned GPB0 :1;
        unsigned GPB1 :1;
        unsigned :2;
        unsigned GPB4 :1;
        unsigned GPB5 :1;
        unsigned GPB6 :1;
        unsigned GPB7 :1;
    };
    struct {
        unsigned RB0 :1;
        unsigned RB1 :1;
        unsigned :2;
        unsigned RB4 :1;
        unsigned RB5 :1;
        unsigned RB6 :1;
        unsigned RB7 :1;
    };
} PORTGPBbits_t;
extern volatile PORTGPBbits_t PORTGPBbits __attribute__((address(0x006)));
# 551 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
typedef union {
    struct {
        unsigned GPB0 :1;
        unsigned GPB1 :1;
        unsigned :2;
        unsigned GPB4 :1;
        unsigned GPB5 :1;
        unsigned GPB6 :1;
        unsigned GPB7 :1;
    };
    struct {
        unsigned RB0 :1;
        unsigned RB1 :1;
        unsigned :2;
        unsigned RB4 :1;
        unsigned RB5 :1;
        unsigned RB6 :1;
        unsigned RB7 :1;
    };
} PORTBbits_t;
extern volatile PORTBbits_t PORTBbits __attribute__((address(0x006)));
# 636 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char PIR1 __attribute__((address(0x007)));

__asm("PIR1 equ 07h");


typedef union {
    struct {
        unsigned TMR1IF :1;
        unsigned TMR2IF :1;
        unsigned CC1IF :1;
        unsigned CC2IF :1;
        unsigned SSPIF :1;
        unsigned BCLIF :1;
        unsigned ADIF :1;
        unsigned OTIF :1;
    };
} PIR1bits_t;
extern volatile PIR1bits_t PIR1bits __attribute__((address(0x007)));
# 698 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char PIR2 __attribute__((address(0x008)));

__asm("PIR2 equ 08h");


typedef union {
    struct {
        unsigned UVLOIF :1;
        unsigned OVLOIF :1;
        unsigned DRUVIF :1;
        unsigned VDDUVIF :1;
        unsigned :1;
        unsigned IVGD2IF :1;
        unsigned :1;
        unsigned IVGD1IF :1;
    };
} PIR2bits_t;
extern volatile PIR2bits_t PIR2bits __attribute__((address(0x008)));
# 750 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char PIR3 __attribute__((address(0x009)));

__asm("PIR3 equ 09h");


typedef union {
    struct {
        unsigned TXIF :1;
        unsigned RCIF :1;
    };
} PIR3bits_t;
extern volatile PIR3bits_t PIR3bits __attribute__((address(0x009)));
# 776 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char PCLATH __attribute__((address(0x00A)));

__asm("PCLATH equ 0Ah");




extern volatile unsigned char INTCON __attribute__((address(0x00B)));

__asm("INTCON equ 0Bh");


typedef union {
    struct {
        unsigned IOCF :1;
        unsigned INTF :1;
        unsigned T0IF :1;
        unsigned IOCE :1;
        unsigned INTE :1;
        unsigned T0IE :1;
        unsigned PEIE :1;
        unsigned GIE :1;
    };
} INTCONbits_t;
extern volatile INTCONbits_t INTCONbits __attribute__((address(0x00B)));
# 845 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned short TMR1 __attribute__((address(0x00C)));

__asm("TMR1 equ 0Ch");




extern volatile unsigned char TMR1L __attribute__((address(0x00C)));

__asm("TMR1L equ 0Ch");




extern volatile unsigned char TMR1H __attribute__((address(0x00D)));

__asm("TMR1H equ 0Dh");




extern volatile unsigned char T1CON __attribute__((address(0x00E)));

__asm("T1CON equ 0Eh");


typedef union {
    struct {
        unsigned TMR1ON :1;
        unsigned TMR1CS :1;
        unsigned :2;
        unsigned T1CKPS :2;
    };
    struct {
        unsigned :4;
        unsigned T1CKPS0 :1;
        unsigned T1CKPS1 :1;
    };
} T1CONbits_t;
extern volatile T1CONbits_t T1CONbits __attribute__((address(0x00E)));
# 914 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char TMR2 __attribute__((address(0x00F)));

__asm("TMR2 equ 0Fh");




extern volatile unsigned char T2CON __attribute__((address(0x010)));

__asm("T2CON equ 010h");


typedef union {
    struct {
        unsigned T2CKPS :2;
        unsigned TMR2ON :1;
    };
} T2CONbits_t;
extern volatile T2CONbits_t T2CONbits __attribute__((address(0x010)));
# 947 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char PR2 __attribute__((address(0x011)));

__asm("PR2 equ 011h");


typedef union {
    struct {
        unsigned PR2 :8;
    };
} PR2bits_t;
extern volatile PR2bits_t PR2bits __attribute__((address(0x011)));
# 967 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char PCON __attribute__((address(0x012)));

__asm("PCON equ 012h");




extern volatile unsigned char PWM2PHL __attribute__((address(0x013)));

__asm("PWM2PHL equ 013h");


typedef union {
    struct {
        unsigned PWM2PHL :8;
    };
} PWM2PHLbits_t;
extern volatile PWM2PHLbits_t PWM2PHLbits __attribute__((address(0x013)));
# 994 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char PWM2PHH __attribute__((address(0x014)));

__asm("PWM2PHH equ 014h");


typedef union {
    struct {
        unsigned PWM2PHH :8;
    };
} PWM2PHHbits_t;
extern volatile PWM2PHHbits_t PWM2PHHbits __attribute__((address(0x014)));
# 1014 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char PWM2RL __attribute__((address(0x015)));

__asm("PWM2RL equ 015h");


typedef union {
    struct {
        unsigned PWM2RL :8;
    };
} PWM2RLbits_t;
extern volatile PWM2RLbits_t PWM2RLbits __attribute__((address(0x015)));
# 1034 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char PWM2RH __attribute__((address(0x016)));

__asm("PWM2RH equ 016h");


typedef union {
    struct {
        unsigned PWM2RH :8;
    };
} PWM2RHbits_t;
extern volatile PWM2RHbits_t PWM2RHbits __attribute__((address(0x016)));
# 1054 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char PWM1RL __attribute__((address(0x017)));

__asm("PWM1RL equ 017h");


typedef union {
    struct {
        unsigned PWM1RL :8;
    };
} PWM1RLbits_t;
extern volatile PWM1RLbits_t PWM1RLbits __attribute__((address(0x017)));
# 1074 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char PWM1RH __attribute__((address(0x018)));

__asm("PWM1RH equ 018h");


typedef union {
    struct {
        unsigned PWM1RH :8;
    };
} PWM1RHbits_t;
extern volatile PWM1RHbits_t PWM1RHbits __attribute__((address(0x018)));
# 1094 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char OSCTUNE __attribute__((address(0x01B)));

__asm("OSCTUNE equ 01Bh");


typedef union {
    struct {
        unsigned TUN0 :1;
        unsigned TUN1 :1;
        unsigned TUN2 :1;
        unsigned TUN3 :1;
        unsigned TUN4 :1;
    };
} OSCTUNEbits_t;
extern volatile OSCTUNEbits_t OSCTUNEbits __attribute__((address(0x01B)));
# 1138 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned short ADRES __attribute__((address(0x01C)));

__asm("ADRES equ 01Ch");




extern volatile unsigned char ADRESL __attribute__((address(0x01C)));

__asm("ADRESL equ 01Ch");


typedef union {
    struct {
        unsigned ADRESL :8;
    };
} ADRESLbits_t;
extern volatile ADRESLbits_t ADRESLbits __attribute__((address(0x01C)));
# 1165 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char ADRESH __attribute__((address(0x01D)));

__asm("ADRESH equ 01Dh");


typedef union {
    struct {
        unsigned ADRESH :8;
    };
} ADRESHbits_t;
extern volatile ADRESHbits_t ADRESHbits __attribute__((address(0x01D)));
# 1185 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char ADCON0 __attribute__((address(0x01E)));

__asm("ADCON0 equ 01Eh");


typedef union {
    struct {
        unsigned ADON :1;
        unsigned GO_nDONE :1;
        unsigned CHS :6;
    };
    struct {
        unsigned :2;
        unsigned CHS0 :1;
        unsigned CHS1 :1;
        unsigned CHS2 :1;
        unsigned CHS3 :1;
        unsigned CHS4 :1;
        unsigned CHS5 :1;
    };
} ADCON0bits_t;
extern volatile ADCON0bits_t ADCON0bits __attribute__((address(0x01E)));
# 1256 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char ADCON1 __attribute__((address(0x01F)));

__asm("ADCON1 equ 01Fh");


typedef union {
    struct {
        unsigned :4;
        unsigned ADCS :3;
    };
    struct {
        unsigned :4;
        unsigned ADCS0 :1;
        unsigned ADCS1 :1;
        unsigned ADCS2 :1;
    };
} ADCON1bits_t;
extern volatile ADCON1bits_t ADCON1bits __attribute__((address(0x01F)));
# 1298 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char OPTION_REG __attribute__((address(0x081)));

__asm("OPTION_REG equ 081h");


typedef union {
    struct {
        unsigned PS :3;
        unsigned PSA :1;
        unsigned T0SE :1;
        unsigned T0CS :1;
        unsigned INTEDG :1;
        unsigned nRAPUI :1;
    };
    struct {
        unsigned PS0 :1;
        unsigned PS1 :1;
        unsigned PS2 :1;
    };
} OPTION_REGbits_t;
extern volatile OPTION_REGbits_t OPTION_REGbits __attribute__((address(0x081)));
# 1368 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char TRISGPA __attribute__((address(0x085)));

__asm("TRISGPA equ 085h");


extern volatile unsigned char TRISA __attribute__((address(0x085)));

__asm("TRISA equ 085h");


typedef union {
    struct {
        unsigned TRISA0 :1;
        unsigned TRISA1 :1;
        unsigned TRISA2 :1;
        unsigned TRISA3 :1;
        unsigned :1;
        unsigned TRISA5 :1;
        unsigned TRISA6 :1;
        unsigned TRISA7 :1;
    };
} TRISGPAbits_t;
extern volatile TRISGPAbits_t TRISGPAbits __attribute__((address(0x085)));
# 1428 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
typedef union {
    struct {
        unsigned TRISA0 :1;
        unsigned TRISA1 :1;
        unsigned TRISA2 :1;
        unsigned TRISA3 :1;
        unsigned :1;
        unsigned TRISA5 :1;
        unsigned TRISA6 :1;
        unsigned TRISA7 :1;
    };
} TRISAbits_t;
extern volatile TRISAbits_t TRISAbits __attribute__((address(0x085)));
# 1480 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char TRISGPB __attribute__((address(0x086)));

__asm("TRISGPB equ 086h");


extern volatile unsigned char TRISB __attribute__((address(0x086)));

__asm("TRISB equ 086h");


typedef union {
    struct {
        unsigned TRISB0 :1;
        unsigned TRISB1 :1;
        unsigned :2;
        unsigned TRISB4 :1;
        unsigned TRISB5 :1;
        unsigned TRISB6 :1;
        unsigned TRISB7 :1;
    };
} TRISGPBbits_t;
extern volatile TRISGPBbits_t TRISGPBbits __attribute__((address(0x086)));
# 1534 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
typedef union {
    struct {
        unsigned TRISB0 :1;
        unsigned TRISB1 :1;
        unsigned :2;
        unsigned TRISB4 :1;
        unsigned TRISB5 :1;
        unsigned TRISB6 :1;
        unsigned TRISB7 :1;
    };
} TRISBbits_t;
extern volatile TRISBbits_t TRISBbits __attribute__((address(0x086)));
# 1580 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char PIE1 __attribute__((address(0x087)));

__asm("PIE1 equ 087h");


typedef union {
    struct {
        unsigned TMR1IE :1;
        unsigned TMR2IE :1;
        unsigned CC1IE :1;
        unsigned CC2IE :1;
        unsigned SSPIE :1;
        unsigned BCLIE :1;
        unsigned ADIE :1;
        unsigned OTIE :1;
    };
} PIE1bits_t;
extern volatile PIE1bits_t PIE1bits __attribute__((address(0x087)));
# 1642 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char PIE2 __attribute__((address(0x088)));

__asm("PIE2 equ 088h");


typedef union {
    struct {
        unsigned UVLOIE :1;
        unsigned OVLOIE :1;
        unsigned DRUVIE :1;
        unsigned VDDUVIE :1;
        unsigned :1;
        unsigned IVGD2IE :1;
        unsigned :1;
        unsigned IVGD1IE :1;
    };
} PIE2bits_t;
extern volatile PIE2bits_t PIE2bits __attribute__((address(0x088)));
# 1694 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char PIE3 __attribute__((address(0x089)));

__asm("PIE3 equ 089h");


typedef union {
    struct {
        unsigned TXIE :1;
        unsigned RCIE :1;
    };
} PIE3bits_t;
extern volatile PIE3bits_t PIE3bits __attribute__((address(0x089)));
# 1720 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char VINUVLO __attribute__((address(0x08C)));

__asm("VINUVLO equ 08Ch");


typedef union {
    struct {
        unsigned UVLO :6;
    };
} VINUVLObits_t;
extern volatile VINUVLObits_t VINUVLObits __attribute__((address(0x08C)));
# 1740 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char VINOVLO __attribute__((address(0x08D)));

__asm("VINOVLO equ 08Dh");


typedef union {
    struct {
        unsigned OVLO :6;
    };
} VINOVLObits_t;
extern volatile VINOVLObits_t VINOVLObits __attribute__((address(0x08D)));
# 1760 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char VINCON __attribute__((address(0x08E)));

__asm("VINCON equ 08Eh");


typedef union {
    struct {
        unsigned OVLOINTN :1;
        unsigned OVLOINTP :1;
        unsigned OVLOOUT :1;
        unsigned OVLOEN :1;
        unsigned UVLOINTN :1;
        unsigned UVLOINTP :1;
        unsigned UVLOOUT :1;
        unsigned UVLOEN :1;
    };
} VINCONbits_t;
extern volatile VINCONbits_t VINCONbits __attribute__((address(0x08E)));
# 1822 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char CREFCON1 __attribute__((address(0x08F)));

__asm("CREFCON1 equ 08Fh");


typedef union {
    struct {
        unsigned CREFCON1 :8;
    };
} CREFCON1bits_t;
extern volatile CREFCON1bits_t CREFCON1bits __attribute__((address(0x08F)));
# 1842 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char CREFCON2 __attribute__((address(0x090)));

__asm("CREFCON2 equ 090h");


typedef union {
    struct {
        unsigned CREFCON2 :8;
    };
} CREFCON2bits_t;
extern volatile CREFCON2bits_t CREFCON2bits __attribute__((address(0x090)));
# 1862 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char VREFCON1 __attribute__((address(0x091)));

__asm("VREFCON1 equ 091h");


typedef union {
    struct {
        unsigned VREFCON1 :8;
    };
} VREFCON1bits_t;
extern volatile VREFCON1bits_t VREFCON1bits __attribute__((address(0x091)));
# 1882 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char VREFCON2 __attribute__((address(0x092)));

__asm("VREFCON2 equ 092h");


typedef union {
    struct {
        unsigned VREFCON2 :8;
    };
} VREFCON2bits_t;
extern volatile VREFCON2bits_t VREFCON2bits __attribute__((address(0x092)));
# 1902 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char CC1RL __attribute__((address(0x093)));

__asm("CC1RL equ 093h");


typedef union {
    struct {
        unsigned CC1RL :8;
    };
} CC1RLbits_t;
extern volatile CC1RLbits_t CC1RLbits __attribute__((address(0x093)));
# 1922 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char CC1RH __attribute__((address(0x094)));

__asm("CC1RH equ 094h");


typedef union {
    struct {
        unsigned CC1RH :8;
    };
} CC1RHbits_t;
extern volatile CC1RHbits_t CC1RHbits __attribute__((address(0x094)));
# 1942 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char CC2RL __attribute__((address(0x095)));

__asm("CC2RL equ 095h");


typedef union {
    struct {
        unsigned CC2RL :8;
    };
} CC2RLbits_t;
extern volatile CC2RLbits_t CC2RLbits __attribute__((address(0x095)));
# 1962 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char CC2RH __attribute__((address(0x096)));

__asm("CC2RH equ 096h");


typedef union {
    struct {
        unsigned CC2RH :8;
    };
} CC2RHbits_t;
extern volatile CC2RHbits_t CC2RHbits __attribute__((address(0x096)));
# 1982 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char CCDCON __attribute__((address(0x097)));

__asm("CCDCON equ 097h");


typedef union {
    struct {
        unsigned CC1M :4;
        unsigned CC2M :4;
    };
} CCDCONbits_t;
extern volatile CCDCONbits_t CCDCONbits __attribute__((address(0x097)));
# 2008 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char VDDCON __attribute__((address(0x098)));

__asm("VDDCON equ 098h");


typedef union {
    struct {
        unsigned VDDUV0 :1;
        unsigned VDDUV1 :1;
        unsigned :2;
        unsigned VDDUVINTN :1;
        unsigned VDDUVINTP :1;
        unsigned VDDUVOUT :1;
        unsigned VDDUVEN :1;
    };
} VDDCONbits_t;
extern volatile VDDCONbits_t VDDCONbits __attribute__((address(0x098)));
# 2059 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char LOOPCON1 __attribute__((address(0x099)));

__asm("LOOPCON1 equ 099h");


typedef union {
    struct {
        unsigned :2;
        unsigned IVREGUL :1;
        unsigned IVGDINTN :1;
        unsigned IVGDINTP :1;
        unsigned IV_GOOD :1;
        unsigned :1;
        unsigned IVLRES :1;
    };
} LOOPCON1bits_t;
extern volatile LOOPCON1bits_t LOOPCON1bits __attribute__((address(0x099)));
# 2105 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char LOOPCON2 __attribute__((address(0x09A)));

__asm("LOOPCON2 equ 09Ah");


typedef union {
    struct {
        unsigned :2;
        unsigned IVREGUL :1;
        unsigned IVGDINTN :1;
        unsigned IVGDINTP :1;
        unsigned IV_GOOD :1;
        unsigned :1;
        unsigned IVLRES :1;
    };
} LOOPCON2bits_t;
extern volatile LOOPCON2bits_t LOOPCON2bits __attribute__((address(0x09A)));
# 2151 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char TTCAL __attribute__((address(0x09B)));

__asm("TTCAL equ 09Bh");


typedef union {
    struct {
        unsigned TTA :4;
        unsigned :3;
        unsigned TSTOT :1;
    };
} TTCALbits_t;
extern volatile TTCALbits_t TTCALbits __attribute__((address(0x09B)));
# 2178 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char SLPCRCON1 __attribute__((address(0x09C)));

__asm("SLPCRCON1 equ 09Ch");


typedef union {
    struct {
        unsigned SLPCRCON1 :6;
        unsigned SLPBY :1;
    };
} SLPCRCON1bits_t;
extern volatile SLPCRCON1bits_t SLPCRCON1bits __attribute__((address(0x09C)));
# 2204 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char SLPCRCON2 __attribute__((address(0x09D)));

__asm("SLPCRCON2 equ 09Dh");


typedef union {
    struct {
        unsigned SLPCRCON2 :6;
        unsigned SLPBY :1;
    };
} SLPCRCON2bits_t;
extern volatile SLPCRCON2bits_t SLPCRCON2bits __attribute__((address(0x09D)));
# 2230 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char ICOACON __attribute__((address(0x09E)));

__asm("ICOACON equ 09Eh");


typedef union {
    struct {
        unsigned IC2OAC :4;
        unsigned IC1OAC :4;
    };
} ICOACONbits_t;
extern volatile ICOACONbits_t ICOACONbits __attribute__((address(0x09E)));
# 2256 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char ICLEBCON __attribute__((address(0x09F)));

__asm("ICLEBCON equ 09Fh");


typedef union {
    struct {
        unsigned IC2LEBC :2;
        unsigned IC1LEBC :2;
    };
} ICLEBCONbits_t;
extern volatile ICLEBCONbits_t ICLEBCONbits __attribute__((address(0x09F)));
# 2282 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char WPUGPA __attribute__((address(0x105)));

__asm("WPUGPA equ 0105h");


typedef union {
    struct {
        unsigned WPUGPA0 :1;
        unsigned WPUGPA1 :1;
        unsigned WPUGPA2 :1;
        unsigned WPUGPA3 :1;
        unsigned :1;
        unsigned WPUGPA5 :1;
        unsigned WPUGPA6 :1;
        unsigned WPUGPA7 :1;
    };
    struct {
        unsigned WPUA0 :1;
        unsigned WPUA1 :1;
        unsigned WPUA2 :1;
        unsigned WPUA3 :1;
        unsigned :1;
        unsigned WPUA5 :1;
        unsigned WPUA6 :1;
        unsigned WPUA7 :1;
    };
} WPUGPAbits_t;
extern volatile WPUGPAbits_t WPUGPAbits __attribute__((address(0x105)));
# 2384 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char WPUGPB __attribute__((address(0x106)));

__asm("WPUGPB equ 0106h");


typedef union {
    struct {
        unsigned WPUGPB0 :1;
        unsigned WPUGPB1 :1;
        unsigned :2;
        unsigned WPUGPB4 :1;
        unsigned WPUGPB5 :1;
        unsigned WPUGPB6 :1;
        unsigned WPUGPB7 :1;
    };
    struct {
        unsigned WPUB0 :1;
        unsigned WPUB1 :1;
        unsigned :2;
        unsigned WPUB4 :1;
        unsigned WPUB5 :1;
        unsigned WPUB6 :1;
        unsigned WPUB7 :1;
    };
} WPUGPBbits_t;
extern volatile WPUGPBbits_t WPUGPBbits __attribute__((address(0x106)));
# 2474 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char PE1 __attribute__((address(0x107)));

__asm("PE1 equ 0107h");


typedef union {
    struct {
        unsigned LDO_LP :1;
        unsigned LDO_LV :1;
        unsigned IS2PUEN :1;
        unsigned IS1PUEN :1;
        unsigned :2;
        unsigned PDRV2EN :1;
        unsigned PDRV1EN :1;
    };
} PE1bits_t;
extern volatile PE1bits_t PE1bits __attribute__((address(0x107)));
# 2525 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char ABECON1 __attribute__((address(0x10C)));

__asm("ABECON1 equ 010Ch");


typedef union {
    struct {
        unsigned ANAOEN :1;
        unsigned EA2DIS1 :1;
        unsigned EA1DIS1 :1;
        unsigned DRUVSEL :1;
        unsigned DCHSEL :2;
        unsigned GCTRL :1;
        unsigned DIGOEN :1;
    };
    struct {
        unsigned :4;
        unsigned DCHSEL0 :1;
        unsigned DCHSEL1 :1;
    };
} ABECON1bits_t;
extern volatile ABECON1bits_t ABECON1bits __attribute__((address(0x10C)));
# 2596 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char ABECON2 __attribute__((address(0x10D)));

__asm("ABECON2 equ 010Dh");


typedef union {
    struct {
        unsigned :1;
        unsigned EA2DIS2 :1;
        unsigned EA1DIS2 :1;
        unsigned :1;
        unsigned DSEL :3;
    };
} ABECON2bits_t;
extern volatile ABECON2bits_t ABECON2bits __attribute__((address(0x10D)));
# 2630 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char SSPADD __attribute__((address(0x110)));

__asm("SSPADD equ 0110h");


typedef union {
    struct {
        unsigned ADD :8;
    };
} SSPADDbits_t;
extern volatile SSPADDbits_t SSPADDbits __attribute__((address(0x110)));
# 2650 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char SSPBUF __attribute__((address(0x111)));

__asm("SSPBUF equ 0111h");


typedef union {
    struct {
        unsigned SSPBUF :8;
    };
} SSPBUFbits_t;
extern volatile SSPBUFbits_t SSPBUFbits __attribute__((address(0x111)));
# 2670 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char SSPCON1 __attribute__((address(0x112)));

__asm("SSPCON1 equ 0112h");


typedef union {
    struct {
        unsigned SSPM :4;
        unsigned CKP :1;
        unsigned SSPEN :1;
        unsigned SSPOV :1;
        unsigned WCOL :1;
    };
    struct {
        unsigned SSPM0 :1;
        unsigned SSPM1 :1;
        unsigned SSPM2 :1;
        unsigned SSPM3 :1;
    };
} SSPCON1bits_t;
extern volatile SSPCON1bits_t SSPCON1bits __attribute__((address(0x112)));
# 2740 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char SSPCON2 __attribute__((address(0x113)));

__asm("SSPCON2 equ 0113h");


typedef union {
    struct {
        unsigned SEN :1;
        unsigned RSEN :1;
        unsigned PEN :1;
        unsigned RCEN :1;
        unsigned ACKEN :1;
        unsigned ACKDT :1;
        unsigned ACKSTAT :1;
        unsigned GCEN :1;
    };
} SSPCON2bits_t;
extern volatile SSPCON2bits_t SSPCON2bits __attribute__((address(0x113)));
# 2802 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char SSPCON3 __attribute__((address(0x114)));

__asm("SSPCON3 equ 0114h");


typedef union {
    struct {
        unsigned DHEN :1;
        unsigned AHEN :1;
        unsigned SBCDE :1;
        unsigned SDAHT :1;
        unsigned BOEN :1;
        unsigned SCIE :1;
        unsigned PCIE :1;
        unsigned ACKTIM :1;
    };
} SSPCON3bits_t;
extern volatile SSPCON3bits_t SSPCON3bits __attribute__((address(0x114)));
# 2864 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char SSPMSK __attribute__((address(0x115)));

__asm("SSPMSK equ 0115h");


typedef union {
    struct {
        unsigned MSK :8;
    };
} SSPMSKbits_t;
extern volatile SSPMSKbits_t SSPMSKbits __attribute__((address(0x115)));
# 2884 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char SSPSTAT __attribute__((address(0x116)));

__asm("SSPSTAT equ 0116h");


typedef union {
    struct {
        unsigned BF :1;
        unsigned UA :1;
        unsigned R_nW :1;
        unsigned S :1;
        unsigned P :1;
        unsigned D_nA :1;
        unsigned CKE :1;
        unsigned SMP :1;
    };
} SSPSTATbits_t;
extern volatile SSPSTATbits_t SSPSTATbits __attribute__((address(0x116)));
# 2946 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char SSPADD2 __attribute__((address(0x117)));

__asm("SSPADD2 equ 0117h");


typedef union {
    struct {
        unsigned ADD2 :8;
    };
} SSPADD2bits_t;
extern volatile SSPADD2bits_t SSPADD2bits __attribute__((address(0x117)));
# 2966 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char SSPMSK2 __attribute__((address(0x118)));

__asm("SSPMSK2 equ 0118h");


typedef union {
    struct {
        unsigned MSK2 :8;
    };
} SSPMSK2bits_t;
extern volatile SSPMSK2bits_t SSPMSK2bits __attribute__((address(0x118)));
# 2986 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char SPBRG __attribute__((address(0x11B)));

__asm("SPBRG equ 011Bh");


typedef union {
    struct {
        unsigned SPBRG0 :1;
        unsigned SPBRG1 :1;
        unsigned SPBRG2 :1;
        unsigned SPBRG3 :1;
        unsigned SPBRG4 :1;
        unsigned SPBRG5 :1;
        unsigned SPBRG6 :1;
        unsigned SPBRG7 :1;
    };
} SPBRGbits_t;
extern volatile SPBRGbits_t SPBRGbits __attribute__((address(0x11B)));
# 3048 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char RCREG __attribute__((address(0x11C)));

__asm("RCREG equ 011Ch");


typedef union {
    struct {
        unsigned USART_RCDAT :8;
    };
} RCREGbits_t;
extern volatile RCREGbits_t RCREGbits __attribute__((address(0x11C)));
# 3068 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char TXREG __attribute__((address(0x11D)));

__asm("TXREG equ 011Dh");


typedef union {
    struct {
        unsigned USART_TXDAT :8;
    };
} TXREGbits_t;
extern volatile TXREGbits_t TXREGbits __attribute__((address(0x11D)));
# 3088 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char TXSTA __attribute__((address(0x11E)));

__asm("TXSTA equ 011Eh");


typedef union {
    struct {
        unsigned TX9D :1;
        unsigned TRMT :1;
        unsigned BRGH :1;
        unsigned :1;
        unsigned SYNC :1;
        unsigned TXEN :1;
        unsigned TX9 :1;
        unsigned CSRC :1;
    };
} TXSTAbits_t;
extern volatile TXSTAbits_t TXSTAbits __attribute__((address(0x11E)));
# 3145 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char RCSTA __attribute__((address(0x11F)));

__asm("RCSTA equ 011Fh");


typedef union {
    struct {
        unsigned RX9D :1;
        unsigned OERR :1;
        unsigned FERR :1;
        unsigned ADDEN :1;
        unsigned CREN :1;
        unsigned SREN :1;
        unsigned RX9 :1;
        unsigned SPEN :1;
    };
} RCSTAbits_t;
extern volatile RCSTAbits_t RCSTAbits __attribute__((address(0x11F)));
# 3207 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char IOCA __attribute__((address(0x185)));

__asm("IOCA equ 0185h");


typedef union {
    struct {
        unsigned IOCA0 :1;
        unsigned IOCA1 :1;
        unsigned IOCA2 :1;
        unsigned IOCA3 :1;
        unsigned :1;
        unsigned IOCA5 :1;
        unsigned IOCA6 :1;
        unsigned IOCA7 :1;
    };
} IOCAbits_t;
extern volatile IOCAbits_t IOCAbits __attribute__((address(0x185)));
# 3264 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char IOCB __attribute__((address(0x186)));

__asm("IOCB equ 0186h");


typedef union {
    struct {
        unsigned IOCB0 :1;
        unsigned IOCB1 :1;
        unsigned :2;
        unsigned IOCB4 :1;
        unsigned IOCB5 :1;
        unsigned IOCB6 :1;
        unsigned IOCB7 :1;
    };
} IOCBbits_t;
extern volatile IOCBbits_t IOCBbits __attribute__((address(0x186)));
# 3315 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char ANSELA __attribute__((address(0x187)));

__asm("ANSELA equ 0187h");


typedef union {
    struct {
        unsigned ANSA0 :1;
        unsigned ANSA1 :1;
        unsigned ANSA2 :1;
        unsigned ANSA3 :1;
    };
} ANSELAbits_t;
extern volatile ANSELAbits_t ANSELAbits __attribute__((address(0x187)));
# 3353 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char ANSELB __attribute__((address(0x188)));

__asm("ANSELB equ 0188h");


typedef union {
    struct {
        unsigned :1;
        unsigned ANSB1 :1;
        unsigned :2;
        unsigned ANSB4 :1;
        unsigned ANSB5 :1;
        unsigned ANSB6 :1;
    };
} ANSELBbits_t;
extern volatile ANSELBbits_t ANSELBbits __attribute__((address(0x188)));
# 3393 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char PMCON1 __attribute__((address(0x190)));

__asm("PMCON1 equ 0190h");


typedef union {
    struct {
        unsigned RD :1;
        unsigned WR :1;
        unsigned WREN :1;
        unsigned :3;
        unsigned CALSEL :1;
    };
} PMCON1bits_t;
extern volatile PMCON1bits_t PMCON1bits __attribute__((address(0x190)));
# 3432 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char PMCON2 __attribute__((address(0x191)));

__asm("PMCON2 equ 0191h");


typedef union {
    struct {
        unsigned PMCON2 :8;
    };
} PMCON2bits_t;
extern volatile PMCON2bits_t PMCON2bits __attribute__((address(0x191)));
# 3452 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned short PMADR __attribute__((address(0x192)));

__asm("PMADR equ 0192h");




extern volatile unsigned char PMADRL __attribute__((address(0x192)));

__asm("PMADRL equ 0192h");


typedef union {
    struct {
        unsigned PMADRL :8;
    };
    struct {
        unsigned PMADRL0 :1;
        unsigned PMADRL1 :1;
        unsigned PMADRL2 :1;
        unsigned PMADRL3 :1;
        unsigned PMADRL4 :1;
        unsigned PMADRL5 :1;
        unsigned PMADRL6 :1;
        unsigned PMADRL7 :1;
    };
} PMADRLbits_t;
extern volatile PMADRLbits_t PMADRLbits __attribute__((address(0x192)));
# 3529 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char PMADRH __attribute__((address(0x193)));

__asm("PMADRH equ 0193h");


typedef union {
    struct {
        unsigned PMADRH :4;
    };
    struct {
        unsigned PMADRH0 :1;
        unsigned PMADRH1 :1;
        unsigned PMADRH2 :1;
        unsigned PMADRH3 :1;
    };
} PMADRHbits_t;
extern volatile PMADRHbits_t PMADRHbits __attribute__((address(0x193)));
# 3575 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned short PMDAT __attribute__((address(0x194)));

__asm("PMDAT equ 0194h");




extern volatile unsigned char PMDATL __attribute__((address(0x194)));

__asm("PMDATL equ 0194h");


typedef union {
    struct {
        unsigned PMDATL :8;
    };
    struct {
        unsigned PMDATL0 :1;
        unsigned PMDATL1 :1;
        unsigned PMDATL2 :1;
        unsigned PMDATL3 :1;
        unsigned PMDATL4 :1;
        unsigned PMDATL5 :1;
        unsigned PMDATL6 :1;
        unsigned PMDATL7 :1;
    };
} PMDATLbits_t;
extern volatile PMDATLbits_t PMDATLbits __attribute__((address(0x194)));
# 3652 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char PMDATH __attribute__((address(0x195)));

__asm("PMDATH equ 0195h");


typedef union {
    struct {
        unsigned PMDATH :6;
    };
    struct {
        unsigned PMDATH0 :1;
        unsigned PMDATH1 :1;
        unsigned PMDATH2 :1;
        unsigned PMDATH3 :1;
        unsigned PMDATH4 :1;
        unsigned PMDATH5 :1;
        unsigned PMDATH6 :1;
        unsigned PMDATH7 :1;
    };
} PMDATHbits_t;
extern volatile PMDATHbits_t PMDATHbits __attribute__((address(0x195)));
# 3722 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char GMCAL1 __attribute__((address(0x196)));

__asm("GMCAL1 equ 0196h");


typedef union {
    struct {
        unsigned VGMCAL :4;
        unsigned IGMCAL :4;
    };
} GMCAL1bits_t;
extern volatile GMCAL1bits_t GMCAL1bits __attribute__((address(0x196)));
# 3748 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char EACAL2 __attribute__((address(0x196)));

__asm("EACAL2 equ 0196h");


typedef union {
    struct {
        unsigned VEACAL :4;
        unsigned IEACAL :4;
    };
} EACAL2bits_t;
extern volatile EACAL2bits_t EACAL2bits __attribute__((address(0x196)));
# 3774 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char GMCAL2 __attribute__((address(0x197)));

__asm("GMCAL2 equ 0197h");


typedef union {
    struct {
        unsigned VGMCAL :4;
        unsigned IGMCAL :4;
    };
} GMCAL2bits_t;
extern volatile GMCAL2bits_t GMCAL2bits __attribute__((address(0x197)));
# 3800 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char DCSCAL1 __attribute__((address(0x198)));

__asm("DCSCAL1 equ 0198h");


typedef union {
    struct {
        unsigned DCSCAL1 :7;
    };
} DCSCAL1bits_t;
extern volatile DCSCAL1bits_t DCSCAL1bits __attribute__((address(0x198)));
# 3820 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char DACCAL1 __attribute__((address(0x198)));

__asm("DACCAL1 equ 0198h");


typedef union {
    struct {
        unsigned VDACCAL :4;
        unsigned IDACCAL :4;
    };
} DACCAL1bits_t;
extern volatile DACCAL1bits_t DACCAL1bits __attribute__((address(0x198)));
# 3846 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char DCSCAL2 __attribute__((address(0x199)));

__asm("DCSCAL2 equ 0199h");


typedef union {
    struct {
        unsigned DCSCAL2 :7;
    };
} DCSCAL2bits_t;
extern volatile DCSCAL2bits_t DCSCAL2bits __attribute__((address(0x199)));
# 3866 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char DACCAL2 __attribute__((address(0x199)));

__asm("DACCAL2 equ 0199h");


typedef union {
    struct {
        unsigned VDACCAL :4;
        unsigned IDACCAL :4;
    };
} DACCAL2bits_t;
extern volatile DACCAL2bits_t DACCAL2bits __attribute__((address(0x199)));
# 3892 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char ADBT __attribute__((address(0x19A)));

__asm("ADBT equ 019Ah");


typedef union {
    struct {
        unsigned :4;
        unsigned ADBT :4;
    };
} ADBTbits_t;
extern volatile ADBTbits_t ADBTbits __attribute__((address(0x19A)));
# 3913 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char EACAL1 __attribute__((address(0x19A)));

__asm("EACAL1 equ 019Ah");


typedef union {
    struct {
        unsigned VEACAL :4;
        unsigned IEACAL :4;
    };
} EACAL1bits_t;
extern volatile EACAL1bits_t EACAL1bits __attribute__((address(0x19A)));
# 3939 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char DACBGRCAL __attribute__((address(0x19B)));

__asm("DACBGRCAL equ 019Bh");


typedef union {
    struct {
        unsigned BGRT :4;
        unsigned DACT :2;
    };
} DACBGRCALbits_t;
extern volatile DACBGRCALbits_t DACBGRCALbits __attribute__((address(0x19B)));
# 3965 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char PDSCAL __attribute__((address(0x19C)));

__asm("PDSCAL equ 019Ch");


typedef union {
    struct {
        unsigned PDST :6;
    };
} PDSCALbits_t;
extern volatile PDSCALbits_t PDSCALbits __attribute__((address(0x19C)));
# 3985 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char VRCAL __attribute__((address(0x19D)));

__asm("VRCAL equ 019Dh");


typedef union {
    struct {
        unsigned VRCAL :6;
    };
} VRCALbits_t;
extern volatile VRCALbits_t VRCALbits __attribute__((address(0x19D)));
# 4005 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char OSCCAL __attribute__((address(0x19E)));

__asm("OSCCAL equ 019Eh");


typedef union {
    struct {
        unsigned FCALT :7;
    };
} OSCCALbits_t;
extern volatile OSCCALbits_t OSCCALbits __attribute__((address(0x19E)));
# 4025 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile unsigned char ATSTCON __attribute__((address(0x19F)));

__asm("ATSTCON equ 019Fh");


typedef union {
    struct {
        unsigned TMPTBY :1;
        unsigned DRUVBY :1;
        unsigned DCSG1X :1;
        unsigned :1;
        unsigned SWFRQOR :1;
        unsigned :2;
        unsigned TSTGM :1;
    };
} ATSTCONbits_t;
extern volatile ATSTCONbits_t ATSTCONbits __attribute__((address(0x19F)));
# 4077 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\mcp19215.h" 3
extern volatile __bit ACKDT __attribute__((address(0x89D)));


extern volatile __bit ACKEN __attribute__((address(0x89C)));


extern volatile __bit ACKSTAT __attribute__((address(0x89E)));


extern volatile __bit ACKTIM __attribute__((address(0x8A7)));


extern volatile __bit ADCS0 __attribute__((address(0xFC)));


extern volatile __bit ADCS1 __attribute__((address(0xFD)));


extern volatile __bit ADCS2 __attribute__((address(0xFE)));


extern volatile __bit ADDEN __attribute__((address(0x8FB)));


extern volatile __bit ADIE __attribute__((address(0x43E)));


extern volatile __bit ADIF __attribute__((address(0x3E)));


extern volatile __bit ADON __attribute__((address(0xF0)));


extern volatile __bit AHEN __attribute__((address(0x8A1)));


extern volatile __bit ANAOEN __attribute__((address(0x860)));


extern volatile __bit ANSA0 __attribute__((address(0xC38)));


extern volatile __bit ANSA1 __attribute__((address(0xC39)));


extern volatile __bit ANSA2 __attribute__((address(0xC3A)));


extern volatile __bit ANSA3 __attribute__((address(0xC3B)));


extern volatile __bit ANSB1 __attribute__((address(0xC41)));


extern volatile __bit ANSB4 __attribute__((address(0xC44)));


extern volatile __bit ANSB5 __attribute__((address(0xC45)));


extern volatile __bit ANSB6 __attribute__((address(0xC46)));


extern volatile __bit BCLIE __attribute__((address(0x43D)));


extern volatile __bit BCLIF __attribute__((address(0x3D)));


extern volatile __bit BF __attribute__((address(0x8B0)));


extern volatile __bit BOEN __attribute__((address(0x8A4)));


extern volatile __bit BRGH __attribute__((address(0x8F2)));


extern volatile __bit CALSEL __attribute__((address(0xC86)));


extern volatile __bit CARRY __attribute__((address(0x18)));


extern volatile __bit CC1IE __attribute__((address(0x43A)));


extern volatile __bit CC1IF __attribute__((address(0x3A)));


extern volatile __bit CC2IE __attribute__((address(0x43B)));


extern volatile __bit CC2IF __attribute__((address(0x3B)));


extern volatile __bit CHS0 __attribute__((address(0xF2)));


extern volatile __bit CHS1 __attribute__((address(0xF3)));


extern volatile __bit CHS2 __attribute__((address(0xF4)));


extern volatile __bit CHS3 __attribute__((address(0xF5)));


extern volatile __bit CHS4 __attribute__((address(0xF6)));


extern volatile __bit CHS5 __attribute__((address(0xF7)));


extern volatile __bit CKE __attribute__((address(0x8B6)));


extern volatile __bit CKP __attribute__((address(0x894)));


extern volatile __bit CREN __attribute__((address(0x8FC)));


extern volatile __bit CSRC __attribute__((address(0x8F7)));


extern volatile __bit DC __attribute__((address(0x19)));


extern volatile __bit DCHSEL0 __attribute__((address(0x864)));


extern volatile __bit DCHSEL1 __attribute__((address(0x865)));


extern volatile __bit DCSG1X __attribute__((address(0xCFA)));


extern volatile __bit DHEN __attribute__((address(0x8A0)));


extern volatile __bit DIGOEN __attribute__((address(0x867)));


extern volatile __bit DRUVBY __attribute__((address(0xCF9)));


extern volatile __bit DRUVIE __attribute__((address(0x442)));


extern volatile __bit DRUVIF __attribute__((address(0x42)));


extern volatile __bit DRUVSEL __attribute__((address(0x863)));


extern volatile __bit D_nA __attribute__((address(0x8B5)));


extern volatile __bit EA1DIS1 __attribute__((address(0x862)));


extern volatile __bit EA1DIS2 __attribute__((address(0x86A)));


extern volatile __bit EA2DIS1 __attribute__((address(0x861)));


extern volatile __bit EA2DIS2 __attribute__((address(0x869)));


extern volatile __bit FERR __attribute__((address(0x8FA)));


extern volatile __bit GCEN __attribute__((address(0x89F)));


extern volatile __bit GCTRL __attribute__((address(0x866)));


extern volatile __bit GIE __attribute__((address(0x5F)));


extern volatile __bit GO_nDONE __attribute__((address(0xF1)));


extern volatile __bit GPA0 __attribute__((address(0x28)));


extern volatile __bit GPA1 __attribute__((address(0x29)));


extern volatile __bit GPA2 __attribute__((address(0x2A)));


extern volatile __bit GPA3 __attribute__((address(0x2B)));


extern volatile __bit GPA5 __attribute__((address(0x2D)));


extern volatile __bit GPA6 __attribute__((address(0x2E)));


extern volatile __bit GPA7 __attribute__((address(0x2F)));


extern volatile __bit GPB0 __attribute__((address(0x30)));


extern volatile __bit GPB1 __attribute__((address(0x31)));


extern volatile __bit GPB4 __attribute__((address(0x34)));


extern volatile __bit GPB5 __attribute__((address(0x35)));


extern volatile __bit GPB6 __attribute__((address(0x36)));


extern volatile __bit GPB7 __attribute__((address(0x37)));


extern volatile __bit GPIO0 __attribute__((address(0x28)));


extern volatile __bit GPIO1 __attribute__((address(0x29)));


extern volatile __bit GPIO2 __attribute__((address(0x2A)));


extern volatile __bit GPIO3 __attribute__((address(0x2B)));


extern volatile __bit GPIO5 __attribute__((address(0x2D)));


extern volatile __bit GPIO6 __attribute__((address(0x2E)));


extern volatile __bit GPIO7 __attribute__((address(0x2F)));


extern volatile __bit INTE __attribute__((address(0x5C)));


extern volatile __bit INTEDG __attribute__((address(0x40E)));


extern volatile __bit INTF __attribute__((address(0x59)));


extern volatile __bit IOCA0 __attribute__((address(0xC28)));


extern volatile __bit IOCA1 __attribute__((address(0xC29)));


extern volatile __bit IOCA2 __attribute__((address(0xC2A)));


extern volatile __bit IOCA3 __attribute__((address(0xC2B)));


extern volatile __bit IOCA5 __attribute__((address(0xC2D)));


extern volatile __bit IOCA6 __attribute__((address(0xC2E)));


extern volatile __bit IOCA7 __attribute__((address(0xC2F)));


extern volatile __bit IOCB0 __attribute__((address(0xC30)));


extern volatile __bit IOCB1 __attribute__((address(0xC31)));


extern volatile __bit IOCB4 __attribute__((address(0xC34)));


extern volatile __bit IOCB5 __attribute__((address(0xC35)));


extern volatile __bit IOCB6 __attribute__((address(0xC36)));


extern volatile __bit IOCB7 __attribute__((address(0xC37)));


extern volatile __bit IOCE __attribute__((address(0x5B)));


extern volatile __bit IOCF __attribute__((address(0x58)));


extern volatile __bit IRP __attribute__((address(0x1F)));


extern volatile __bit IS1PUEN __attribute__((address(0x83B)));


extern volatile __bit IS2PUEN __attribute__((address(0x83A)));


extern volatile __bit IVGD1IE __attribute__((address(0x447)));


extern volatile __bit IVGD1IF __attribute__((address(0x47)));


extern volatile __bit IVGD2IE __attribute__((address(0x445)));


extern volatile __bit IVGD2IF __attribute__((address(0x45)));


extern volatile __bit LDO_LP __attribute__((address(0x838)));


extern volatile __bit LDO_LV __attribute__((address(0x839)));


extern volatile __bit OERR __attribute__((address(0x8F9)));


extern volatile __bit OTIE __attribute__((address(0x43F)));


extern volatile __bit OTIF __attribute__((address(0x3F)));


extern volatile __bit OVLOEN __attribute__((address(0x473)));


extern volatile __bit OVLOIE __attribute__((address(0x441)));


extern volatile __bit OVLOIF __attribute__((address(0x41)));


extern volatile __bit OVLOINTN __attribute__((address(0x470)));


extern volatile __bit OVLOINTP __attribute__((address(0x471)));


extern volatile __bit OVLOOUT __attribute__((address(0x472)));


extern volatile __bit PCIE __attribute__((address(0x8A6)));


extern volatile __bit PDRV1EN __attribute__((address(0x83F)));


extern volatile __bit PDRV2EN __attribute__((address(0x83E)));


extern volatile __bit PEIE __attribute__((address(0x5E)));


extern volatile __bit PEN __attribute__((address(0x89A)));


extern volatile __bit PMADRH0 __attribute__((address(0xC98)));


extern volatile __bit PMADRH1 __attribute__((address(0xC99)));


extern volatile __bit PMADRH2 __attribute__((address(0xC9A)));


extern volatile __bit PMADRH3 __attribute__((address(0xC9B)));


extern volatile __bit PMADRL0 __attribute__((address(0xC90)));


extern volatile __bit PMADRL1 __attribute__((address(0xC91)));


extern volatile __bit PMADRL2 __attribute__((address(0xC92)));


extern volatile __bit PMADRL3 __attribute__((address(0xC93)));


extern volatile __bit PMADRL4 __attribute__((address(0xC94)));


extern volatile __bit PMADRL5 __attribute__((address(0xC95)));


extern volatile __bit PMADRL6 __attribute__((address(0xC96)));


extern volatile __bit PMADRL7 __attribute__((address(0xC97)));


extern volatile __bit PMDATH0 __attribute__((address(0xCA8)));


extern volatile __bit PMDATH1 __attribute__((address(0xCA9)));


extern volatile __bit PMDATH2 __attribute__((address(0xCAA)));


extern volatile __bit PMDATH3 __attribute__((address(0xCAB)));


extern volatile __bit PMDATH4 __attribute__((address(0xCAC)));


extern volatile __bit PMDATH5 __attribute__((address(0xCAD)));


extern volatile __bit PMDATH6 __attribute__((address(0xCAE)));


extern volatile __bit PMDATH7 __attribute__((address(0xCAF)));


extern volatile __bit PMDATL0 __attribute__((address(0xCA0)));


extern volatile __bit PMDATL1 __attribute__((address(0xCA1)));


extern volatile __bit PMDATL2 __attribute__((address(0xCA2)));


extern volatile __bit PMDATL3 __attribute__((address(0xCA3)));


extern volatile __bit PMDATL4 __attribute__((address(0xCA4)));


extern volatile __bit PMDATL5 __attribute__((address(0xCA5)));


extern volatile __bit PMDATL6 __attribute__((address(0xCA6)));


extern volatile __bit PMDATL7 __attribute__((address(0xCA7)));


extern volatile __bit PS0 __attribute__((address(0x408)));


extern volatile __bit PS1 __attribute__((address(0x409)));


extern volatile __bit PS2 __attribute__((address(0x40A)));


extern volatile __bit PSA __attribute__((address(0x40B)));


extern volatile __bit RA0 __attribute__((address(0x28)));


extern volatile __bit RA1 __attribute__((address(0x29)));


extern volatile __bit RA2 __attribute__((address(0x2A)));


extern volatile __bit RA3 __attribute__((address(0x2B)));


extern volatile __bit RA5 __attribute__((address(0x2D)));


extern volatile __bit RA6 __attribute__((address(0x2E)));


extern volatile __bit RA7 __attribute__((address(0x2F)));


extern volatile __bit RB0 __attribute__((address(0x30)));


extern volatile __bit RB1 __attribute__((address(0x31)));


extern volatile __bit RB4 __attribute__((address(0x34)));


extern volatile __bit RB5 __attribute__((address(0x35)));


extern volatile __bit RB6 __attribute__((address(0x36)));


extern volatile __bit RB7 __attribute__((address(0x37)));


extern volatile __bit RCEN __attribute__((address(0x89B)));


extern volatile __bit RCIE __attribute__((address(0x449)));


extern volatile __bit RCIF __attribute__((address(0x49)));


extern volatile __bit RD __attribute__((address(0xC80)));


extern volatile __bit RP0 __attribute__((address(0x1D)));


extern volatile __bit RP1 __attribute__((address(0x1E)));


extern volatile __bit RSEN __attribute__((address(0x899)));


extern volatile __bit RX9 __attribute__((address(0x8FE)));


extern volatile __bit RX9D __attribute__((address(0x8F8)));


extern volatile __bit R_nW __attribute__((address(0x8B2)));


extern volatile __bit SBCDE __attribute__((address(0x8A2)));


extern volatile __bit SCIE __attribute__((address(0x8A5)));


extern volatile __bit SDAHT __attribute__((address(0x8A3)));


extern volatile __bit SEN __attribute__((address(0x898)));


extern volatile __bit SMP __attribute__((address(0x8B7)));


extern volatile __bit SPBRG0 __attribute__((address(0x8D8)));


extern volatile __bit SPBRG1 __attribute__((address(0x8D9)));


extern volatile __bit SPBRG2 __attribute__((address(0x8DA)));


extern volatile __bit SPBRG3 __attribute__((address(0x8DB)));


extern volatile __bit SPBRG4 __attribute__((address(0x8DC)));


extern volatile __bit SPBRG5 __attribute__((address(0x8DD)));


extern volatile __bit SPBRG6 __attribute__((address(0x8DE)));


extern volatile __bit SPBRG7 __attribute__((address(0x8DF)));


extern volatile __bit SPEN __attribute__((address(0x8FF)));


extern volatile __bit SREN __attribute__((address(0x8FD)));


extern volatile __bit SSPEN __attribute__((address(0x895)));


extern volatile __bit SSPIE __attribute__((address(0x43C)));


extern volatile __bit SSPIF __attribute__((address(0x3C)));


extern volatile __bit SSPM0 __attribute__((address(0x890)));


extern volatile __bit SSPM1 __attribute__((address(0x891)));


extern volatile __bit SSPM2 __attribute__((address(0x892)));


extern volatile __bit SSPM3 __attribute__((address(0x893)));


extern volatile __bit SSPOV __attribute__((address(0x896)));


extern volatile __bit SWFRQOR __attribute__((address(0xCFC)));


extern volatile __bit SYNC __attribute__((address(0x8F4)));


extern volatile __bit T0CS __attribute__((address(0x40D)));


extern volatile __bit T0IE __attribute__((address(0x5D)));


extern volatile __bit T0IF __attribute__((address(0x5A)));


extern volatile __bit T0SE __attribute__((address(0x40C)));


extern volatile __bit T1CKPS0 __attribute__((address(0x74)));


extern volatile __bit T1CKPS1 __attribute__((address(0x75)));


extern volatile __bit TMPTBY __attribute__((address(0xCF8)));


extern volatile __bit TMR1CS __attribute__((address(0x71)));


extern volatile __bit TMR1IE __attribute__((address(0x438)));


extern volatile __bit TMR1IF __attribute__((address(0x38)));


extern volatile __bit TMR1ON __attribute__((address(0x70)));


extern volatile __bit TMR2IE __attribute__((address(0x439)));


extern volatile __bit TMR2IF __attribute__((address(0x39)));


extern volatile __bit TMR2ON __attribute__((address(0x82)));


extern volatile __bit TRISA0 __attribute__((address(0x428)));


extern volatile __bit TRISA1 __attribute__((address(0x429)));


extern volatile __bit TRISA2 __attribute__((address(0x42A)));


extern volatile __bit TRISA3 __attribute__((address(0x42B)));


extern volatile __bit TRISA5 __attribute__((address(0x42D)));


extern volatile __bit TRISA6 __attribute__((address(0x42E)));


extern volatile __bit TRISA7 __attribute__((address(0x42F)));


extern volatile __bit TRISB0 __attribute__((address(0x430)));


extern volatile __bit TRISB1 __attribute__((address(0x431)));


extern volatile __bit TRISB4 __attribute__((address(0x434)));


extern volatile __bit TRISB5 __attribute__((address(0x435)));


extern volatile __bit TRISB6 __attribute__((address(0x436)));


extern volatile __bit TRISB7 __attribute__((address(0x437)));


extern volatile __bit TRMT __attribute__((address(0x8F1)));


extern volatile __bit TSTGM __attribute__((address(0xCFF)));


extern volatile __bit TSTOT __attribute__((address(0x4DF)));


extern volatile __bit TUN0 __attribute__((address(0xD8)));


extern volatile __bit TUN1 __attribute__((address(0xD9)));


extern volatile __bit TUN2 __attribute__((address(0xDA)));


extern volatile __bit TUN3 __attribute__((address(0xDB)));


extern volatile __bit TUN4 __attribute__((address(0xDC)));


extern volatile __bit TX9 __attribute__((address(0x8F6)));


extern volatile __bit TX9D __attribute__((address(0x8F0)));


extern volatile __bit TXEN __attribute__((address(0x8F5)));


extern volatile __bit TXIE __attribute__((address(0x448)));


extern volatile __bit TXIF __attribute__((address(0x48)));


extern volatile __bit UA __attribute__((address(0x8B1)));


extern volatile __bit UVLOEN __attribute__((address(0x477)));


extern volatile __bit UVLOIE __attribute__((address(0x440)));


extern volatile __bit UVLOIF __attribute__((address(0x40)));


extern volatile __bit UVLOINTN __attribute__((address(0x474)));


extern volatile __bit UVLOINTP __attribute__((address(0x475)));


extern volatile __bit UVLOOUT __attribute__((address(0x476)));


extern volatile __bit VDDUV0 __attribute__((address(0x4C0)));


extern volatile __bit VDDUV1 __attribute__((address(0x4C1)));


extern volatile __bit VDDUVEN __attribute__((address(0x4C7)));


extern volatile __bit VDDUVIE __attribute__((address(0x443)));


extern volatile __bit VDDUVIF __attribute__((address(0x43)));


extern volatile __bit VDDUVINTN __attribute__((address(0x4C4)));


extern volatile __bit VDDUVINTP __attribute__((address(0x4C5)));


extern volatile __bit VDDUVOUT __attribute__((address(0x4C6)));


extern volatile __bit WCOL __attribute__((address(0x897)));


extern volatile __bit WPUA0 __attribute__((address(0x828)));


extern volatile __bit WPUA1 __attribute__((address(0x829)));


extern volatile __bit WPUA2 __attribute__((address(0x82A)));


extern volatile __bit WPUA3 __attribute__((address(0x82B)));


extern volatile __bit WPUA5 __attribute__((address(0x82D)));


extern volatile __bit WPUA6 __attribute__((address(0x82E)));


extern volatile __bit WPUA7 __attribute__((address(0x82F)));


extern volatile __bit WPUB0 __attribute__((address(0x830)));


extern volatile __bit WPUB1 __attribute__((address(0x831)));


extern volatile __bit WPUB4 __attribute__((address(0x834)));


extern volatile __bit WPUB5 __attribute__((address(0x835)));


extern volatile __bit WPUB6 __attribute__((address(0x836)));


extern volatile __bit WPUB7 __attribute__((address(0x837)));


extern volatile __bit WPUGPA0 __attribute__((address(0x828)));


extern volatile __bit WPUGPA1 __attribute__((address(0x829)));


extern volatile __bit WPUGPA2 __attribute__((address(0x82A)));


extern volatile __bit WPUGPA3 __attribute__((address(0x82B)));


extern volatile __bit WPUGPA5 __attribute__((address(0x82D)));


extern volatile __bit WPUGPA6 __attribute__((address(0x82E)));


extern volatile __bit WPUGPA7 __attribute__((address(0x82F)));


extern volatile __bit WPUGPB0 __attribute__((address(0x830)));


extern volatile __bit WPUGPB1 __attribute__((address(0x831)));


extern volatile __bit WPUGPB4 __attribute__((address(0x834)));


extern volatile __bit WPUGPB5 __attribute__((address(0x835)));


extern volatile __bit WPUGPB6 __attribute__((address(0x836)));


extern volatile __bit WPUGPB7 __attribute__((address(0x837)));


extern volatile __bit WR __attribute__((address(0xC81)));


extern volatile __bit WREN __attribute__((address(0xC82)));


extern volatile __bit ZERO __attribute__((address(0x1A)));


extern volatile __bit nPD __attribute__((address(0x1B)));


extern volatile __bit nRAPUI __attribute__((address(0x40F)));


extern volatile __bit nTO __attribute__((address(0x1C)));
# 134 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\pic_chip_select.h" 2 3
# 13 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\pic.h" 2 3
# 30 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\pic.h" 3
#pragma intrinsic(__nop)
extern void __nop(void);
# 78 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\pic.h" 3
__attribute__((__unsupported__("The " "FLASH_READ" " macro function is no longer supported. Please use the MPLAB X MCC."))) unsigned char __flash_read(unsigned short addr);

__attribute__((__unsupported__("The " "FLASH_WRITE" " macro function is no longer supported. Please use the MPLAB X MCC."))) void __flash_write(unsigned short addr, unsigned short data);

__attribute__((__unsupported__("The " "FLASH_ERASE" " macro function is no longer supported. Please use the MPLAB X MCC."))) void __flash_erase(unsigned short addr);



# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\eeprom_routines.h" 1 3
# 85 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\pic.h" 2 3






#pragma intrinsic(_delay)
extern __attribute__((nonreentrant)) void _delay(unsigned long);
#pragma intrinsic(_delaywdt)
extern __attribute__((nonreentrant)) void _delaywdt(unsigned long);
# 137 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\pic.h" 3
extern __bank0 unsigned char __resetbits;
extern __bank0 __bit __powerdown;
extern __bank0 __bit __timeout;
# 27 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\xc.h" 2 3
# 46 "mcc_generated_files/mcc.h" 2

# 1 "mcc_generated_files/calibration.h" 1
# 56 "mcc_generated_files/calibration.h"
void init_Calibration(void);
# 47 "mcc_generated_files/mcc.h" 2

# 1 "mcc_generated_files/pin_manager.h" 1
# 71 "mcc_generated_files/pin_manager.h"
void PIN_MANAGER_Initialize (void);
# 48 "mcc_generated_files/mcc.h" 2

# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\c90\\stdint.h" 1 3
# 13 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\c90\\stdint.h" 3
typedef signed char int8_t;






typedef signed int int16_t;







typedef __int24 int24_t;







typedef signed long int int32_t;
# 52 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\c90\\stdint.h" 3
typedef unsigned char uint8_t;





typedef unsigned int uint16_t;






typedef __uint24 uint24_t;






typedef unsigned long int uint32_t;
# 88 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\c90\\stdint.h" 3
typedef signed char int_least8_t;







typedef signed int int_least16_t;
# 109 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\c90\\stdint.h" 3
typedef __int24 int_least24_t;
# 118 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\c90\\stdint.h" 3
typedef signed long int int_least32_t;
# 136 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\c90\\stdint.h" 3
typedef unsigned char uint_least8_t;






typedef unsigned int uint_least16_t;
# 154 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\c90\\stdint.h" 3
typedef __uint24 uint_least24_t;







typedef unsigned long int uint_least32_t;
# 181 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\c90\\stdint.h" 3
typedef signed char int_fast8_t;






typedef signed int int_fast16_t;
# 200 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\c90\\stdint.h" 3
typedef __int24 int_fast24_t;







typedef signed long int int_fast32_t;
# 224 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\c90\\stdint.h" 3
typedef unsigned char uint_fast8_t;





typedef unsigned int uint_fast16_t;
# 240 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\c90\\stdint.h" 3
typedef __uint24 uint_fast24_t;






typedef unsigned long int uint_fast32_t;
# 268 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\c90\\stdint.h" 3
typedef int32_t intmax_t;
# 282 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\c90\\stdint.h" 3
typedef uint32_t uintmax_t;






typedef int16_t intptr_t;




typedef uint16_t uintptr_t;
# 49 "mcc_generated_files/mcc.h" 2

# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\c90\\stdbool.h" 1 3
# 50 "mcc_generated_files/mcc.h" 2

# 1 "mcc_generated_files/vin.h" 1
# 52 "mcc_generated_files/vin.h"
# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\c90\\stdbool.h" 1 3
# 52 "mcc_generated_files/vin.h" 2

# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\c90\\stdint.h" 1 3
# 53 "mcc_generated_files/vin.h" 2

# 1 "mcc_generated_files/mcc.h" 1
# 54 "mcc_generated_files/vin.h" 2
# 92 "mcc_generated_files/vin.h"
void VIN_Initialize(void);
# 51 "mcc_generated_files/mcc.h" 2

# 1 "mcc_generated_files/ivout2.h" 1
# 52 "mcc_generated_files/ivout2.h"
# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\c90\\stdbool.h" 1 3
# 52 "mcc_generated_files/ivout2.h" 2

# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\c90\\stdint.h" 1 3
# 53 "mcc_generated_files/ivout2.h" 2

# 1 "mcc_generated_files/mcc.h" 1
# 54 "mcc_generated_files/ivout2.h" 2
# 92 "mcc_generated_files/ivout2.h"
void IVOUT2_Initialize(void);
# 117 "mcc_generated_files/ivout2.h"
void IVOUT2_SetOutput(uint8_t voutTarget);
# 141 "mcc_generated_files/ivout2.h"
void IVOUT2_StopOutput();
# 52 "mcc_generated_files/mcc.h" 2

# 1 "mcc_generated_files/ivout1.h" 1
# 52 "mcc_generated_files/ivout1.h"
# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\c90\\stdbool.h" 1 3
# 52 "mcc_generated_files/ivout1.h" 2

# 1 "C:\\Program Files (x86)\\Microchip\\xc8\\v2.00\\pic\\include\\c90\\stdint.h" 1 3
# 53 "mcc_generated_files/ivout1.h" 2

# 1 "mcc_generated_files/mcc.h" 1
# 54 "mcc_generated_files/ivout1.h" 2
# 92 "mcc_generated_files/ivout1.h"
void IVOUT1_Initialize(void);
# 117 "mcc_generated_files/ivout1.h"
void IVOUT1_SetOutput(uint8_t voutTarget);
# 141 "mcc_generated_files/ivout1.h"
void IVOUT1_StopOutput();
# 53 "mcc_generated_files/mcc.h" 2
# 69 "mcc_generated_files/mcc.h"
void SYSTEM_Initialize(void);
# 82 "mcc_generated_files/mcc.h"
void OSCILLATOR_Initialize(void);
# 96 "mcc_generated_files/mcc.h"
void SYSTEM_CONFIGURATION_Initialize(void);
# 54 "mcc_generated_files/mcc.c" 2


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

    T2CON = 0x0;

    PR2 = 0x16;

    TMR2 = 0x0;


    T2CONbits.TMR2ON = 1;
}

void SYSTEM_CONFIGURATION_Initialize(void)
{
    init_Calibration();

    PE1 = 0x0;

    ABECON1 = 0x0;
}
