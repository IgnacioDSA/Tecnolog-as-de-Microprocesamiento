.include "m328pdef.inc"
.ORG 0x000

ldi r17, 0xFF       ; Configuramos todos los pines del puerto D como salidas
ldi r18, 0xFF       ; Configuramos todos los pines del puerto B como salidas
OUT DDRD, r17       ; Aplicamos la configuración al puerto D
OUT DDRB, r18       ; Aplicamos la configuración al puerto B

loop:
rcall rombo_loop
rjmp loop

rombo_loop:
    ; Encender LEDs 1
    ldi r16, 0xE7   ; Encendemos el LED 1 y el LED 8 (resto apagado)
    out PORTD, r16  ; Enviamos el valor a PORTD
    rcall delay     ; Llamamos al delay
    ldi r16, 0xFF   ; Apagamos todos los LEDs (poner todos los pines en 1)
    ldi r18, 0x01   ; Seleccionamos la fila 1 (PORTB)
    out PORTB, r18  ; Enviamos el valor al puerto B
    rcall delay     ; Llamamos al delay

    ; Encender LEDs 2
    ldi r16, 0xC3   ; Encendemos el LED 2
    out PORTD, r16  ; Enviamos el valor al puerto D
    rcall delay     ; Llamamos al delay
    ldi r16, 0xFF   ; Apagamos todos los LEDs
    out PORTD, r16  ; Enviamos el valor al puerto D
    ldi r18, 0x02   ; Seleccionamos la fila 2 (PORTB)
    out PORTB, r18  ; Enviamos el valor al puerto B
    rcall delay     ; Llamamos al delay

    ; Encender LEDs 3
    ldi r16, 0x81   ; Encendemos el LED 3
    out PORTD, r16  ; Enviamos el valor al puerto D
    rcall delay     ; Llamamos al delay
    ldi r16, 0xFF   ; Apagamos todos los LEDs
    out PORTD, r16  ; Enviamos el valor al puerto D
    ldi r18, 0x03   ; Seleccionamos la fila 3 (PORTB)
    out PORTB, r18  ; Enviamos el valor al puerto B
    rcall delay     ; Llamamos al delay

    ; Encender LEDs 4
    ldi r16, 0x00   ; Encendemos el LED 4
    out PORTD, r16  ; Enviamos el valor al puerto D
    rcall delay     ; Llamamos al delay
    ldi r16, 0xFF   ; Apagamos todos los LEDs
    out PORTD, r16  ; Enviamos el valor al puerto D
    ldi r18, 0x04   ; Seleccionamos la fila 4 (PORTB)
    out PORTB, r18  ; Enviamos el valor al puerto B
    rcall delay     ; Llamamos al delay

    ; Encender LEDs 5
    ldi r16, 0x00   ; Encendemos el LED 5
    out PORTD, r16  ; Enviamos el valor al puerto D
    rcall delay     ; Llamamos al delay
    ldi r16, 0xFF   ; Apagamos todos los LEDs
    out PORTD, r16  ; Enviamos el valor al puerto D
    ldi r18, 0x05   ; Seleccionamos la fila 5 (PORTB)
    out PORTB, r18  ; Enviamos el valor al puerto B
    rcall delay     ; Llamamos al delay

    ; Encender LEDs 6
    ldi r16, 0x81   ; Encendemos el LED 6
    out PORTD, r16  ; Enviamos el valor al puerto D
    rcall delay     ; Llamamos al delay
    ldi r16, 0xFF   ; Apagamos todos los LEDs
    out PORTD, r16  ; Enviamos el valor al puerto D
    ldi r18, 0x06   ; Seleccionamos la fila 6 (PORTB)
    out PORTB, r18  ; Enviamos el valor al puerto B
    rcall delay     ; Llamamos al delay

    ; Encender LEDs 7
    ldi r16, 0xC3   ; Encendemos el LED 7
    out PORTD, r16  ; Enviamos el valor al puerto D
    rcall delay     ; Llamamos al delay
    ldi r16, 0xFF   ; Apagamos todos los LEDs
    out PORTD, r16  ; Enviamos el valor al puerto D
    ldi r18, 0x07   ; Seleccionamos la fila 7 (PORTB)
    out PORTB, r18  ; Enviamos el valor al puerto B
    rcall delay     ; Llamamos al delay

    ; Encender LEDs 0
    ldi r16, 0xE7   ; Encendemos el LED 0
    out PORTD, r16  ; Enviamos el valor al puerto D
    rcall delay     ; Llamamos al delay
    ldi r16, 0xFF   ; Apagamos todos los LEDs
    out PORTD, r16  ; Enviamos el valor al puerto D
    ldi r18, 0x00   ; Seleccionamos la fila 0 (PORTB)
    out PORTB, r18  ; Enviamos el valor al puerto B
    rcall delay     ; Llamamos al delay

    rjmp rombo_loop  ; Volvemos al bucle principal

