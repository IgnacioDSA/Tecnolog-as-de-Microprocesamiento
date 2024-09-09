.include "m328pdef.inc"

 .ORG 0X0000
RJMP Comienzo
.ORG 0x0002 ;Habilitamos interrupción int0
RJMP RSI_0 ; 
.ORG 0x0004 ; Habilitamos interrupción int1
RJMP RSI_1

Comienzo:

OUT DDRB, 0xFF
OUT DDRD, (0<<PD2)
OUT DDRD, (0<<PD3)
OUT DDRD, 
SEI ; Activamos las interrupciones globales
ldi r16, 0b00000011
OUT EIMSK, r16
ldi r16, 0x0F
OUT EICRA, r16

loop:

RJMP loop

RSI_0:
RSI_1:



