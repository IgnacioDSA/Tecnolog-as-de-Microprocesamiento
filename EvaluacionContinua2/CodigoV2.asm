.include "m328pdef.inc"

.ORG 0X0000
RJMP Comienzo
.ORG 0x0002 ;Habilitamos interrupción int0
RJMP RSI_0 ; 
.ORG 0x0004 ; Habilitamos interrupción int1
RJMP RSI_1

Comienzo:
ldi r16, 0xFF
OUT DDRB, r16
ldi r16, 0b11000000
OUT DDRD, r16 
ldi r16, HIGH(RAMEND)
OUT SPH, r16
ldi r16, LOW(RAMEND)
OUT SPL, r16
ldi r16, 0x01
push r16

;activamos los pull-up en los pines de INT0 e INT1
CBI PORTD, 2 ; Desactivamos resistencia pull-up de las entradas
CBI PORTD, 3 ;
SEI ; Activamos las interrupciones globales
ldi r16, 0b00000011
OUT EIMSK, r16
ldi r16, 0x0F
STS EICRA, r16

loop:

RJMP loop

RSI_0:
ldi r17, 0x8E
OUT PORTB, r17
RETI
RSI_1:
ldi r17, 0xE1
OUT PORTB, r17
RETI
