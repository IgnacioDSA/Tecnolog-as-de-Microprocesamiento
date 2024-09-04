.include "m328pdef.inc"
.ORG 0x000

ldi r17, 0xFF       ; Configuramos todos los pines del puerto D como salidas
OUT DDRD, r17       

main_loop:
    ; Encender LEDs 1 y 8 (bajar los pines correspondientes)
    ldi r16, 0x7E   ; 0b01111110: LED 1 y LED 8 encendidos (el resto apagado)
    out PORTD, r16  ; Enviamos el valor a PORTD
    rcall delay     ; Llamamos a la subrutina delay
    ldi r16, 0xFF   ; Apagamos todos los LEDs (poner todos los pines en 1)
    out PORTD, r16
    rcall delay
    
    ; Encender LEDs 2 y 7
    ldi r16, 0xBD   ; 0b10111101: LED 2 y LED 7 encendidos
    out PORTD, r16
    rcall delay
    ldi r16, 0xFF   ; Apagamos todos los LEDs
    out PORTD, r16
    rcall delay
    
    ; Encender LEDs 3 y 6
    ldi r16, 0xDB   ; 0b11011011: LED 3 y LED 6 encendidos
    out PORTD, r16
    rcall delay
    ldi r16, 0xFF   ; Apagamos todos los LEDs
    out PORTD, r16
    rcall delay

    ; Encender LEDs 4 y 5
    ldi r16, 0xE7   ; 0b11100111: LED 4 y LED 5 encendidos
    out PORTD, r16
    rcall delay
    ldi r16, 0xFF   ; Apagamos todos los LEDs
    out PORTD, r16
    rcall delay

    ; Encender LEDs 3 y 6
    ldi r16, 0xDB   ; 0b11011011: LED 3 y LED 6 encendidos
    out PORTD, r16
    rcall delay
    ldi r16, 0xFF   ; Apagamos todos los LEDs
    out PORTD, r16
    rcall delay

    ; Encender LEDs 2 y 7
    ldi r16, 0xBD   ; 0b10111101: LED 2 y LED 7 encendidos
    out PORTD, r16
    rcall delay
    ldi r16, 0xFF   ; Apagamos todos los LEDs
    out PORTD, r16
    rcall delay

    ; Encender LEDs 1 y 8 (bajar los pines correspondientes)
    ldi r16, 0x7E   ; 0b01111110: LED 1 y LED 8 encendidos (el resto apagado)
    out PORTD, r16  ; Enviamos el valor a PORTD
    rcall delay     ; Llamamos a la subrutina delay
    ldi r16, 0xFF   ; Apagamos todos los LEDs (poner todos los pines en 1)
    out PORTD, r16
    rcall delay

    rjmp main_loop  ; Volvemos al bucle principal

delay:
	ldi r21, 0x08
	ldi r20, 0xFF
    ldi r19, 0xFF   ; Inicializamos r19 con 0xFF para el contador de retardo
delay_loop:
    dec r19         ; Disminuimos el contador de retardo
    brne delay_loop ; Repetimos hasta que r19 sea 0
    dec r20
	brne delay_loop
	dec r21
	brne delay_loop
	ret             ; Retornamos de la subrutina delay
