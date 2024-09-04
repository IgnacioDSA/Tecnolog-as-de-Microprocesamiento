.include "m328pdef.inc"
.org 0x00

; Configuración inicial
        ldi     r16, 0xFF      ; Configurar PORTB como salida
        out     DDRB, r16

Desplazar:
        ldi     r17, 0x01      ; Iniciar con el LED más a la izquierda (PB0)

 LoopDesplazar:
        out     PORTB, r17     ; Encender LED actual
        rcall   Delay          ; Llamar a rutina de retardo
        lsl     r17            ; Desplazar el bit a la izquierda
        brcc    LoopDesplazar  ; Si no hay acarreo, continuar
        rjmp    Desplazar      ; Repetir ciclo

deley:                         ;retardo de 1seg
      ldi r18, 21
      ldi r19, 199
L1:   dec r19
      brne L1
      dec r18
      brne L1
      ret