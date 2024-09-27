;
; Lavarropas.asm
;
; Created: 24/9/2024 15:14:49
; Author : dasil
;
.include "m328pdef.inc"   ; Define device
.ORG     0x0000
RJMP     Inicio
.equ     F_CPU = 16000000
.equ     baud = 9600
.equ     bps = (F_CPU/16/baud)    ; baud rate setting

Inicio:
; Se inicializa el stack pointer
ldi      r16, HIGH(RAMEND)
out      SPH, r16
ldi      r16, LOW(RAMEND)
out      SPL, r16

ldi      r16,LOW(bps)
ldi      r17,HIGH(bps)
rcall    initUART

ldi r17, 0b11111100      ; Configuramos todos los pines del puerto D como salidas

OUT DDRD, r17       ; Aplicamos la configuración al puerto D
ldi r17, 0xFF
OUT DDRB, r17       ; Aplicamos la configuración al puerto B

; "Bienvenido a la matriz de LEDs" *enter enter*

ldi      r16,66 ; B
rcall    putc
ldi      r16,105 ; i
rcall    putc
ldi      r16,101 ; e
rcall    putc
ldi      r16, 110 ; n
rcall    putc
ldi      r16, 118 ; v
rcall    putc
ldi      r16, 101 ; e
rcall    putc 
ldi      r16, 110 ; n
rcall    putc
ldi      r16, 105 ; i 
rcall    putc
ldi      r16, 100 ; d
rcall    putc
ldi      r16, 111 ; o
rcall    putc 

ldi      r16, 32
rcall    putc
ldi      r16, 97
rcall    putc
ldi      r16, 108
rcall    putc
ldi      r16, 32  ; al
rcall    putc
ldi      r16, 112
rcall    putc
ldi      r16, 114
rcall    putc
ldi      r16, 111
rcall    putc
ldi      r16, 103
rcall    putc
ldi      r16, 114
rcall    putc
ldi      r16, 97
rcall    putc
ldi      r16, 109
rcall    putc
ldi      r16, 97
rcall    putc
ldi      r16, 32 ; programa
rcall    putc


ldi      r16, 100
rcall    putc
ldi      r16, 101
rcall    putc
ldi      r16, 32 ; de
rcall    putc
ldi      r16, 108
rcall    putc
ldi      r16, 97
rcall    putc
ldi      r16, 32  ; la
rcall    putc
ldi      r16, 109 
rcall    putc
ldi      r16, 97
rcall    putc
ldi      r16, 116 
rcall    putc
ldi      r16, 114 
rcall    putc
ldi      r16, 105 
rcall    putc


ldi      r16, 122 ; matriz 
rcall    putc

ldi      r16, 32
rcall    putc 
ldi      r16, 100 
rcall    putc
ldi      r16, 101 
rcall    putc
ldi      r16, 32
rcall    putc

ldi      r16, 76 
rcall    putc
ldi      r16, 69 
rcall    putc
ldi      r16, 68 
rcall    putc
ldi      r16, 115 
rcall    putc
ldi      r16, 10 
rcall    putc
ldi      r16, 10 ; 
rcall    putc

; Elige una de las siguientes opciones: 

ldi      r16, 69
rcall    putc
ldi      r16, 108 
rcall    putc
ldi      r16, 105 
rcall    putc
ldi      r16, 103 
rcall    putc
ldi      r16, 101 
rcall    putc
ldi      r16, 32 
rcall    putc
ldi      r16, 117 
rcall    putc
ldi      r16, 110 
rcall    putc
ldi      r16, 97 
rcall    putc
ldi      r16, 32 
rcall    putc
ldi      r16, 100
rcall    putc
ldi      r16, 101 
rcall    putc
ldi      r16, 32
rcall    putc
ldi      r16, 108 
rcall    putc
ldi      r16, 97 
rcall    putc
ldi      r16, 115 
rcall    putc
ldi      r16, 32 
rcall    putc
ldi      r16, 115 
rcall    putc
ldi      r16, 105 
rcall    putc
ldi      r16, 103 
rcall    putc
ldi      r16, 117
rcall    putc
ldi      r16, 105 
rcall    putc
ldi      r16, 101 
rcall    putc
ldi      r16, 110 
rcall    putc
ldi      r16, 116 
rcall    putc
ldi      r16, 101 
rcall    putc
ldi      r16, 115 
rcall    putc
ldi      r16, 32 
rcall    putc

