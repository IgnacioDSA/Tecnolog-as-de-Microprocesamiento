.include "m328pdef.inc"
.ORG 0x000

ldi r17, 0xFF       ; Configuramos todos los pines del puerto D como salidas
ldi r18, 0xFF       ; Configuramos todos los pines del puerto B como salidas
OUT DDRD, r17       ; Escribimos el valor 0xFF en DDRD para configurar todos los pines de D como salidas
OUT DDRB, r18       ; Escribimos el valor 0xFF en DDRB para configurar todos los pines de B como salidas

main_loop:

    ; Encender LEDs 1
    ldi r16, 0xFF   ; 0b11111111: Todos los LEDs apagados (ya que 1 = apagado)
    out PORTD, r16  ; Enviamos el valor a PORTD para apagar todos los LEDs
    rcall delay     ; Llamamos a la subrutina delay
    ldi r16, 0xFF   ; Apagamos nuevamente todos los LEDs
    ldi r18, 0x01   ; Seleccionamos la fila 1 (configurando el puerto B)
    out PORTB, r18  ; Enviamos el valor a PORTB
    rcall delay     ; Llamamos a la subrutina delay

    ; Encender LEDs 2
    ldi r16, 0xD7   ; Configuramos los pines de PORTD para encender algunos LEDs
    out PORTD, r16  ; Enviamos el valor a PORTD
    rcall delay     ; Llamamos a la subrutina delay
    ldi r16, 0xFF   ; Apagamos todos los LEDs
    out PORTD, r16  ; Enviamos el valor a PORTD
    ldi r18, 0x02   ; Seleccionamos la fila 2 (configurando el puerto B)
    out PORTB, r18  ; Enviamos el valor a PORTB
    rcall delay     ; Llamamos a la subrutina delay

    ; Encender LEDs 3
    ldi r16, 0xD7   ; Configuramos los pines de PORTD para encender algunos LEDs
    out PORTD, r16  ; Enviamos el valor a PORTD
    rcall delay     ; Llamamos a la subrutina delay
    ldi r16, 0xFF   ; Apagamos todos los LEDs
    out PORTD, r16  ; Enviamos el valor a PORTD
    ldi r18, 0x03   ; Seleccionamos la fila 3 (configurando el puerto B)
    out PORTB, r18  ; Enviamos el valor a PORTB
    rcall delay     ; Llamamos a la subrutina delay

    ; Encender LEDs 4
    ldi r16, 0xFF   ; Apagamos todos los LEDs
    out PORTD, r16  ; Enviamos el valor a PORTD
    rcall delay     ; Llamamos a la subrutina delay
    ldi r16, 0xFF   ; Apagamos todos los LEDs
    out PORTD, r16  ; Enviamos el valor a PORTD
    ldi r18, 0x04   ; Seleccionamos la fila 4 (configurando el puerto B)
    out PORTB, r18  ; Enviamos el valor a PORTB
    rcall delay     ; Llamamos a la subrutina delay

    ; Encender LEDs 5
    ldi r16, 0xFF   ; Apagamos todos los LEDs
    out PORTD, r16  ; Enviamos el valor a PORTD
    rcall delay     ; Llamamos a la subrutina delay
    ldi r16, 0xFF   ; Apagamos todos los LEDs
    out PORTD, r16  ; Enviamos el valor a PORTD
    ldi r18, 0x05   ; Seleccionamos la fila 5 (configurando el puerto B)
    out PORTB, r18  ; Enviamos el valor a PORTB
    rcall delay     ; Llamamos a la subrutina delay

    ; Encender LEDs 6
    ldi r16, 0xC7   ; Configuramos los pines de PORTD para encender algunos LEDs
    out PORTD, r16  ; Enviamos el valor a PORTD
    rcall delay     ; Llamamos a la subrutina delay
    ldi r16, 0xFF   ; Apagamos todos los LEDs
    out PORTD, r16  ; Enviamos el valor a PORTD
    ldi r18, 0x06   ; Seleccionamos la fila 6 (configurando el puerto B)
    out PORTB, r18  ; Enviamos el valor a PORTB
    rcall delay     ; Llamamos a la subrutina delay

    ; Encender LEDs 
    ldi r16, 0xBB   ; Configuramos los pines de PORTD para encender algunos LEDs
    out PORTD, r16  ; Enviamos el valor a PORTD
    rcall delay     ; Llamamos a la subrutina delay
    ldi r16, 0xFF   ; Apagamos todos los LEDs
    out PORTD, r16  ; Enviamos el valor a PORTD
    ldi r18, 0x07   ; Seleccionamos la fila 7 (configurando el puerto B)
    out PORTB, r18  ; Enviamos el valor a PORTB
    rcall delay     ; Llamamos a la subrutina delay

   ; Encender LEDs 0
    ldi r16, 0xFF   ; Apagamos todos los LEDs
    out PORTD, r16  ; Enviamos el valor a PORTD
    rcall delay     ; Llamamos a la subrutina delay
    ldi r16, 0xFF   ; Apagamos todos los LEDs
    out PORTD, r16  ; Enviamos el valor a PORTD
    ldi r18, 0x00   ; Seleccionamos la fila 0 (configurando el puerto B)
    out PORTB, r18  ; Enviamos el valor a PORTB
    rcall delay     ; Llamamos a la subrutina delay

    rjmp main_loop  ; Volvemos al bucle principal

delay:
	ldi r21, 0x08   ; Cargamos un valor en r21 para crear el retardo
delay_loop:
	dec r21         ; Disminuimos el valor de r21
    brne delay_loop     ; Si r21 no es 0, repetimos el ciclo
	ret             ; Retornamos de la subrutina delay