tristeza_loop:

    ; Encender LEDs 1
    ldi r16, 0xFF   ; 0b11111111: Todos los LEDs apagados (ya que 1 = apagado)
    out PORTD, r16  ; Enviamos el valor a PORTD para apagar todos los LEDs
    rcall delay     ; Llamamos al delay
    ldi r16, 0xFF   ; Apagamos nuevamente todos los LEDs
    ldi r18, 0x01   ; Seleccionamos la fila 1 (configurando el puerto B)
    out PORTB, r18  ; Enviamos el valor a PORTB
    rcall delay     ; Llamamos al delay

    ; Encender LEDs 2
    ldi r16, 0xD7   ; Configuramos los pines de PORTD para encender algunos LEDs
    out PORTD, r16  ; Enviamos el valor a PORTD
    rcall delay     ; Llamamos al delay
    ldi r16, 0xFF   ; Apagamos todos los LEDs
    out PORTD, r16  ; Enviamos el valor a PORTD
    ldi r18, 0x02   ; Seleccionamos la fila 2 (configurando el puerto B)
    out PORTB, r18  ; Enviamos el valor a PORTB
    rcall delay     ; Llamamos al delay

    ; Encender LEDs 3
    ldi r16, 0xD7   ; Configuramos los pines de PORTD para encender algunos LEDs
    out PORTD, r16  ; Enviamos el valor a PORTD
    rcall delay     ; Llamamos al delay
    ldi r16, 0xFF   ; Apagamos todos los LEDs
    out PORTD, r16  ; Enviamos el valor a PORTD
    ldi r18, 0x03   ; Seleccionamos la fila 3 (configurando el puerto B)
    out PORTB, r18  ; Enviamos el valor a PORTB
    rcall delay     ; Llamamos al delay

    ; Encender LEDs 4
    ldi r16, 0xFF   ; Apagamos todos los LEDs
    out PORTD, r16  ; Enviamos el valor a PORTD
    rcall delay     ; Llamamos al delay
    ldi r16, 0xFF   ; Apagamos todos los LEDs
    out PORTD, r16  ; Enviamos el valor a PORTD
    ldi r18, 0x04   ; Seleccionamos la fila 4 (configurando el puerto B)
    out PORTB, r18  ; Enviamos el valor a PORTB
    rcall delay     ; Llamamos al delay

    ; Encender LEDs 5
    ldi r16, 0xFF   ; Apagamos todos los LEDs
    out PORTD, r16  ; Enviamos el valor a PORTD
    rcall delay     ; Llamamos al delay
    ldi r16, 0xFF   ; Apagamos todos los LEDs
    out PORTD, r16  ; Enviamos el valor a PORTD
    ldi r18, 0x05   ; Seleccionamos la fila 5 (configurando el puerto B)
    out PORTB, r18  ; Enviamos el valor a PORTB
    rcall delay     ; Llamamos al delay

    ; Encender LEDs 6
    ldi r16, 0xC7   ; Configuramos los pines de PORTD para encender algunos LEDs
    out PORTD, r16  ; Enviamos el valor a PORTD
    rcall delay     ; Llamamos al delay
    ldi r16, 0xFF   ; Apagamos todos los LEDs
    out PORTD, r16  ; Enviamos el valor a PORTD
    ldi r18, 0x06   ; Seleccionamos la fila 6 (configurando el puerto B)
    out PORTB, r18  ; Enviamos el valor a PORTB
    rcall delay     ; Llamamos al delay

    ; Encender LEDs
    ldi r16, 0xBB   ; Configuramos los pines de PORTD para encender algunos LEDs
    out PORTD, r16  ; Enviamos el valor a PORTD
    rcall delay     ; Llamamos al delay
    ldi r16, 0xFF   ; Apagamos todos los LEDs
    out PORTD, r16  ; Enviamos el valor a PORTD
    ldi r18, 0x07   ; Seleccionamos la fila 7 (configurando el puerto B)
    out PORTB, r18  ; Enviamos el valor a PORTB
    rcall delay     ; Llamamos al delay

   ; Encender LEDs 0
    ldi r16, 0xFF   ; Apagamos todos los LEDs
    out PORTD, r16  ; Enviamos el valor a PORTD
    rcall delay     ; Llamamos al delay
    ldi r16, 0xFF   ; Apagamos todos los LEDs
    out PORTD, r16  ; Enviamos el valor a PORTD
    ldi r18, 0x00   ; Seleccionamos la fila 0 (configurando el puerto B)
    out PORTB, r18  ; Enviamos el valor a PORTB
    rcall delay     ; Llamamos al delay

    rjmp tristeza_loop  ; Volvemos al bucle principal