ldi      r16, 111 
rcall    putc
ldi      r16, 112 
rcall    putc
ldi      r16, 99 
rcall    putc
ldi      r16, 105 
rcall    putc
ldi      r16, 111 
rcall    putc
ldi      r16, 110 
rcall    putc
ldi      r16, 101 
rcall    putc
ldi      r16, 115 
rcall    putc
ldi      r16, 58 
rcall    putc
ldi      r16, 10
rcall    putc

; 1- Desplazamiento de caracteres

ldi      r16, 49 
rcall    putc
ldi      r16, 45 
rcall    putc
ldi      r16, 32 
rcall    putc
ldi      r16, 77 
rcall    putc
ldi      r16, 111 
rcall    putc
ldi      r16, 115 
rcall    putc
ldi      r16, 116 
rcall    putc
ldi      r16, 14 
rcall    putc
ldi      r16, 97 
rcall    putc
ldi      r16,114 
rcall    putc
ldi      r16, 32 
rcall    putc
ldi      r16, 68 
rcall    putc
ldi      r16, 101 
rcall    putc
ldi      r16, 115 
rcall    putc
ldi      r16, 112 
rcall    putc
ldi      r16, 108 
rcall    putc
ldi      r16, 97 
rcall    putc
ldi      r16, 122 
rcall    putc
ldi      r16, 97 
rcall    putc
ldi      r16, 109 
rcall    putc
ldi      r16, 105 
rcall    putc
ldi      r16, 101 
rcall    putc
ldi      r16, 110 
rcall    putc
ldi      r16, 116 
rcall    putc
ldi      r16, 111 
rcall    putc
ldi      r16, 32 
rcall    putc
ldi      r16, 100 
rcall    putc
ldi      r16, 101 
rcall    putc
ldi      r16, 32 
rcall    putc
ldi      r16, 99 ; c
rcall    putc
ldi      r16, 97 ; a
rcall    putc
ldi      r16, 114 ; r
rcall    putc
ldi      r16, 97 ; a
rcall    putc

ldi      r16, 99 ; c
rcall    putc
ldi      r16, 116 ; t
rcall    putc

ldi      r16, 101 ; e
rcall    putc

ldi      r16, 114 ; r
rcall    putc

ldi      r16, 101 ; e
rcall    putc

ldi      r16, 115 ; s
rcall    putc

ldi      r16, 10 ;  \n
rcall    putc

; 2- Rombo

ldi      r16, 50
rcall    putc 
ldi      r16, 45
rcall    putc
ldi      r16, 32
rcall    putc
ldi      r16, 82
rcall    putc
ldi      r16, 111
rcall    putc
ldi      r16, 109
rcall    putc
ldi      r16, 98
rcall    putc
ldi      r16, 111
rcall    putc

ldi      r16, 32
rcall    putc

ldi      r16, 4
rcall    putc


ldi      r16, 10
rcall    putc

; 3- Corazon

ldi      r16, 51
rcall    putc
ldi      r16, 45
rcall    putc
ldi      r16, 32
rcall    putc
ldi      r16, 67
rcall    putc
ldi      r16, 111
rcall    putc
ldi      r16, 114
rcall    putc
ldi      r16, 97
rcall    putc
ldi      r16, 122
rcall    putc
ldi      r16, 111
rcall    putc
ldi      r16, 110
rcall    putc
ldi      r16, 32
rcall    putc
ldi      r16, 3
rcall    putc
ldi      r16, 10
rcall    putc

; Cara Feliz

