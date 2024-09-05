.include "m328pdef.inc"
.ORG 0x000

ldi r17, 0xFF       ; Configuramos todos los pines del puerto D como salidas
ldi r18, 0xFF;
OUT DDRD, r17     
OUT DDRB, r18
main_loop:




    ; Encender LEDs 1  (bajar los pines correspondientes)
    ldi r16, 0xFF   ; 0b01111110: LED 1 y LED 8 encendidos (el resto apagado)
    out PORTD, r16  ; Enviamos el valor a PORTD
    rcall delay     ; Llamamos a la subrutina delay
    ldi r16, 0xFF   ; Apagamos todos los LEDs (poner todos los pines en 1)
	ldi r18, 0x01
    out PORTB, r18
    rcall delay
    
    ; Encender LEDs 2 
    ldi r16, 0xD7   
    out PORTD, r16
    rcall delay
    ldi r16, 0xFF   ; Apagamos todos los LEDs
    out PORTD, r16
	ldi r18, 0x02
    out PORTB, r18
    rcall delay
    
    ; Encender LEDs 3 
    ldi r16, 0xD7   
    out PORTD, r16
    rcall delay
    ldi r16, 0xFF   ; Apagamos todos los LEDs
    out PORTD, r16
	ldi r18, 0x03
    out PORTB, r18
    rcall delay

    ; Encender LEDs 4
    ldi r16, 0xFF   
    out PORTD, r16
    rcall delay
    ldi r16, 0xFF   ; Apagamos todos los LEDs
    out PORTD, r16
	ldi r18, 0x04
    out PORTB, r18
    rcall delay

    ; Encender LEDs 5    
	ldi r16, 0xFF   
    out PORTD, r16
    rcall delay
    ldi r16, 0xFF   ; Apagamos todos los LEDs
    out PORTD, r16
	ldi r18, 0x05   ;fila
    out PORTB, r18
    rcall delay

    ; Encender LEDs 6
    ldi r16, 0xC7   
    out PORTD, r16
    rcall delay
    ldi r16, 0xFF   ; Apagamos todos los LEDs
    out PORTD, r16
	ldi r18, 0x06   ;fila
    out PORTB, r18
    rcall delay

    ; Encender LEDs 7 (bajar los pines correspondientes)
    ldi r16, 0xBB   
    out PORTD, r16  ; Enviamos el valor a PORTD
    rcall delay     ; Llamamos a la subrutina delay
    ldi r16, 0xFF   ; Apagamos todos los LEDs (poner todos los pines en 1)
    out PORTD, r16
	ldi r18, 0x07   ;fila
    out PORTB, r18
    rcall delay

	; Encender LEDs 0
	ldi r16, 0xFF   ; columna
    out PORTD, r16  ; Enviamos el valor a PORTD
    rcall delay     ; Llamamos a la subrutina delay
    ldi r16, 0xFF   ; Apagamos todos los LEDs (poner todos los pines en 1)
    out PORTD, r16
	ldi r18, 0x00   ;fila
    out PORTB, r18
    rcall delay
    rjmp main_loop  ; Volvemos al bucle principal

delay:
	ldi r21, 0x08
	;ldi r20, 0xFF
    ;ldi r19, 0xFF   ; Inicializamos r19 con 0xFF para el contador de retardo
delay_loop:
    ;dec r19         ; Disminuimos el contador de retardo
    ;brne delay_loop ; Repetimos hasta que r19 sea 0
    ;dec r20
	;brne delay_loop
	dec r21
    brne delay_loop
	ret             ; Retornamos de la subrutina delay