feliz_loop:
    ; Encender LEDs 1 (bajar los pines correspondientes)
    ldi r16, 0xFF       ; Apagamos todos los LEDs (poniendo todos los pines en 1)
    out PORTD, r16      ; Enviamos el valor a PORTD
    rcall delay         ; Llamamos al delay
    ldi r18, 0x01       ; Seleccionamos la fila 1
    out PORTB, r18      ; Enviamos el valor a PORTB
    rcall delay         ; Llamamos al delay

    ; Encender LEDs 2
    ldi r16, 0xD7       ; Encendemos ciertos LEDs en PORTD
    out PORTD, r16      ; Enviamos el valor a PORTD
    rcall delay         ; Llamamos al delay
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    ldi r18, 0x02       ; Seleccionamos la fila 2
    out PORTB, r18      ; Enviamos el valor a PORTB
    rcall delay         ; Llamamos al delay

    ; Encender LEDs 3
    ldi r16, 0xD7       ; Encendemos ciertos LEDs en PORTD (mismo patrón que LED 2)
    out PORTD, r16      ; Enviamos el valor a PORTD
    rcall delay         ; Llamamos al delay
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    ldi r18, 0x03       ; Seleccionamos la fila 3
    out PORTB, r18      ; Enviamos el valor a PORTB
    rcall delay         ; Llamamos al delay

    ; Encender LEDs 4
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    rcall delay         ; Llamamos al delay
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    ldi r18, 0x04       ; Seleccionamos la fila 4
    out PORTB, r18      ; Enviamos el valor a PORTB
    rcall delay         ; Llamamos al delay

    ; Encender LEDs 5
    ldi r16, 0xBB       ; Encendemos ciertos LEDs en PORTD
    out PORTD, r16      ; Enviamos el valor a PORTD
    rcall delay         ; Llamamos al delay
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    ldi r18, 0x05       ; Seleccionamos la fila 5
    out PORTB, r18      ; Enviamos el valor a PORTB
    rcall delay         ; Llamamos al delay

    ; Encender LEDs 6
    ldi r16, 0xC7       ; Encendemos ciertos LEDs en PORTD
    out PORTD, r16      ; Enviamos el valor a PORTD
    rcall delay         ; Llamamos al delay
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    ldi r18, 0x06       ; Seleccionamos la fila 6
    out PORTB, r18      ; Enviamos el valor a PORTB
    rcall delay         ; Llamamos al delay

    ; Encender LEDs 7
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    rcall delay         ; Llamamos al delay
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    ldi r18, 0x07       ; Seleccionamos la fila 7
    out PORTB, r18      ; Enviamos el valor a PORTB
    rcall delay         ; Llamamos al delay

    ;Encender LEDs 0
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    rcall delay         ; Llamamos al delay
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    ldi r18, 0x00       ; Seleccionamos la fila 0
    out PORTB, r18      ; Enviamos el valor a PORTB
    rcall delay         ; Llamamos al delay

    rjmp feliz_loop      ; Volvemos al bucle principal


delay:
    ldi r21, 0x08   ; Cargamos un valor en r21 para crear el retardo
delay_loop:
    dec r21         ; Disminuimos el valor de r21
    brne delay_loop ; Si r21 no es 0, repetimos el ciclo
    ret             ; Retornamos de la subrutina delay
;_______________________________________________________________________________________________________________________

;H