ldi      r16, 52
rcall    putc
ldi      r16, 45
rcall    putc
ldi      r16, 32
rcall    putc
ldi      r16, 67
rcall    putc
ldi      r16, 97
rcall    putc
ldi      r16, 114
rcall    putc
ldi      r16, 97
rcall    putc
ldi      r16, 32
rcall    putc
ldi      r16, 70
rcall    putc
ldi      r16, 101
rcall    putc
ldi      r16, 108
rcall    putc
ldi      r16, 105
rcall    putc
ldi      r16, 122
rcall    putc
ldi      r16, 32
rcall    putc
ldi      r16, 2
rcall    putc
ldi      r16, 10
rcall    putc

; 5- Cara triste

ldi      r16, 53
rcall    putc
ldi      r16, 45
rcall    putc
ldi      r16, 32
rcall    putc
ldi      r16, 67
rcall    putc
ldi      r16, 97
rcall    putc
ldi      r16, 114
rcall    putc
ldi      r16, 97
rcall    putc
ldi      r16, 32
rcall    putc
ldi      r16, 84
rcall    putc
ldi      r16, 114
rcall    putc
ldi      r16, 105
rcall    putc
ldi      r16, 115
rcall    putc
ldi      r16, 116
rcall    putc
ldi      r16, 101
rcall    putc

ldi      r16, 32
rcall    putc
ldi      r16, 58
rcall    putc
ldi      r16, 40
rcall    putc



wait:
call     getc
cpi      r16, 0
breq     wait 

cpi r16, 49 ; Se tuvo que utilizar esta configuración de saltos "branch if not equal" porque si usabamos breq tiraba error por estar demasiado lejos
brne Opcion2
rjmp Palabras ; Salta a mostrar el desplazamiento de las palabras si selecciona 1

Opcion2: 
cpi r16, 50
brne Opcion3
rjmp Rombo ; Salta a mostrar el Rombo si selecciona 2 en el puerto serial

Opcion3:

cpi r16, 51
brne Opcion4
rjmp Corazon ; Salta a mostrar el Corazon si selecciona 3 en el puerto serial

Opcion4:

cpi r16, 52
brne Opcion5
rjmp Carafeliz ; Salta a mostrar la cara feliz si selecciona 4 en el puerto serial

Opcion5:

cpi r16, 53
brne wait
rjmp Caratriste  ; Salta a mostrar la cara triste si selecciona 5 en el puerto serial

rjmp wait

;rjmp wait

Palabras:

;mostrar
ldi      r16, 10
rcall    putc
ldi      r16, 77
rcall    putc
ldi      r16, 111
rcall    putc
ldi      r16, 115
rcall    putc
ldi      r16, 114
rcall    putc
ldi      r16, 97
rcall    putc
ldi      r16, 114
rcall    putc
ldi      r16, 32
rcall    putc
ldi      r16, 114
rcall    putc

;palabras

ldi      r16, 112
rcall    putc
ldi      r16, 97
rcall    putc
ldi      r16, 108
rcall    putc
ldi      r16, 97
rcall    putc
ldi      r16, 98
rcall    putc
ldi      r16, 114
rcall    putc
ldi      r16, 97
rcall    putc
ldi      r16, 115
rcall    putc
ldi      r16, 10
rcall    putc
rjmp wait

Rombo:

;mostrar
ldi      r16, 10
rcall    putc
ldi      r16, 77
rcall    putc
ldi      r16, 111
rcall    putc
ldi      r16, 115
rcall    putc
ldi      r16, 114
rcall    putc
ldi      r16, 97
rcall    putc
ldi      r16, 114
rcall    putc
ldi      r16, 32
rcall    putc

; Rombo

ldi      r16, 82
rcall    putc
ldi      r16, 111
rcall    putc
ldi      r16, 109
rcall    putc
ldi      r16, 98
rcall    putc
ldi      r16, 111
rcall    putc

ldi      r16, 10
rcall    putc

main_loop:
    ; Encender LEDs 1
