.include "m328pdef.inc"

; Definición de bits de interrupción
.equ PCIE1 = 1     ; Bit para habilitar PCINT8-14 en PCICR
.equ PCINT8 = 0     ; Bit 0 en PCMSK1 (PC0/PCINT8) - INT1
.equ PCINT9 = 1     ; Bit 1 en PCMSK1 (PC1/PCINT9) - INT2
.equ PC4 = 4       ; Pin PC4 (Motor Control)
.equ PC5 = 5       ; Pin PC5 (Motor Control)

.org 0x0000
rjmp RESET       ; Vector de reset

.org 0x0008
rjmp PCINT1_VECT ; Vector de interrupción PCINT1 (PCINT8-14)

RESET:
    ldi r16, 0xFF  ; Set PORTB as output (LEDs)
    out DDRB, r16

    ldi r16, 0b00110000 ; Set PC4 and PC5 as output (motor control)
    out DDRC, r16

    ldi r16, 0b00000011 ; Enable pull-up resistors on PC0 and PC1
    out PORTC, r16

    ; Configurar máscaras de interrupción para PCINT8 (PC0) y PCINT9 (PC1)
    ldi r16, (1<<PCINT8) | (1<<PCINT9)
    sts PCMSK1, r16

    ; Habilitar las interrupciones de pines de cambio PCINT8-14
    ldi r16, (1<<PCIE1)
    sts PCICR, r16

    ; Limpiar las banderas de interrupción
    ldi r16, (1<<PCIF1)
    out PCIFR, r16

    ; Habilitar interrupciones globales
    sei

MAIN_LOOP:
    rjmp MAIN_LOOP

PCINT1_VECT:
    in r16, PINC

    sbrc r16, 0    ; Check PCINT8 (INT1)
    rcall TOGGLE_LEDS_ADC0

    sbrc r16, 1    ; Check PCINT9 (INT2)
    rcall TOGGLE_LEDS_ADC1

    ; Control del motor DC (Ajustar según el sentido)
    ; INT1: Clockwise
    ; INT2: Counter-clockwise

    sbrc r16, 0 ; Check INT1
    rjmp checkINT2 ; if int1 pressed, jump to checkINT2
    rjmp skipMotorControl


checkINT2:
    sbrc r16, 1 ;Check INT2
    rjmp setMotorReverse ; if int2 is pressed, set reverse
    rjmp setMotorClockwise ;if int2 is not pressed keep going clockwise

setMotorClockwise:
    ldi r17, (1<<PC4)  ;Clockwise: PC4 HIGH, PC5 LOW
    ldi r18, 0
    rjmp skipMotorControl2

setMotorReverse:
    ldi r17, (1<<PC5)  ;Counter-clockwise: PC4 LOW, PC5 HIGH
    ldi r18, 0
    rjmp skipMotorControl2


skipMotorControl:
    ldi r17, 0          ; Stop motor: PC4 LOW, PC5 LOW
    ldi r18, 0

skipMotorControl2:
    out PORTC, r17

    ; Limpiar la bandera de interrupción
    ldi r16, (1<<PCIF1)
    out PCIFR, r16

    reti


TOGGLE_LEDS_ADC0:
    in r17, PORTB
    com r17
    out PORTB, r17
    ret

TOGGLE_LEDS_ADC1:
    in r17, PORTB
    com r17
    out PORTB, r17
    ret