H_loop:
    ; Fila 0 - LED
    ldi r16, 0x99       ; Cargamos el patrón 10011001
    out PORTD, r16      ; Enviamos el valor a PORTD
    rcall delay         ; Llamamos al delay
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    ldi r18, 0x01       ; Seleccionamos la fila 1
    out PORTB, r18      ; Enviamos el valor a PORTB
    rcall delay         ; Llamamos al delay

    ; Fila 1 - LED
    ldi r16, 0x99       ; Cargamos el patrón 10011001
    out PORTD, r16      ; Enviamos el valor a PORTD
    rcall delay         ; Llamamos al delay
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    ldi r18, 0x02       ; Seleccionamos la fila 2
    out PORTB, r18      ; Enviamos el valor a PORTB
    rcall delay         ; Llamamos al delay

    ; Fila 2 - LED
    ldi r16, 0x99       ; Cargamos el patrón 10011001
    out PORTD, r16      ; Enviamos el valor a PORTD
    rcall delay         ; Llamamos al delay
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    ldi r18, 0x03       ; Seleccionamos la fila 3
    out PORTB, r18      ; Enviamos el valor a PORTB
    rcall delay         ; Llamamos al delay

    ; Fila 3 - LED
    ldi r16, 0x81       ; Cargamos el patrón 10000001
    out PORTD, r16      ; Enviamos el valor a PORTD
    rcall delay         ; Llamamos al delay
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    ldi r18, 0x04       ; Seleccionamos la fila 4
    out PORTB, r18      ; Enviamos el valor a PORTB
    rcall delay         ; Llamamos al delay

    ; Fila 4 - LED
    ldi r16, 0x81       ; Cargamos el patrón 10000001
    out PORTD, r16      ; Enviamos el valor a PORTD
    rcall delay         ; Llamamos al delay
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    ldi r18, 0x05       ; Seleccionamos la fila 5
    out PORTB, r18      ; Enviamos el valor a PORTB
    rcall delay         ; Llamamos al delay

    ; Fila 5 - LED
    ldi r16, 0x99       ; Cargamos el patrón 10011001
    out PORTD, r16      ; Enviamos el valor a PORTD
    rcall delay         ; Llamamos al delay
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    ldi r18, 0x06       ; Seleccionamos la fila 6
    out PORTB, r18      ; Enviamos el valor a PORTB
    rcall delay         ; Llamamos al delay

    ; Fila 6 - LED
    ldi r16, 0x99       ; Cargamos el patrón 10011001
    out PORTD, r16      ; Enviamos el valor a PORTD
    rcall delay         ; Llamamos al delay
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    ldi r18, 0x07       ; Seleccionamos la fila 7
    out PORTB, r18      ; Enviamos el valor a PORTB
    rcall delay         ; Llamamos al delay

    ; Fila 7 - LED
    ldi r16, 0x99       ; Cargamos el patrón 10011001
    out PORTD, r16      ; Enviamos el valor a PORTD
    rcall delay         ; Llamamos al delay
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    ldi r18, 0x00       ; Seleccionamos la fila 0
    out PORTB, r18      ; Enviamos el valor a PORTB
    rcall delay         ; Llamamos al delay

    rjmp H_loop      ; Volvemos al bucle principal

;_______________________________________________________________________________________________________________________

;O

O_loop:
    ; Fila 0 - LED
    ldi r16, 0xC3       ; Cargamos el patrón 11000011
    out PORTD, r16      ; Enviamos el valor a PORTD
    rcall delay         ; Llamamos al delay
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    ldi r18, 0x01       ; Seleccionamos la fila 1
    out PORTB, r18      ; Enviamos el valor a PORTB
    rcall delay         ; Llamamos al delay

    ; Fila 1 - LED
    ldi r16, 0x81       ; Cargamos el patrón 10000001
    out PORTD, r16      ; Enviamos el valor a PORTD
    rcall delay         ; Llamamos al delay
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    ldi r18, 0x02       ; Seleccionamos la fila 2
    out PORTB, r18      ; Enviamos el valor a PORTB
    rcall delay         ; Llamamos al delay

    ; Fila 2 - LED
    ldi r16, 0x18       ; Cargamos el patrón 00011000
    out PORTD, r16      ; Enviamos el valor a PORTD
    rcall delay         ; Llamamos al delay
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    ldi r18, 0x03       ; Seleccionamos la fila 3
    out PORTB, r18      ; Enviamos el valor a PORTB
    rcall delay         ; Llamamos al delay

    ; Fila 3 - LED
    ldi r16, 0x3C       ; Cargamos el patrón 00111100
    out PORTD, r16      ; Enviamos el valor a PORTD
    rcall delay         ; Llamamos al delay
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    ldi r18, 0x04       ; Seleccionamos la fila 4
    out PORTB, r18      ; Enviamos el valor a PORTB
    rcall delay         ; Llamamos al delay

    ; Fila 4 - LED
    ldi r16, 0x3C       ; Cargamos el patrón 00111100
    out PORTD, r16      ; Enviamos el valor a PORTD
    rcall delay         ; Llamamos al delay
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    ldi r18, 0x05       ; Seleccionamos la fila 5
    out PORTB, r18      ; Enviamos el valor a PORTB
    rcall delay         ; Llamamos al delay

    ; Fila 5 - LED
    ldi r16, 0x18       ; Cargamos el patrón 00011000
    out PORTD, r16      ; Enviamos el valor a PORTD
    rcall delay         ; Llamamos al delay
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    ldi r18, 0x06       ; Seleccionamos la fila 6
    out PORTB, r18      ; Enviamos el valor a PORTB
    rcall delay         ; Llamamos al delay

    ; Fila 6 - LED
    ldi r16, 0x81       ; Cargamos el patrón 10000001
    out PORTD, r16      ; Enviamos el valor a PORTD
    rcall delay         ; Llamamos al delay
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    ldi r18, 0x07       ; Seleccionamos la fila 7
    out PORTB, r18      ; Enviamos el valor a PORTB
    rcall delay         ; Llamamos al delay

    ; Fila 7 - LED
    ldi r16, 0xC3       ; Cargamos el patrón 11000011
    out PORTD, r16      ; Enviamos el valor a PORTD
    rcall delay         ; Llamamos al delay
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    ldi r18, 0x00       ; Seleccionamos la fila 0
    out PORTB, r18      ; Enviamos el valor a PORTB
    rcall delay         ; Llamamos al delay

    rjmp O_loop      ; Volvemos al bucle principal