ldi r16, 0x00   ; Encendemos el LED 1 y el LED 8 (resto apagado)    out PORTD, r16  ; Enviamos el valor a PORTD
    rcall delay     ; Llamamos a la subrutina delay
    ldi r16, 0xFF   ; Apagamos todos los LEDs (poner todos los pines en 1)
    ldi r18, 0b00000100   ; Seleccionamos la fila 1 (PORTB)
    out PORTB, r18  ; Enviamos el valor al puerto B
    rcall delay     ; Llamamos a la subrutina delay
    
    ; Encender LEDs 2
   ldi r16, 0xC3   ; Encendemos el LED 2
    out PORTD, r16  ; Enviamos el valor al puerto D
    rcall delay     ; Llamamos a la subrutina delay
    ldi r16, 0xFF   ; Apagamos todos los LEDs
    out PORTD, r16  ; Enviamos el valor al puerto D
    ldi r18, 0b00001000   ; Seleccionamos la fila 1 (PORTB)
    out PORTB, r18  ; Enviamos el valor al puerto B
    rcall delay     ; Llamamos a la subrutina delay
    
    ; Encender LEDs 3
   ldi r16, 0x81   ; Encendemos el LED 3 
    out PORTD, r16  ; Enviamos el valor al puerto D
    rcall delay     ; Llamamos a la subrutina delay
    ldi r16, 0xFF   ; Apagamos todos los LEDs
    out PORTD, r16  ; Enviamos el valor al puerto D
    ldi r18, 0b00001100   ; Seleccionamos la fila 1 (PORTB)
    out PORTB, r18  ; Enviamos el valor al puerto B
    rcall delay     ; Llamamos a la subrutina delay

    ; Encender LEDs 4
   ldi r16, 0x00   ; Encendemos el LED 4
    out PORTD, r16  ; Enviamos el valor al puerto D
    rcall delay     ; Llamamos a la subrutina delay
    ldi r16, 0xFF   ; Apagamos todos los LEDs
    out PORTD, r16  ; Enviamos el valor al puerto D
    ldi r18, 0b00010000   ; Seleccionamos la fila 1 (PORTB)
    out PORTB, r18  ; Enviamos el valor al puerto B
    rcall delay     ; Llamamos a la subrutina delay

    ; Encender LEDs 5
   ldi r16, 0x00  
    out PORTD, r16  ; Enviamos el valor al puerto D
    rcall delay     ; Llamamos a la subrutina delay
    ldi r16, 0xFF   ; Apagamos todos los LEDs
    out PORTD, r16  ; Enviamos el valor al puerto D
    ldi r18, 0b00010100   ; Seleccionamos la fila 1 (PORTB)
    out PORTB, r18  ; Enviamos el valor al puerto B
    rcall delay     ; Llamamos a la subrutina delay

    ; Encender LEDs 6
    ldi r16, 0x81   ; Encendemos el LED 6
    out PORTD, r16  ; Enviamos el valor al puerto D
    rcall delay     ; Llamamos a la subrutina delay
    ldi r16, 0xFF   ; Apagamos todos los LEDs
    out PORTD, r16  ; Enviamos el valor al puerto D
    ldi r18, 0b00011000   ; Seleccionamos la fila 1 (PORTB)
    out PORTB, r18  ; Enviamos el valor al puerto B
    rcall delay     ; Llamamos a la subrutina delay

    ; Encender LEDs 7
    ldi r16, 0xC3   ; Encendemos el LED 7
    out PORTD, r16  ; Enviamos el valor al puerto D
    rcall delay     ; Llamamos a la subrutina delay
    ldi r16, 0xFF   ; Apagamos todos los LEDs
    out PORTD, r16  ; Enviamos el valor al puerto D
    ldi r18, 0b00011100   ; Seleccionamos la fila 1 (PORTB)
    out PORTB, r18  ; Enviamos el valor al puerto B
    rcall delay     ; Llamamos a la subrutina delay

    ; Encender LEDs 0
    ldi r16, 0x00   ; Encendemos el LED 0 
    out PORTD, r16  ; Enviamos el valor al puerto D
    rcall delay     ; Llamamos a la subrutina delay
    ldi r16, 0xFF   ; Apagamos todos los LEDs
    out PORTD, r16  ; Enviamos el valor al puerto D
    ldi r18, 0x00   ; Seleccionamos la fila 0 (PORTB)
    out PORTB, r18  ; Enviamos el valor al puerto B
    rcall delay     ; Llamamos a la subrutina delay

    rjmp main_loop  ; Volvemos al bucle principal

