.include "m328pdef.inc"
.ORG 0x000

ldi r16, 0xFF 
out DDRD, r16 ; pines del puerto B como salidas

ldi r17, 0x01 ; posicion inicial LED

main_loop:
	mov r16, r17 ; copiamos la posicion actual del led
	com r16      ; complementamos el valor para encender el LED (invertir los bits)
	out PORTD, r16 ; encendemos el led en el pin correspondiente

	ldi r20, 0x08
delayyy:
	ldi r18, 0xFF ; valor para el segundo retardo
delayy:
	ldi r19, 0xFF ; valor para el primer retardo 
delay:
	dec r19 ; disminuir el contador del primer retardo
	brne delay ; repetir hasta que sea 0
	dec r18 ; disminuir el contador del segundo retardo
	brne delayy ; repetir hasta que sea 0
	dec r20
	brne delayyy

	ldi r16, 0xFF ; poner todos los LEDs en estado apagado (1)
	out PORTD, r16 ; apagar los pines del puerto B

	lsl r17 ; desplazamos el LED
	cpi r17, 0x00 ; comparamos si llegamos al final del puerto
	brne main_loop ; repetimos si no hemos llegado

	ldi r17, 0x01 ; reiniciamos a la primera posicion
	rjmp main_loop ; volver al bucle principal