;_______________________________________________________________________________________________________________________

;L

L_loop:
    ; Fila 0 - LED
    ldi r16, 0xCF       ; Cargamos el patrón 11001111
    out PORTD, r16      ; Enviamos el valor a PORTD
    rcall delay         ; Llamamos al delay
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    ldi r18, 0x01       ; Seleccionamos la fila 1
    out PORTB, r18      ; Enviamos el valor a PORTB
    rcall delay         ; Llamamos al delay

    ; Fila 1 - LED
    ldi r16, 0xCF       ; Cargamos el patrón 11001111
    out PORTD, r16      ; Enviamos el valor a PORTD
    rcall delay         ; Llamamos al delay
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    ldi r18, 0x02       ; Seleccionamos la fila 2
    out PORTB, r18      ; Enviamos el valor a PORTB
    rcall delay         ; Llamamos al delay

    ; Fila 2 - LED
    ldi r16, 0xCF       ; Cargamos el patrón 11001111
    out PORTD, r16      ; Enviamos el valor a PORTD
    rcall delay         ; Llamamos al delay
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    ldi r18, 0x03       ; Seleccionamos la fila 3
    out PORTB, r18      ; Enviamos el valor a PORTB
    rcall delay         ; Llamamos al delay

    ; Fila 3 - LED
    ldi r16, 0xCF       ; Cargamos el patrón 11001111
    out PORTD, r16      ; Enviamos el valor a PORTD
    rcall delay         ; Llamamos al delay
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    ldi r18, 0x04       ; Seleccionamos la fila 4
    out PORTB, r18      ; Enviamos el valor a PORTB
    rcall delay         ; Llamamos al delay

    ; Fila 4 - LED
    ldi r16, 0xCF       ; Cargamos el patrón 11001111
    out PORTD, r16      ; Enviamos el valor a PORTD
    rcall delay         ; Llamamos al delay
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    ldi r18, 0x05       ; Seleccionamos la fila 5
    out PORTB, r18      ; Enviamos el valor a PORTB
    rcall delay         ; Llamamos al delay

    ; Fila 5 - LED
    ldi r16, 0xCF       ; Cargamos el patrón 11001111
    out PORTD, r16      ; Enviamos el valor a PORTD
    rcall delay         ; Llamamos al delay
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    ldi r18, 0x06       ; Seleccionamos la fila 6
    out PORTB, r18      ; Enviamos el valor a PORTB
    rcall delay         ; Llamamos al delay

    ; Fila 6 - LED
    ldi r16, 0xC1       ; Cargamos el patrón 11000001
    out PORTD, r16      ; Enviamos el valor a PORTD
    rcall delay         ; Llamamos al delay
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    ldi r18, 0x07       ; Seleccionamos la fila 7
    out PORTB, r18      ; Enviamos el valor a PORTB
    rcall delay         ; Llamamos al delay

    ; Fila 7 - LED
    ldi r16, 0xC1       ; Cargamos el patrón 11000001
    out PORTD, r16      ; Enviamos el valor a PORTD
    rcall delay         ; Llamamos al delay
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    ldi r18, 0x00       ; Seleccionamos la fila 0
    out PORTB, r18      ; Enviamos el valor a PORTB
    rcall delay         ; Llamamos al delay

    rjmp H_loop      ; Volvemos al bucle principal
;_______________________________________________________________________________________________________________________

;A

A_loop:
    ; Fila 0 - LED
    ldi r16, 0xC3       ; Cargamos el patrón 11000011
    out PORTD, r16      ; Enviamos el valor a PORTD
    rcall delay         ; Llamamos al delay
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    ldi r18, 0x01       ; Seleccionamos la fila 1
    out PORTB, r18      ; Enviamos el valor a PORTB
    rcall delay         ; Llamamos al delay

    ; Fila 1 - LED
    ldi r16, 0x81       ; Cargamos el patrón 10000001
    out PORTD, r16      ; Enviamos el valor a PORTD
    rcall delay         ; Llamamos al delay
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    ldi r18, 0x02       ; Seleccionamos la fila 2
    out PORTB, r18      ; Enviamos el valor a PORTB
    rcall delay         ; Llamamos al delay

    ; Fila 2 - LED
    ldi r16, 0x99       ; Cargamos el patrón 10011001
    out PORTD, r16      ; Enviamos el valor a PORTD
    rcall delay         ; Llamamos al delay
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    ldi r18, 0x03       ; Seleccionamos la fila 3
    out PORTB, r18      ; Enviamos el valor a PORTB
    rcall delay         ; Llamamos al delay

    ; Fila 3 - LED
    ldi r16, 0x99       ; Cargamos el patrón 10011001
    out PORTD, r16      ; Enviamos el valor a PORTD
    rcall delay         ; Llamamos al delay
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    ldi r18, 0x04       ; Seleccionamos la fila 4
    out PORTB, r18      ; Enviamos el valor a PORTB
    rcall delay         ; Llamamos al delay

    ; Fila 4 - LED
    ldi r16, 0x81       ; Cargamos el patrón 10000001
    out PORTD, r16      ; Enviamos el valor a PORTD
    rcall delay         ; Llamamos al delay
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    ldi r18, 0x05       ; Seleccionamos la fila 5
    out PORTB, r18      ; Enviamos el valor a PORTB
    rcall delay         ; Llamamos al delay

    ; Fila 5 - LED
    ldi r16, 0x99       ; Cargamos el patrón 10011001
    out PORTD, r16      ; Enviamos el valor a PORTD
    rcall delay         ; Llamamos al delay
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    ldi r18, 0x06       ; Seleccionamos la fila 6
    out PORTB, r18      ; Enviamos el valor a PORTB
    rcall delay         ; Llamamos al delay

    ; Fila 6 - LED
    ldi r16, 0x99       ; Cargamos el patrón 10011001
    out PORTD, r16      ; Enviamos el valor a PORTD
    rcall delay         ; Llamamos al delay
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    ldi r18, 0x07       ; Seleccionamos la fila 7
    out PORTB, r18      ; Enviamos el valor a PORTB
    rcall delay         ; Llamamos al delay

    ; Fila 7 - LED
    ldi r16, 0x99       ; Cargamos el patrón 10011001
    out PORTD, r16      ; Enviamos el valor a PORTD
    rcall delay         ; Llamamos al delay
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    ldi r18, 0x00       ; Seleccionamos la fila 0
    out PORTB, r18      ; Enviamos el valor a PORTB
    rcall delay         ; Llamamos al delay

    rjmp A_loop      ; Volvemos al bucle principal
;_______________________________________________________________________________________________________________________

;coma ,

