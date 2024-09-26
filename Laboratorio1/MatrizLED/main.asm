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

cpi r16, 49
brne Opcion2
rjmp Palabras ; Salta a mostrar el desplazamiento de las palabras si selecciona 1

Opcion2: 
cpi r16, 50
brne Opcion3
rjmp Rombo

Opcion3:

cpi r16, 51
brne Opcion4
rjmp Corazon

Opcion4:

cpi r16, 52
brne Opcion5
rjmp Carafeliz

Opcion5:

cpi r16, 53
brne wait
rjmp Caratriste 

rjmp wait

rjmp wait

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

rjmp wait


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




