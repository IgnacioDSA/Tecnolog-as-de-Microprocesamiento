.include "m328pdef.inc"
.ORG 0x000

ldi r17, 0xFF       ; Configuramos todos los pines del puerto D como salidas
ldi r18, 0xFF       ; Configuramos todos los pines del puerto B como salidas
OUT DDRD, r17       ; Aplicamos la configuración a DDRD
OUT DDRB, r18       ; Aplicamos la configuración a DDRB

main_loop:
    ; Encender LEDs 1 (bajar los pines correspondientes)
    ldi r16, 0xFF       ; Apagamos todos los LEDs (poniendo todos los pines en 1)
    out PORTD, r16      ; Enviamos el valor a PORTD
    rcall delay         ; Llamamos a la subrutina delay
    ldi r18, 0x01       ; Seleccionamos la fila 1
    out PORTB, r18      ; Enviamos el valor a PORTB
    rcall delay         ; Llamamos a la subrutina delay
    
    ; Encender LEDs 2
    ldi r16, 0xD7       ; Encendemos ciertos LEDs en PORTD
    out PORTD, r16      ; Enviamos el valor a PORTD
    rcall delay         ; Llamamos a la subrutina delay
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    ldi r18, 0x02       ; Seleccionamos la fila 2
    out PORTB, r18      ; Enviamos el valor a PORTB
    rcall delay         ; Llamamos a la subrutina delay
    
    ; Encender LEDs 3
    ldi r16, 0xD7       ; Encendemos ciertos LEDs en PORTD (mismo patrón que LED 2)
    out PORTD, r16      ; Enviamos el valor a PORTD
    rcall delay         ; Llamamos a la subrutina delay
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    ldi r18, 0x03       ; Seleccionamos la fila 3
    out PORTB, r18      ; Enviamos el valor a PORTB
    rcall delay         ; Llamamos a la subrutina delay

    ; Encender LEDs 4
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    rcall delay         ; Llamamos a la subrutina delay
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    ldi r18, 0x04       ; Seleccionamos la fila 4
    out PORTB, r18      ; Enviamos el valor a PORTB
    rcall delay         ; Llamamos a la subrutina delay

    ; Encender LEDs 5
    ldi r16, 0xBB       ; Encendemos ciertos LEDs en PORTD
    out PORTD, r16      ; Enviamos el valor a PORTD
    rcall delay         ; Llamamos a la subrutina delay
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    ldi r18, 0x05       ; Seleccionamos la fila 5
    out PORTB, r18      ; Enviamos el valor a PORTB
    rcall delay         ; Llamamos a la subrutina delay

    ; Encender LEDs 6
    ldi r16, 0xC7       ; Encendemos ciertos LEDs en PORTD
    out PORTD, r16      ; Enviamos el valor a PORTD
    rcall delay         ; Llamamos a la subrutina delay
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    ldi r18, 0x06       ; Seleccionamos la fila 6
    out PORTB, r18      ; Enviamos el valor a PORTB
    rcall delay         ; Llamamos a la subrutina delay

    ; Encender LEDs 7
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    rcall delay         ; Llamamos a la subrutina delay
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    ldi r18, 0x07       ; Seleccionamos la fila 7
    out PORTB, r18      ; Enviamos el valor a PORTB
    rcall delay         ; Llamamos a la subrutina delay

    ;Encender LEDs 0
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    rcall delay         ; Llamamos a la subrutina delay
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    ldi r18, 0x00       ; Seleccionamos la fila 0
    out PORTB, r18      ; Enviamos el valor a PORTB
    rcall delay         ; Llamamos a la subrutina delay

    rjmp main_loop      ; Volvemos al bucle principal

delay:
	ldi r21, 0x08       ; Cargamos un valor en r21 para crear el retardo
delay_loop:
	dec r21             ; Disminuimos el valor de r21
        brne delay_loop     ; Si r21 no es 0, repetimos el ciclo
	ret                 ; Retornamos de la subrutina delay
