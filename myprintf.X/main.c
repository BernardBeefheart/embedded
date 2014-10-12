/* 
 * File:   main.c
 * Author: bernard
 *
 * Created on 11 octobre 2014, 21:58
 */

#include <xc.h>
#include <stdbool.h>
// #include "p24Fxxxx.h"

#if !defined(__PIC24FJ128GA010__)
#error "raté"
#endif

#include "include/bbclib.h"

#include "uart/uart.h"
/*
 * 
 */
int main(void) {
	if (!uart_init(9600)) {
		return -1;
	}

	debug_printf("coucou, toa!\n");

	return 0;
}

