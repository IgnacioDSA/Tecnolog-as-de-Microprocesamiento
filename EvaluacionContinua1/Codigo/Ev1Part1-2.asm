.include "m328pdef.inc"
.ORG 0X000

ldi r16, 0xFF 
out DDRB, r16 ; pines del puerto B como salidas

ldi r17, 0x01 ; posicion inicial LED

main_loop:
	in r16, PORTB ; leer estado actual del puerto
	or r16, r17 ; encender el led en la pos actual sin apagar los anteriores
	out PORTB, r16 ; actualizar el puerto

	ldi r18, 0xFF ; valor para el segundo retardo
delayy:
	ldi r19, 0xFF ; valor para el primer retardo 
delay:
	dec r19 ; disminuir el contador del primer retardo
	brne delay ; repetir hasta que sea 0
	dec r18 ; disminuir el contador del segundo retardo
	brne delayy ; repetir hasta que sea 0

	lsl r17 ; desplazamos el LED
	cpi r17, 0x00 ; comparamos si llegamos al final del puerto
	brne main_loop ; repetimos si no hemos llegado

	ldi r16, 0x00 ; cargamos el valor 0
	out PORTB, r16 ; apagamos todos los pines

	ldi r17, 0x01 ; reiniciamos a la primera posicion
	rjmp main_loop ; volver al bucle principal