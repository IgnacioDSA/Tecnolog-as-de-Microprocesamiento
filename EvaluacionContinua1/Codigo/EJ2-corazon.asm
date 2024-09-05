.include "m328pdef.inc"
.ORG 0x000

ldi r17, 0xFF       ; Configuramos todos los pines del puerto D como salidas
ldi r18, 0xFF       ; Configuramos todos los pines del puerto B como salidas
OUT DDRD, r17       ; Aplicamos la configuración al puerto D
OUT DDRB, r18       ; Aplicamos la configuración al puerto B

main_loop:
    ; Encender LEDs 1
    ldi r16, 0x93   ; Establecemos el patrón de LEDs para la fila 1
    out PORTD, r16  ; Enviamos el valor al puerto D
    rcall delay     ; Llamamos a la subrutina de retardo
    ldi r16, 0xFF   ; Apagamos todos los LEDs (ponemos todos los pines en 1)
    out PORTD, r16  ; Enviamos el valor al puerto D
    ldi r18, 0x01   ; Seleccionamos la fila 1 (PORTB)
    out PORTB, r18  ; Enviamos el valor al puerto B
    rcall delay     ; Llamamos a la subrutina de retardo
    
    ; Encender LEDs 2
    ldi r16, 0x01   ; Establecemos el patrón de LEDs para la fila 2
    out PORTD, r16  ; Enviamos el valor al puerto D
    rcall delay     ; Llamamos a la subrutina de retardo
    ldi r16, 0xFF   ; Apagamos todos los LEDs
    out PORTD, r16  ; Enviamos el valor al puerto D
    ldi r18, 0x02   ; Seleccionamos la fila 2 (PORTB)
    out PORTB, r18  ; Enviamos el valor al puerto B
    rcall delay     ; Llamamos a la subrutina de retardo
    
    ; Encender LEDs 3
    ldi r16, 0x01   ; Establecemos el patrón de LEDs para la fila 3
    out PORTD, r16  ; Enviamos el valor al puerto D
    rcall delay     ; Llamamos a la subrutina de retardo
    ldi r16, 0xFF   ; Apagamos todos los LEDs
    out PORTD, r16  ; Enviamos el valor al puerto D
    ldi r18, 0x03   ; Seleccionamos la fila 3 (PORTB)
    out PORTB, r18  ; Enviamos el valor al puerto B
    rcall delay     ; Llamamos a la subrutina de retardo

    ; Encender LEDs 4
    ldi r16, 0x01   ; Establecemos el patrón de LEDs para la fila 4
    out PORTD, r16  ; Enviamos el valor al puerto D
    rcall delay     ; Llamamos a la subrutina de retardo
    ldi r16, 0xFF   ; Apagamos todos los LEDs
    out PORTD, r16  ; Enviamos el valor al puerto D
    ldi r18, 0x04   ; Seleccionamos la fila 4 (PORTB)
    out PORTB, r18  ; Enviamos el valor al puerto B
    rcall delay     ; Llamamos a la subrutina de retardo

    ; Encender LEDs 5
    ldi r16, 0x01   ; Establecemos el patrón de LEDs para la fila 5
    out PORTD, r16  ; Enviamos el valor al puerto D
    rcall delay     ; Llamamos a la subrutina de retardo
    ldi r16, 0xFF   ; Apagamos todos los LEDs
    out PORTD, r16  ; Enviamos el valor al puerto D
    ldi r18, 0x05   ; Seleccionamos la fila 5 (PORTB)
    out PORTB, r18  ; Enviamos el valor al puerto B
    rcall delay     ; Llamamos a la subrutina de retardo

    ; Encender LEDs 6
    ldi r16, 0x83   ; Establecemos el patrón de LEDs para la fila 6
    out PORTD, r16  ; Enviamos el valor al puerto D
    rcall delay     ; Llamamos a la subrutina de retardo
    ldi r16, 0xFF   ; Apagamos todos los LEDs
    out PORTD, r16  ; Enviamos el valor al puerto D
    ldi r18, 0x06   ; Seleccionamos la fila 6 (PORTB)
    out PORTB, r18  ; Enviamos el valor al puerto B
    rcall delay     ; Llamamos a la subrutina de retardo

    ; Encender LEDs 7
    ldi r16, 0xC7   ; Establecemos el patrón de LEDs para la fila 7
    out PORTD, r16  ; Enviamos el valor al puerto D
    rcall delay     ; Llamamos a la subrutina de retardo
    ldi r16, 0xFF   ; Apagamos todos los LEDs
    out PORTD, r16  ; Enviamos el valor al puerto D
    ldi r18, 0x07   ; Seleccionamos la fila 7 (PORTB)
    out PORTB, r18  ; Enviamos el valor al puerto B
    rcall delay     ; Llamamos a la subrutina de retardo

    ; Encender LEDs 0
    ldi r16, 0xEF   ; Establecemos el patrón de LEDs para la fila 0
    out PORTD, r16  ; Enviamos el valor al puerto D
    rcall delay     ; Llamamos a la subrutina de retardo
    ldi r16, 0xFF   ; Apagamos todos los LEDs
    out PORTD, r16  ; Enviamos el valor al puerto D
    ldi r18, 0x00   ; Seleccionamos la fila 0 (PORTB)
    out PORTB, r18  ; Enviamos el valor al puerto B
    rcall delay     ; Llamamos a la subrutina de retardo

    rjmp main_loop  ; Volvemos al bucle principal

delay:
    ldi r21, 0x08   ; Cargamos un valor en r21 para crear el retardo
delay_loop:
    dec r21         ; Disminuimos el valor de r21
    brne delay_loop ; Si r21 no es 0, repetimos el ciclo
    ret             ; Retornamos de la subrutina delay