coma_loop:
    ; Fila 0 - LED
    ldi r16, 0xFF       ; Cargamos el patrón 11111111
    out PORTD, r16      ; Enviamos el valor a PORTD
    rcall delay         ; Llamamos al delay
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    ldi r18, 0x01       ; Seleccionamos la fila 1
    out PORTB, r18      ; Enviamos el valor a PORTB
    rcall delay         ; Llamamos al delay

    ; Fila 1 - LED
    ldi r16, 0xFF       ; Cargamos el patrón 11111111
    out PORTD, r16      ; Enviamos el valor a PORTD
    rcall delay         ; Llamamos al delay
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    ldi r18, 0x02       ; Seleccionamos la fila 2
    out PORTB, r18      ; Enviamos el valor a PORTB
    rcall delay         ; Llamamos al delay

    ; Fila 2 - LED
    ldi r16, 0xFF       ; Cargamos el patrón 11111111
    out PORTD, r16      ; Enviamos el valor a PORTD
    rcall delay         ; Llamamos al delay
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    ldi r18, 0x03       ; Seleccionamos la fila 3
    out PORTB, r18      ; Enviamos el valor a PORTB
    rcall delay         ; Llamamos al delay

    ; Fila 3 - LED
    ldi r16, 0xFF       ; Cargamos el patrón 11111111
    out PORTD, r16      ; Enviamos el valor a PORTD
    rcall delay         ; Llamamos al delay
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    ldi r18, 0x04       ; Seleccionamos la fila 4
    out PORTB, r18      ; Enviamos el valor a PORTB
    rcall delay         ; Llamamos al delay

    ; Fila 4 - LED
    ldi r16, 0xFF       ; Cargamos el patrón 11111111
    out PORTD, r16      ; Enviamos el valor a PORTD
    rcall delay         ; Llamamos al delay
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    ldi r18, 0x05       ; Seleccionamos la fila 5
    out PORTB, r18      ; Enviamos el valor a PORTB
    rcall delay         ; Llamamos al delay

    ; Fila 5 - LED
    ldi r16, 0xFF       ; Cargamos el patrón 11111111
    out PORTD, r16      ; Enviamos el valor a PORTD
    rcall delay         ; Llamamos al delay
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    ldi r18, 0x06       ; Seleccionamos la fila 6
    out PORTB, r18      ; Enviamos el valor a PORTB
    rcall delay         ; Llamamos al delay

    ; Fila 6 - LED
    ldi r16, 0xBF       ; Cargamos el patrón 10111111
    out PORTD, r16      ; Enviamos el valor a PORTD
    rcall delay         ; Llamamos al delay
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    ldi r18, 0x07       ; Seleccionamos la fila 7
    out PORTB, r18      ; Enviamos el valor a PORTB
    rcall delay         ; Llamamos al delay

    ; Fila 7 - LED
    ldi r16, 0x7F       ; Cargamos el patrón 01111111
    out PORTD, r16      ; Enviamos el valor a PORTD
    rcall delay         ; Llamamos al delay
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    ldi r18, 0x00       ; Seleccionamos la fila 0
    out PORTB, r18      ; Enviamos el valor a PORTB
    rcall delay         ; Llamamos al delay

    rjmp coma_loop         ; Volvemos al bucle principal
;_______________________________________________________________________________________________________________________

;espacio

espacio_loop:
    ; Fila 0 - LED
    ldi r16, 0xFF       ; Cargamos el patrón 11111111
    out PORTD, r16      ; Enviamos el valor a PORTD
    rcall delay         ; Llamamos al delay
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    ldi r18, 0x01       ; Seleccionamos la fila 1
    out PORTB, r18      ; Enviamos el valor a PORTB
    rcall delay         ; Llamamos al delay

    ; Fila 1 - LED
    ldi r16, 0xFF       ; Cargamos el patrón 11111111
    out PORTD, r16      ; Enviamos el valor a PORTD
    rcall delay         ; Llamamos al delay
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    ldi r18, 0x02       ; Seleccionamos la fila 2
    out PORTB, r18      ; Enviamos el valor a PORTB
    rcall delay         ; Llamamos al delay

    ; Fila 2 - LED
    ldi r16, 0xFF       ; Cargamos el patrón 11111111
    out PORTD, r16      ; Enviamos el valor a PORTD
    rcall delay         ; Llamamos al delay
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    ldi r18, 0x03       ; Seleccionamos la fila 3
    out PORTB, r18      ; Enviamos el valor a PORTB
    rcall delay         ; Llamamos al delay

    ; Fila 3 - LED
    ldi r16, 0xFF       ; Cargamos el patrón 11111111
    out PORTD, r16      ; Enviamos el valor a PORTD
    rcall delay         ; Llamamos al delay
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    ldi r18, 0x04       ; Seleccionamos la fila 4
    out PORTB, r18      ; Enviamos el valor a PORTB
    rcall delay         ; Llamamos al delay

    ; Fila 4 - LED
    ldi r16, 0xFF       ; Cargamos el patrón 11111111
    out PORTD, r16      ; Enviamos el valor a PORTD
    rcall delay         ; Llamamos al delay
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    ldi r18, 0x05       ; Seleccionamos la fila 5
    out PORTB, r18      ; Enviamos el valor a PORTB
    rcall delay         ; Llamamos al delay

    ; Fila 5 - LED
    ldi r16, 0xFF       ; Cargamos el patrón 11111111
    out PORTD, r16      ; Enviamos el valor a PORTD
    rcall delay         ; Llamamos al delay
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    ldi r18, 0x06       ; Seleccionamos la fila 6
    out PORTB, r18      ; Enviamos el valor a PORTB
    rcall delay         ; Llamamos al delay

    ; Fila 6 - LED
    ldi r16, 0xFF       ; Cargamos el patrón 11111111
    out PORTD, r16      ; Enviamos el valor a PORTD
    rcall delay         ; Llamamos al delay
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    ldi r18, 0x07       ; Seleccionamos la fila 7
    out PORTB, r18      ; Enviamos el valor a PORTB
    rcall delay         ; Llamamos al delay

    ; Fila 7 - LED
    ldi r16, 0xFF       ; Cargamos el patrón 11111111
    out PORTD, r16      ; Enviamos el valor a PORTD
    rcall delay         ; Llamamos al delay
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    ldi r18, 0x00       ; Seleccionamos la fila 0
    out PORTB, r18      ; Enviamos el valor a PORTB
    rcall delay         ; Llamamos al delay

    rjmp espacio_loop         ; Volvemos al bucle principal