delay:
    ldi r21, 0x08   ; Cargamos un valor en r21 para crear el retardo
delay_loop:
    dec r21         ; Disminuimos el valor de r21
    brne delay_loop ; Si r21 no es 0, repetimos el ciclo
    ret             ; Retornamos de la subrutina delay

Corazon:
;mostrar
ldi      r16, 10
rcall    putc
ldi      r16, 77
rcall    putc
ldi      r16, 111
rcall    putc
ldi      r16, 115
rcall    putc
ldi      r16, 114
rcall    putc
ldi      r16, 97
rcall    putc
ldi      r16, 114
rcall    putc
ldi      r16, 32
rcall    putc

;Corazon

ldi      r16, 67
rcall    putc
ldi      r16, 111
rcall    putc
ldi      r16, 114
rcall    putc
ldi      r16, 97
rcall    putc
ldi      r16, 122
rcall    putc
ldi      r16, 111
rcall    putc
ldi      r16, 110
rcall    putc
ldi      r16, 10
rcall    putc

rjmp wait

Carafeliz:

;mostrar
ldi      r16, 10
rcall    putc
ldi      r16, 77
rcall    putc
ldi      r16, 111
rcall    putc
ldi      r16, 115
rcall    putc
ldi      r16, 114
rcall    putc
ldi      r16, 97
rcall    putc
ldi      r16, 114
rcall    putc
ldi      r16, 32
rcall    putc

; Cara Feliz

ldi      r16, 67
rcall    putc
ldi      r16, 97
rcall    putc
ldi      r16, 114
rcall    putc
ldi      r16, 97
rcall    putc
ldi      r16, 32
rcall    putc
ldi      r16, 102
rcall    putc
ldi      r16, 101
rcall    putc
ldi      r16, 108
rcall    putc
ldi      r16, 105
rcall    putc
ldi      r16, 122
rcall    putc

ldi      r16, 10
rcall    putc

rjmp wait

Caratriste:

;mostrar
ldi      r16, 10
rcall    putc
ldi      r16, 77
rcall    putc
ldi      r16, 111
rcall    putc
ldi      r16, 115
rcall    putc
ldi      r16, 114
rcall    putc
ldi      r16, 97
rcall    putc
ldi      r16, 114
rcall    putc
ldi      r16, 32
rcall    putc

;Cara Triste

ldi      r16, 67
rcall    putc
ldi      r16, 97
rcall    putc
ldi      r16, 114
rcall    putc
ldi      r16, 97
rcall    putc

ldi      r16, 32
rcall    putc

ldi      r16, 116
rcall    putc
ldi      r16, 114
rcall    putc
ldi      r16, 105
rcall    putc
ldi      r16, 115
rcall    putc
ldi      r16, 116
rcall    putc
ldi      r16, 101
rcall    putc

ldi      r16, 10
rcall    putc

rjmp wait

initUART:
sts      UBRR0L,r16
sts      UBRR0H,r17
ldi      r16,(1<<RXEN0)|(1<<TXEN0)
sts      UCSR0B,r16
ret

putc:
lds      r17,UCSR0A
sbrs     r17,UDRE0
rjmp     putc
sts      UDR0,r16
ldi      r16,0
ret

getc:
lds      r17,UCSR0A
sbrs     r17,RXC0
rjmp     getc
lds      r16,UDR0
ret  




