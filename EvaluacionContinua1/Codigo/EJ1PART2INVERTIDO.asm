.include "m328pdef.inc"
.ORG 0X000

ldi r16, 0xFF 
out DDRD, r16 ; Configurar los pines del puerto B como salidas

ldi r17, 0x01 ; Posición inicial del LED (bit 0)

main_loop:
	in r16, PORTD ; Leer el estado actual del puerto
	com r16 ; Invertir el estado actual del puerto (complemento a 1 para apagar LEDs)
	or r16, r17 ; Encender el LED en la posición actual sin apagar los anteriores
	com r16 ; Invertir el estado de nuevo para escribir el valor correcto en PORTB
	out PORTD, r16 ; Actualizar el puerto
	ldi r20, 0x08
delayyy:
	ldi r18, 0xFF ; Valor para el segundo retardo
delayy:
	ldi r19, 0xFF ; Valor para el primer retardo 
delay:
	dec r19 ; Disminuir el contador del primer retardo
	brne delay ; Repetir hasta que sea 0
	dec r18 ; Disminuir el contador del segundo retardo
	brne delayy ; Repetir hasta que sea 0
	dec r20
	brne delayyy

	lsl r17 ; Desplazamos el LED
	cpi r17, 0x00 ; Comparamos si llegamos al final del puerto
	brne main_loop ; Repetir si no hemos llegado

	ldi r16, 0xFF ; Cargamos el valor 0xFF para apagar todos los pines
	out PORTD, r16 ; Apagar todos los pines (todos en 1, lo que apaga los LEDs)

	ldi r23, 0x0F
delay3:
	ldi r22, 0xFF
delay1:
	ldi r21, 0xFF
delay2:
	dec r21
	brne delay2
	dec r22
	brne delay1
	dec r23
	brne delay3

	ldi r17, 0x01 ; Reiniciamos a la primera posición
	rjmp main_loop ; Volver al bucle principal
