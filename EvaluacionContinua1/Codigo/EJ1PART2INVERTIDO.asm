.include "m328pdef.inc"
.ORG 0X000

ldi r16, 0xFF 
out DDRB, r16 ; Configurar los pines del puerto B como salidas

ldi r17, 0x01 ; Posición inicial del LED (bit 0)

main_loop:
	in r16, PORTB ; Leer el estado actual del puerto
	com r16 ; Invertir el estado actual del puerto (complemento a 1 para apagar LEDs)
	or r16, r17 ; Encender el LED en la posición actual sin apagar los anteriores
	com r16 ; Invertir el estado de nuevo para escribir el valor correcto en PORTB
	out PORTB, r16 ; Actualizar el puerto

	ldi r18, 0xFF ; Valor para el segundo retardo
delayy:
	ldi r19, 0xFF ; Valor para el primer retardo 
delay:
	dec r19 ; Disminuir el contador del primer retardo
	brne delay ; Repetir hasta que sea 0
	dec r18 ; Disminuir el contador del segundo retardo
	brne delayy ; Repetir hasta que sea 0

	lsl r17 ; Desplazamos el LED
	cpi r17, 0x00 ; Comparamos si llegamos al final del puerto
	brne main_loop ; Repetir si no hemos llegado

	ldi r16, 0xFF ; Cargamos el valor 0xFF para apagar todos los pines
	out PORTB, r16 ; Apagar todos los pines (todos en 1, lo que apaga los LEDs)

	ldi r17, 0x01 ; Reiniciamos a la primera posición
	rjmp main_loop ; Volver al bucle principal