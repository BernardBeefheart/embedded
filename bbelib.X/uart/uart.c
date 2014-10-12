/* 
 * File:   uart.c
 * Author: bernard
 *
 * Created on 11 octobre 2014, 23:49
 */

#include <xc.h>
#include <stdbool.h>
// #include "p24Fxxxx.h"

#if !defined(__PIC24FJ128GA010__)
#error "raté"
#else
// #error "OK!"
#endif

#include "uart.h"

bool uart_init(const int speed) {
	int BAUDRATEREG2 = SYSCLK/32/speed-1;
	int BAUDRATE_MISTAKE = 1000*(speed-SYSCLK/32/(BAUDRATEREG2+1))/speed;


	if (BAUDRATEREG2 > 255) {
		return false;
	}

	if ((BAUDRATE_MISTAKE > 2)||(BAUDRATE_MISTAKE < -2)) {
		return false;
	}
		// This is an EXAMPLE, so brutal typing goes into explaining all bit sets

	// The Explorer 16 board has a DB9 connector wired to UART2, so we will
	// be configuring this port only

	// configure U2MODE
	U2MODEbits.UARTEN = 0;	// Bit15 TX, RX DISABLED, ENABLE at end of func
	U2MODEbits.USIDL = 0;	// Bit13 Continue in Idle
	U2MODEbits.IREN = 0;	// Bit12 No IR translation
	U2MODEbits.RTSMD = 0;	// Bit11 Simplex Mode
	U2MODEbits.UEN = 0;		// Bits8,9 TX,RX enabled, CTS,RTS not
	U2MODEbits.WAKE = 0;	// Bit7 No Wake up (since we don't sleep here)
	U2MODEbits.LPBACK = 0;	// Bit6 No Loop Back
	U2MODEbits.ABAUD = 0;	// Bit5 No Autobaud (would require sending '55')
	U2MODEbits.RXINV = 0;	// Bit4 IdleState = 1
	U2MODEbits.BRGH = 0;	// Bit3 16 clocks per bit period
	U2MODEbits.PDSEL = 0;	// Bits1,2 8bit, No Parity
	U2MODEbits.STSEL = 0;	// Bit0 One Stop Bit

	U2BRG = BAUDRATEREG2;	// baud rate

	// Load all values in for U1STA SFR
	U2STAbits.UTXISEL1 = 0;	//Bit15 Int when Char is transferred (1/2 config!)
	U2STAbits.UTXINV = 0;	//Bit14 N/A, IRDA config
	U2STAbits.UTXISEL0 = 0;	//Bit13 Other half of Bit15
	U2STAbits.UTXBRK = 0;	//Bit11 Disabled
	U2STAbits.UTXEN = 0;	//Bit10 TX pins controlled by periph
	U2STAbits.UTXBF = 0;	//Bit9 *Read Only Bit*
	U2STAbits.TRMT = 0;		//Bit8 *Read Only bit*
	U2STAbits.URXISEL = 0;	//Bits6,7 Int. on character recieved
	U2STAbits.ADDEN = 0;	//Bit5 Address Detect Disabled
	U2STAbits.RIDLE = 0;	//Bit4 *Read Only Bit*
	U2STAbits.PERR = 0;		//Bit3 *Read Only Bit*
	U2STAbits.FERR = 0;		//Bit2 *Read Only Bit*
	U2STAbits.OERR = 0;		//Bit1 *Read Only Bit*
	U2STAbits.URXDA = 0;	//Bit0 *Read Only Bit*

	IFS1bits.U2TXIF = 0;	// Clear the Transmit Interrupt Flag
	IEC1bits.U2TXIE = 1;	// Enable Transmit Interrupts
	IFS1bits.U2RXIF = 0;	// Clear the Recieve Interrupt Flag
	IEC1bits.U2RXIE = 1;	// Enable Recieve Interrupts

	U2MODEbits.UARTEN = 1;	// And turn the peripheral on

	U2STAbits.UTXEN = 1;

	return true;
}

void __attribute__ ((interrupt, no_auto_psv)) _U2RXInterrupt(void) {
	volatile int r = U2RXREG;
	IFS1bits.U2RXIF = 0;
}
void __attribute__ ((interrupt, no_auto_psv)) _U2TXInterrupt(void) {
	IFS1bits.U2TXIF = 0;
}