;_______________________________________________________________________________________________________________________

;E

E_loop:
    ; Fila 0 - LED
    ldi r16, 0xC1       ; Cargamos el patrón 11000001
    out PORTD, r16      ; Enviamos el valor a PORTD
    rcall delay         ; Llamamos al delay
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    ldi r18, 0x01       ; Seleccionamos la fila 1
    out PORTB, r18      ; Enviamos el valor a PORTB
    rcall delay         ; Llamamos al delay

    ; Fila 1 - LED
    ldi r16, 0xC1       ; Cargamos el patrón 11000001
    out PORTD, r16      ; Enviamos el valor a PORTD
    rcall delay         ; Llamamos al delay
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    ldi r18, 0x02       ; Seleccionamos la fila 2
    out PORTB, r18      ; Enviamos el valor a PORTB
    rcall delay         ; Llamamos al delay

    ; Fila 2 - LED
    ldi r16, 0xCF       ; Cargamos el patrón 11001111
    out PORTD, r16      ; Enviamos el valor a PORTD
    rcall delay         ; Llamamos al delay
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    ldi r18, 0x03       ; Seleccionamos la fila 3
    out PORTB, r18      ; Enviamos el valor a PORTB
    rcall delay         ; Llamamos al delay

    ; Fila 3 - LED
    ldi r16, 0xC3       ; Cargamos el patrón 11000011
    out PORTD, r16      ; Enviamos el valor a PORTD
    rcall delay         ; Llamamos al delay
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    ldi r18, 0x04       ; Seleccionamos la fila 4
    out PORTB, r18      ; Enviamos el valor a PORTB
    rcall delay         ; Llamamos al delay

    ; Fila 4 - LED
    ldi r16, 0xC3       ; Cargamos el patrón 11000011
    out PORTD, r16      ; Enviamos el valor a PORTD
    rcall delay         ; Llamamos al delay
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    ldi r18, 0x05       ; Seleccionamos la fila 5
    out PORTB, r18      ; Enviamos el valor a PORTB
    rcall delay         ; Llamamos al delay

    ; Fila 5 - LED
    ldi r16, 0xCF       ; Cargamos el patrón 11001111
    out PORTD, r16      ; Enviamos el valor a PORTD
    rcall delay         ; Llamamos al delay
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    ldi r18, 0x06       ; Seleccionamos la fila 6
    out PORTB, r18      ; Enviamos el valor a PORTB
    rcall delay         ; Llamamos al delay

    ; Fila 6 - LED
    ldi r16, 0xC1       ; Cargamos el patrón 11000001
    out PORTD, r16      ; Enviamos el valor a PORTD
    rcall delay         ; Llamamos al delay
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    ldi r18, 0x07       ; Seleccionamos la fila 7
    out PORTB, r18      ; Enviamos el valor a PORTB
    rcall delay         ; Llamamos al delay

    ; Fila 7 - LED
    ldi r16, 0xC1       ; Cargamos el patrón 11000001
    out PORTD, r16      ; Enviamos el valor a PORTD
    rcall delay         ; Llamamos al delay
    ldi r16, 0xFF       ; Apagamos todos los LEDs
    out PORTD, r16      ; Enviamos el valor a PORTD
    ldi r18, 0x00       ; Seleccionamos la fila 0
    out PORTB, r18      ; Enviamos el valor a PORTB
    rcall delay         ; Llamamos al delay

    rjmp E_loop         ; Volvemos al bucle principal
