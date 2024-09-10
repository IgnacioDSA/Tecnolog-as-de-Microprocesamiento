.include "m328pdef.inc"

.ORG 0X0000
RJMP Comienzo
.ORG 0x0002 ;Habilitamos interrupción int0
RJMP RSI_0 ;
.ORG 0x0004 ; Habilitamos interrupción int1
RJMP RSI_1

Comienzo:
ldi r23, 0xFF
ldi r16, 0xFF
OUT DDRB, r16
ldi r16, 0b11000000
OUT DDRD, r16
;activamos los pull-up en los pines de INT0 e INT1
CBI PORTD, 2 ; Desactivamos resistencia pull-up de las entradas
CBI PORTD, 3 ;
SEI ; Activamos las interrupciones globales
ldi r16, 0b00000011
OUT EIMSK, r16
ldi r16, 0x0F
STS EICRA, r16

ldi r17, 0xFF
ldi r18, 0xFF
ldi r19, 0xFF
ldi r20, 0xFF
ldi r21, 0xFF
ldi r22, 0xFF
ldi r23, 0xFF





loop:

ldi r25, 0xFF


cp r17, r18
breq Uno
cp r17, r19
breq Dos
cp r17, r20
breq Tres
cp r17, r21
breq Cuatro
cp r17, r22
breq Cinco
cp r17, r23
breq Seis

RJMP loop




Uno:
 OUT PORTB, r18
 RJMP loop

Dos:
 OUT PORTB, r19
 RJMP loop

Tres:
 OUT PORTB, r20
 RJMP loop

Cuatro:

 OUT PORTB, r21
 RJMP loop

 Cinco:

 OUT PORTB, r22
 RJMP loop

 Seis:
 OUT PORTB, r23
 RJMP loop

delayy:
	ldi r24, 0xFF ; valor para el primer retardo
delay:
	dec r24 ; disminuir el contador del primer retardo
	brne delay ; repetir hasta que sea 0
	dec r25 ; disminuir el contador del segundo retardo
	brne delayy ; repetir hasta que sea 0


RSI_0:
     inc r17
     RETI
RSI_1:
     dec r17
     RETI 
 
