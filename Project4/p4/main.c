/*
 * main.c
 *
 *  Created on: Mar 1, 2022
 *      Author: Andrew
 */

#include "Ultrasonic.h"
#include "LCD_Interface.h"
#include "icu.h"
#include <avr/io.h>
#include "common_macros.h"


void main(void)
{
	LCD_init();
	Ultrasonic_init();
	SET_BIT(SREG,7);
	LCD_displayString("Distance=     cm");
	while(1)
	{
		LCD_moveCursor(0,10);
		LCD_intgerToString(Ultrasonic_readDistance());
		if(Ultrasonic_readDistance()<100)
			LCD_displayString(" ");
	}
}
