.include "m328pdef.inc"

.org 0x0000
    rjmp INICIO

INICIO:
    ldi r28, 0x00 ; Cargamos en una LUT los valores de prueba
	  ldi r29, 0x01 
	  ldi r25, 0b00010000
	  ST Y+, r25
	  ldi r25, 0b00011000 
	  ST Y+, r25
	  ldi r25, 0b00111000 
	  ST Y+, r25
	  ldi r25, 0b00011100 
	  ST Y+, r25
	  ldi r25, 0b00111100 
	  ST Y+, r25
	  ldi r25, 0b00000110 
	  ST Y+, r25
	  ldi r25, 0b00000111 
	  ST Y+, r25
	  ldi r25, 0b00001000
	  ST Y+, r25
	  ldi r25, 0b00001001 
	  ST Y+, r25
	  ldi r25, 0b00001010 
	  ST Y+, r25

    ldi r28, 0x00  ; Definimos en puntero en su lugar base 0x0100
	  ldi r29, 0x01


    ldi r16, 0xFF
    out DDRB, r16
    out DDRD, r16  ; Definimos salido 
    ld r0, Y+
    ld r1, Y+ ; cargamos en los registros r0 a r4 los valores
    ld r2, Y+
    ld r3, Y+
    ldi r24, 0x00
LOOP:
    ; 
    out PORTB, r2       
    out PORTD, r3   ; mostramos la salida
	;el registro r24 es como un registro que tiene los acarreos de las 8 filas

sbrc r24, 0 ; en estas cuatros lineas si el bit de r24 es 0 ponemos 0 en el carry, si es un 1 ponemos un uno.
sec               
sbrs r24, 0       
clc

ror r0        ; rotamos r0 con r1  
ror r1           

in r23, SREG      ; guardamos SREG en r23
andi r23, 0x01    ; dejamos solamente el bit de acarreo

bst r23, 0  ;copiamos el bit 23
bld r24, 0  ; lo pegamos en el registro de acarreos


sbrc r24, 1   ; en estas cuatros lineas si el bit de r24 es 0 ponemos 0 en el carry, si es un 1 ponemos un uno.
sec               
sbrs r24, 1        
clc               

ror r2       ; rotamos   
ror r3          

in r23, SREG    ; obtenemos el sreg
andi r23, 0x01   ;

bst r23, 0 ; 
bld r24, 1 ; copiamos el carry y lo guardamos en bit 1
    call DELAY
    rjmp LOOP

DELAY:
    ldi r16, 0x4F
    ldi r17, 0x5F
    ldi r18, 0x5F
DELAY_LOOP:
    dec r18
    brne DELAY_LOOP
    dec r17
    brne DELAY_LOOP
    dec r16
    brne DELAY_LOOP
    ret           