/* 
 * File:   uart.h
 * Author: bernard
 *
 * Created on 11 octobre 2014, 23:46
 */

#ifndef UART_H
#define	UART_H

// External oscillator frequency
#define SYSCLK          8000000
// UART IOs
#if defined (__PIC24FJ64GA004__)
	#define UART2_TX_TRIS	TRISCbits.TRISC9
	#define UART2_RX_TRIS	TRISCbits.TRISC3
#else // PIC24FJ128GA010, PIC24FJ256GA110, PIC24FJ256GB110
	#define UART2_TX_TRIS   TRISFbits.TRISF5
	#define UART2_RX_TRIS   TRISFbits.TRISF4
#endif

//PPS Outputs
#ifndef __PIC24FJ128GA010__
	#define U2TX_IO		5
	#define U2RTS_IO	6
#endif

bool uart_init(const int speed);

#endif	/* UART_H */

