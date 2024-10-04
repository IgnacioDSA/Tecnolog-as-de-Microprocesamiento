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
ldi		 r19, 0xFF ; R19 SE usa para los WHILES que retardan el cambio de las letras cuando se selecciona opcion mostrar palabra en la matriz
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
ldi r17, 0xFF
out PORTD, r17
out PORTB, r17
ldi r28, 0x00 ;LOW(0x0100)
ldi r29, 0x01 ;HIGH(0x0100)
ldi r25, 0b01111111 ;cargamos el 0
ST Y+, r25
ldi r25, 0b00000000 ;cargamos el 1
ST Y+, r25
  ldi r25, 0b00111111 ;cargamos el 2
  ST Y+, r25
  ldi r25, 0b11011111 ;cargamos el 3
  ST Y+, r25
  ldi r25, 0b01011111 ;cargamos el 4
  ST Y+, r25
  ldi r25, 0b10011111 ;cargamos el 5
  ST Y+, r25
  ldi r25, 0b00011111 ;cargamos el 6
  ST Y+, r25
  ldi r25, 0b00010000 ;cargamos el 7
  ST Y+, r25
  ldi r25, 0b01010000 ;cargamos el 8
  ST Y+, r25
  ldi r25, 0b00001010 ;cargamos el 9
  ST Y+, r25              
  ldi r28, 0x00
  ldi r29, 0x02 
  ldi r25, 0b11110011 ;cargamos el 0
ST Y+, r25
ldi r25, 0b00001111 ;cargamos el 1
ST Y+, r25
  ldi r25, 0xE2 ;cargamos el 2
  ST Y+, r25
  ldi r25, 0x49 ;cargamos el 3
  ST Y+, r25
  ldi r25, 0x9e ;cargamos el 4
  ST Y+, r25
  ldi r25, 0x0F ;cargamos el 5
  ST Y+, r25
  ldi r25, 0xF0 ;cargamos el 6
  ST Y+, r25
  ldi r25, 0b00010000 ;cargamos el 7
  ST Y+, r25
  ldi r25, 0b01010000 ;cargamos el 8
  ST Y+, r25
  ldi r25, 0b00001010 ;cargamos el 9
  ST Y+, r25       ; Dejamos la lUT iniciada en su punto inicial 
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

DELAY1:
    ldi r19, 0x02
    ldi r17, 0x02
    ldi r18, 0x02
DELAY_LOOP1:
	CALL PALABRA1
    dec r18
    brne DELAY_LOOP1
	CALL PALABRA1
    dec r17
    brne DELAY_LOOP1
	CALL PALABRA1
    dec r19
    brne DELAY_LOOP1
    rjmp DELAY2             
	
;------------------------------------------------------------------------------------------------------------------- D


;MOSTRAR PALABRA EN LA MATRIZ : D
 PALABRA1:
  


 LDI R16, 0x0f
 OUT PORTD, r16
 LDI r16, 0x03
 OUT PORTB, r16
 rcall delay
    
	;LEDS 2
 LDI R16, 0x07
 OUT PORTD, r16
 LDI r16, 0x07
 OUT PORTB, r16
 rcall delay
    ; Encender LEDs 3
 LDI R16, 0x67
 OUT PORTD, r16
 LDI r16, 0x0b
 OUT PORTB, r16
 rcall delay

    ; Encender LEDs 4
 LDI R16, 0x77
 OUT PORTD, r16
 LDI r16, 0x0f
 OUT PORTB, r16
 rcall delay

    ; Encender LEDs 5
  LDI R16, 0x77
 OUT PORTD, r16
 LDI r16, 0x13
 OUT PORTB, r16
 rcall delay

    ; Encender LEDs 6
    LDI R16, 0x67
 OUT PORTD, r16
 LDI r16, 0x17
 OUT PORTB, r16
 rcall delay
    ; Encender LEDs 7
   LDI R16, 0x07
 OUT PORTD, r16
 LDI r16, 0x1b
 OUT PORTB, r16
 rcall delay

    ; Encender LEDs 0
     LDI R16, 0x0f
 OUT PORTD, r16
 LDI r16, 0x1f
 OUT PORTB, r16
 rcall delay
 ret

 DELAY2:
    ldi r19, 0x02
    ldi r17, 0x02
    ldi r18, 0x02
DELAY_LOOP2:
	CALL PALABRA2
    dec r18
    brne DELAY_LOOP2
	CALL PALABRA2
    dec r17
    brne DELAY_LOOP2
	CALL PALABRA2
    dec r19
    brne DELAY_LOOP2
    rjmp DELAY3             

	


;------------------------------------------------------------------------------------------------------------------- E


;MOSTRAR PALABRA EN LA MATRIZ : E
 PALABRA2:
  LDI R16, 0x07
 OUT PORTD, r16
 LDI r16, 0x03
 OUT PORTB, r16
 rcall delay
    
    ; Encender LEDs 2
    
 LDI R16, 0x07
 OUT PORTD, r16
 LDI r16, 0x07
 OUT PORTB, r16
 rcall delay
    ; Encender LEDs 3
 LDI R16, 0x3f
 OUT PORTD, r16
 LDI r16, 0x0b
 OUT PORTB, r16
 rcall delay

    ; Encender LEDs 4
 LDI R16, 0x0f
 OUT PORTD, r16
 LDI r16, 0x0f
 OUT PORTB, r16
 rcall delay

    ; Encender LEDs 5
  LDI R16, 0x0f
 OUT PORTD, r16
 LDI r16, 0x13
 OUT PORTB, r16
 rcall delay

    ; Encender LEDs 6
    LDI R16, 0x3f
 OUT PORTD, r16
 LDI r16, 0x17
 OUT PORTB, r16
 rcall delay
    ; Encender LEDs 7
   LDI R16, 0x07
 OUT PORTD, r16
 LDI r16, 0x1b
 OUT PORTB, r16
 rcall delay

    ; Encender LEDs 0
     LDI R16, 0x07
 OUT PORTD, r16
 LDI r16, 0x1f
 OUT PORTB, r16
 rcall delay
 
 ret

 DELAY3:
    ldi r19, 0x02
    ldi r17, 0x02
    ldi r18, 0x02
DELAY_LOOP3:
	CALL PALABRA3
    dec r18
    brne DELAY_LOOP3
	CALL PALABRA3
    dec r17
    brne DELAY_LOOP3
	CALL PALABRA3
    dec r19
    brne DELAY_LOOP3
    rjmp DELAY4             


;-------------------------------------------------------------------------------------------------------------------S



 PALABRA3:
     ; Encender LEDs 1
 LDI R16, 0x0f
 OUT PORTD, r16
 LDI r16, 0x03 
 OUT PORTB, r16
 rcall delay
    
    ; Encender LEDs 2
    
 LDI R16, 0x0f
 OUT PORTD, r16
 LDI r16, 0x07 
 OUT PORTB, r16
 rcall delay
    ; Encender LEDs 3
 LDI R16, 0x3f
 OUT PORTD, r16
 LDI r16, 0x0b
 OUT PORTB, r16
 rcall delay

    ; Encender LEDs 4
 LDI R16, 0x0f
 OUT PORTD, r16
 LDI r16, 0x0f
 OUT PORTB, r16
 rcall delay

    ; Encender LEDs 5
  LDI R16, 0x0f
 OUT PORTD, r16
 LDI r16, 0x13
 OUT PORTB, r16
 rcall delay

    ; Encender LEDs 6
    LDI R16, 0xcf
 OUT PORTD, r16
 LDI r16, 0x17
 OUT PORTB, r16
 rcall delay
    ; Encender LEDs 7
   LDI R16, 0x0f
 OUT PORTD, r16
 LDI r16, 0x1b
 OUT PORTB, r16
 rcall delay

    ; Encender LEDs 0
     LDI R16, 0x0f
 OUT PORTD, r16
 LDI r16, 0x1f
 OUT PORTB, r16
 rcall delay
 ret



;-------------------------------------------------------------------------------------------------------------------T

 DELAY4:
    ldi r19, 0x02
    ldi r17, 0x02
    ldi r18, 0x02
DELAY_LOOP4:
	CALL PALABRA4
    dec r18
    brne DELAY_LOOP4
	CALL PALABRA4
    dec r17
    brne DELAY_LOOP4
	CALL PALABRA4
    dec r19
    brne DELAY_LOOP4
    rjmp DELAY5             



 PALABRA4:
     ; Encender LEDs 1
 LDI R16, 0x07
 OUT PORTD, r16
 LDI r16, 0x02 
 OUT PORTB, r16
 rcall delay
    
    ; Encender LEDs 2
    
 LDI R16, 0x07
 OUT PORTD, r16
 LDI r16, 0x06 
 OUT PORTB, r16
 rcall delay
    ; Encender LEDs 3
 LDI R16, 0x07
 OUT PORTD, r16
 LDI r16, 0x0a
 OUT PORTB, r16
 rcall delay

    ; Encender LEDs 4
 LDI R16, 0x9F
 OUT PORTD, r16
 LDI r16, 0x0f
 OUT PORTB, r16
 rcall delay

    ; Encender LEDs 5
  LDI R16, 0x9F
 OUT PORTD, r16
 LDI r16, 0x13
 OUT PORTB, r16
 rcall delay

    ; Encender LEDs 6
    LDI R16, 0x9F
 OUT PORTD, r16
 LDI r16, 0x17
 OUT PORTB, r16
 rcall delay
    ; Encender LEDs 7
   LDI R16, 0x9F
 OUT PORTD, r16
 LDI r16, 0x1b
 OUT PORTB, r16
 rcall delay

    ; Encender LEDs 0
     LDI R16, 0x9F
 OUT PORTD, r16
 LDI r16, 0x1f
 OUT PORTB, r16
 rcall delay
 ret



;-------------------------------------------------------------------------------------------------------------------E llamada


 DELAY5:
    ldi r19, 0x02
    ldi r17, 0x02
    ldi r18, 0x02
DELAY_LOOP5:
	CALL PALABRA2
    dec r18
    brne DELAY_LOOP5
	CALL PALABRA2
    dec r17
    brne DELAY_LOOP5
	CALL PALABRA2
    dec r19
    brne DELAY_LOOP5
    rjmp DELAY6     
	
	        
;------------------------------------------------------------------------------------------------------------------- L


 DELAY6:
    ldi r19, 0x02
    ldi r17, 0x02
    ldi r18, 0x02
DELAY_LOOP6:
	CALL PALABRA6
    dec r18
    brne DELAY_LOOP6
	CALL PALABRA6
    dec r17
    brne DELAY_LOOP6
	CALL PALABRA6
    dec r19
    brne DELAY_LOOP6
    rjmp DELAY18           



;MOSTRAR PALABRA EN LA MATRIZ : L
 PALABRA6:
  LDI R16, 0x3f
 OUT PORTD, r16
 LDI r16, 0x03
 OUT PORTB, r16
 rcall delay
    
    ; Encender LEDs 2
    
 LDI R16, 0x3f
 OUT PORTD, r16
 LDI r16, 0x07
 OUT PORTB, r16
 rcall delay
    ; Encender LEDs 3
 LDI R16, 0x3f
 OUT PORTD, r16
 LDI r16, 0x0b
 OUT PORTB, r16
 rcall delay

    ; Encender LEDs 4
 LDI R16, 0x3f
 OUT PORTD, r16
 LDI r16, 0x0f
 OUT PORTB, r16
 rcall delay

    ; Encender LEDs 5
  LDI R16, 0x3f
 OUT PORTD, r16
 LDI r16, 0x13
 OUT PORTB, r16
 rcall delay

    ; Encender LEDs 6
    LDI R16, 0x3f
 OUT PORTD, r16
 LDI r16, 0x17
 OUT PORTB, r16
 rcall delay
    ; Encender LEDs 7
   LDI R16, 0x07
 OUT PORTD, r16
 LDI r16, 0x1b
 OUT PORTB, r16
 rcall delay

    ; Encender LEDs 0
     LDI R16, 0x07
 OUT PORTD, r16
 LDI r16, 0x1f
 OUT PORTB, r16
 rcall delay
 
 ret
  ;------------------------------------------------------------------------------------------------------------------- Espacio LL

   DELAY18:
    ldi r19, 0x01
    ldi r17, 0x10
    ldi r18, 0x02
DELAY_LOOP18:
	CALL PALABRA9
    dec r18
    brne DELAY_LOOP18
	CALL PALABRA9
    dec r17
    brne DELAY_LOOP18
	CALL PALABRA9
    dec r19
    brne DELAY_LOOP18
    rjmp DELAY7       

;-------------------------------------------------------------------------------------------------------------------L llamada

DELAY7:
    ldi r19, 0x02
    ldi r17, 0x02
    ldi r18, 0x02
DELAY_LOOP7:
	CALL PALABRA6
    dec r18
    brne DELAY_LOOP7
	CALL PALABRA6
    dec r17
    brne DELAY_LOOP7
	CALL PALABRA6
    dec r19
    brne DELAY_LOOP7
    rjmp DELAY8
;-------------------------------------------------------------------------------------------------------------------O
 DELAY8:
    ldi r19, 0x02
    ldi r17, 0x02
    ldi r18, 0x02
DELAY_LOOP8:
	CALL PALABRA8
    dec r18
    brne DELAY_LOOP8
	CALL PALABRA8
    dec r17
    brne DELAY_LOOP8
	CALL PALABRA8
    dec r19
    brne DELAY_LOOP8
    rjmp DELAY9



;MOSTRAR PALABRA EN LA MATRIZ : 0
 PALABRA8:
  LDI R16, 0x0f
 OUT PORTD, r16
 LDI r16, 0x03
 OUT PORTB, r16
 rcall delay
    
    ; Encender LEDs 2
    
 LDI R16, 0x07
 OUT PORTD, r16
 LDI r16, 0x06
 OUT PORTB, r16
 rcall delay
    ; Encender LEDs 3
 LDI R16, 0x67
 OUT PORTD, r16
 LDI r16, 0x0a
 OUT PORTB, r16
 rcall delay

    ; Encender LEDs 4
 LDI R16, 0xf7
 OUT PORTD, r16
 LDI r16, 0x0e
 OUT PORTB, r16
 rcall delay

    ; Encender LEDs 5
  LDI R16, 0xf7
 OUT PORTD, r16
 LDI r16, 0x12
 OUT PORTB, r16
 rcall delay

    ; Encender LEDs 6
    LDI R16, 0x67
 OUT PORTD, r16
 LDI r16, 0x16
 OUT PORTB, r16
 rcall delay
    ; Encender LEDs 7
   LDI R16, 0x07
 OUT PORTD, r16
 LDI r16, 0x1a
 OUT PORTB, r16
 rcall delay

    ; Encender LEDs 0
     LDI R16, 0x0f
 OUT PORTD, r16
 LDI r16, 0x1f
 OUT PORTB, r16
 rcall delay
 
 ret
 ;------------------------------------------------------------------------------------------------------------------- Espacio


  DELAY9:
    ldi r19, 0x02
    ldi r17, 0x02
    ldi r18, 0x02
DELAY_LOOP9:
	CALL PALABRA9
    dec r18
    brne DELAY_LOOP9
	CALL PALABRA9
    dec r17
    brne DELAY_LOOP9
	CALL PALABRA9
    dec r19
    brne DELAY_LOOP9
    rjmp DELAY10



;MOSTRAR PALABRA EN LA MATRIZ : 0
 PALABRA9:
  LDI R16, 0xFF
 OUT PORTD, r16
 LDI r16, 0x03
 OUT PORTB, r16
 rcall delay
    
    ; Encender LEDs 2
    
 LDI R16, 0xFF
 OUT PORTD, r16
 LDI r16, 0x07
 OUT PORTB, r16
 rcall delay
    ; Encender LEDs 3
 LDI R16, 0xFF
 OUT PORTD, r16
 LDI r16, 0x0b
 OUT PORTB, r16
 rcall delay

    ; Encender LEDs 4
 LDI R16, 0xFF
 OUT PORTD, r16
 LDI r16, 0x0f
 OUT PORTB, r16
 rcall delay

    ; Encender LEDs 5
  LDI R16, 0xFF
 OUT PORTD, r16
 LDI r16, 0x13
 OUT PORTB, r16
 rcall delay

    ; Encender LEDs 6
    LDI R16, 0xFF
 OUT PORTD, r16
 LDI r16, 0x17
 OUT PORTB, r16
 rcall delay
    ; Encender LEDs 7
   LDI R16, 0xFF
 OUT PORTD, r16
 LDI r16, 0x1b
 OUT PORTB, r16
 rcall delay

    ; Encender LEDs 0
     LDI R16, 0xFF
 OUT PORTD, r16
 LDI r16, 0x1f
 OUT PORTB, r16
 rcall delay
 
 ret
;-------------------------------------------------------------------------------------------------------------------D

 DELAY10:
    ldi r19, 0x02
    ldi r17, 0x02
    ldi r18, 0x02
DELAY_LOOP10:
	CALL PALABRA1
    dec r18
    brne DELAY_LOOP10
	CALL PALABRA1
    dec r17
    brne DELAY_LOOP10
	CALL PALABRA1
    dec r19
    brne DELAY_LOOP10
    rjmp DELAY11

	;-------------------------------------------------------------------------------------------------------------------E

 DELAY11:
    ldi r19, 0x02
    ldi r17, 0x02
    ldi r18, 0x02
DELAY_LOOP11:
	CALL PALABRA2
    dec r18
    brne DELAY_LOOP11
	CALL PALABRA2
    dec r17
    brne DELAY_LOOP11
	CALL PALABRA2
    dec r19
    brne DELAY_LOOP11
    rjmp DELAY12

	;-------------------------------------------------------------------------------------------------------------------espacio

 DELAY12:
    ldi r19, 0x02
    ldi r17, 0x02
    ldi r18, 0x02
DELAY_LOOP12:
	CALL PALABRA9
    dec r18
    brne DELAY_LOOP12
	CALL PALABRA9
    dec r17
    brne DELAY_LOOP12
	CALL PALABRA9
    dec r19
    brne DELAY_LOOP12
    rjmp DELAY13

	;-------------------------------------------------------------------------------------------------------------------L
	
 DELAY13:
    ldi r19, 0x02
    ldi r17, 0x02
    ldi r18, 0x02
DELAY_LOOP13:
	CALL PALABRA6
    dec r18
    brne DELAY_LOOP13
	CALL PALABRA6
    dec r17
    brne DELAY_LOOP13
	CALL PALABRA6
    dec r19
    brne DELAY_LOOP13
    rjmp DELAY14
	;-------------------------------------------------------------------------------------------------------------------E
	
 DELAY14:
    ldi r19, 0x02
    ldi r17, 0x02
    ldi r18, 0x02
DELAY_LOOP14:
	CALL PALABRA2
    dec r18
    brne DELAY_LOOP14
	CALL PALABRA2
    dec r17
    brne DELAY_LOOP14
	CALL PALABRA2
    dec r19
    brne DELAY_LOOP14
    rjmp DELAY15
	;-------------------------------------------------------------------------------------------------------------------D
	
 DELAY15:
    ldi r19, 0x02
    ldi r17, 0x02
    ldi r18, 0x02
DELAY_LOOP15:
	CALL PALABRA1
    dec r18
    brne DELAY_LOOP15
	CALL PALABRA1
    dec r17
    brne DELAY_LOOP15
	CALL PALABRA1
    dec r19
    brne DELAY_LOOP15
    rjmp DELAY16
	;-------------------------------------------------------------------------------------------------------------------s

 DELAY16:
    ldi r19, 0x02
    ldi r17, 0x02
    ldi r18, 0x02
DELAY_LOOP16:
	CALL PALABRA3
    dec r18
    brne DELAY_LOOP16
	CALL PALABRA3
    dec r17
    brne DELAY_LOOP16
	CALL PALABRA3
    dec r19
    brne DELAY_LOOP16
    rjmp DELAY17
	;-------------------------------------------------------------------------------------------------------------------espacio
	 DELAY17:
    ldi r19, 0x02
    ldi r17, 0x02
    ldi r18, 0x02
DELAY_LOOP17:
	CALL PALABRA9
    dec r18
    brne DELAY_LOOP17
	CALL PALABRA9
    dec r17
    brne DELAY_LOOP17
	CALL PALABRA9
    dec r19
    brne DELAY_LOOP17
    rjmp DELAY1
	;-------------------------------------------------------------------------------------------------------------------
	;-------------------------------------------------------------------------------------------------------------------
	;-------------------------------------------------------------------------------------------------------------------
	

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

RomboMostrar:

; Acordarse que se maneja con tres bits los valores de la posicion de las filas en la matriz, que son CBA (ver fotos del dolang), también hay que definir los 2 puntos faltantes en la matriz que no se pueden usar por la com serial. ver fotos en wpp de pq queda así de raro el rombo.

    ; Encender LEDs 1{0x9c,0x0c,0x04,0x00,0x00,0x04,0x0c,0x9c}
	;parte de coso {0x03,0x07,0x0a,0x0c,0x10,0x16,0x1b,0x1f}
 
 LDI R16, 0x9c
 OUT PORTD, r16
 LDI r16, 0x03
 OUT PORTB, r16
 rcall delay
    
    ; Encender LEDs 2
    
 LDI R16, 0x0c
 OUT PORTD, r16
 LDI r16, 0x07
 OUT PORTB, r16
 rcall delay
    ; Encender LEDs 3
 LDI R16, 0x04
 OUT PORTD, r16
 LDI r16, 0x0a
 OUT PORTB, r16
 rcall delay

    ; Encender LEDs 4
 LDI R16, 0x00
 OUT PORTD, r16
 LDI r16, 0x0c
 OUT PORTB, r16
 rcall delay

    ; Encender LEDs 5
  LDI R16, 0x00
 OUT PORTD, r16
 LDI r16, 0x10
 OUT PORTB, r16
 rcall delay

    ; Encender LEDs 6
    LDI R16, 0x04
 OUT PORTD, r16
 LDI r16, 0x16
 OUT PORTB, r16
 rcall delay
    ; Encender LEDs 7
   LDI R16, 0x0c
 OUT PORTD, r16
 LDI r16, 0x1b
 OUT PORTB, r16
 rcall delay

    ; Encender LEDs 0
     LDI R16, 0x9c
 OUT PORTD, r16
 LDI r16, 0x1f
 OUT PORTB, r16
 rcall delay
    rjmp RomboMostrar  ; Volvemos al bucle principal


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

CorazonMostrar:

;{0xfc,0x24,0x00,0x00,0x00,0x04,0x8c,0xdc} PORT D
	;{0x03,0x07,0x0a,0x0e,0x12,0x17,0x1b,0x1f} PORT B

 LDI R16, 0xfc
 OUT PORTD, r16
 LDI r16, 0x03 
 OUT PORTB, r16
 rcall delay
    
    
    
 LDI R16, 0x24
 OUT PORTD, r16
 LDI r16, 0x07 
 OUT PORTB, r16
 rcall delay
    ; Encender LEDs 3
 LDI R16, 0x00
 OUT PORTD, r16
 LDI r16, 0x0a
 OUT PORTB, r16
 rcall delay

    ; Encender LEDs 4
 LDI R16, 0x00
 OUT PORTD, r16
 LDI r16, 0x0e
 OUT PORTB, r16
 rcall delay

    ; Encender LEDs 5
  LDI R16, 0x00
 OUT PORTD, r16
 LDI r16, 0x12
 OUT PORTB, r16
 rcall delay

    ; Encender LEDs 6
    LDI R16, 0x04
 OUT PORTD, r16
 LDI r16, 0x17
 OUT PORTB, r16
 rcall delay
    ; Encender LEDs 7
   LDI R16, 0x8c
 OUT PORTD, r16
 LDI r16, 0x1b
 OUT PORTB, r16
 rcall delay

    ; Encender LEDs 0
     LDI R16, 0xdc
 OUT PORTD, r16
 LDI r16, 0x1f
 OUT PORTB, r16
 rcall delay
  
 

    rjmp CorazonMostrar  ; Volvemos al bucle principal



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

Mostrarcarafeliz:

; {0xfc,0xfc,0x6c,0x6c,0xfc,0x6c,0x9c,0xfc} portd
;{0x03,0x07,0x0b,0x0f,0x13,0x17,0x1b,0x1f} PORTB

  ; LEDS 1
 LDI R16, 0xfc
 OUT PORTD, r16
 LDI r16, 0x03
 OUT PORTB, r16
 rcall delay
    
	;LEDS 2
 LDI R16, 0x6c
 OUT PORTD, r16
 LDI r16, 0x07
 OUT PORTB, r16
 rcall delay
    ; Encender LEDs 3
 LDI R16, 0xfc
 OUT PORTD, r16
 LDI r16, 0x0b
 OUT PORTB, r16
 rcall delay

    ; Encender LEDs 4
 LDI R16, 0xfc
 OUT PORTD, r16
 LDI r16, 0x0f
 OUT PORTB, r16
 rcall delay

    ; Encender LEDs 5
  LDI R16, 0x6c
 OUT PORTD, r16
 LDI r16, 0x13
 OUT PORTB, r16
 rcall delay

    ; Encender LEDs 6
    LDI R16, 0x9c
 OUT PORTD, r16
 LDI r16, 0x17
 OUT PORTB, r16
 rcall delay
    ; Encender LEDs 7
   LDI R16, 0xfc
 OUT PORTD, r16
 LDI r16, 0x1b
 OUT PORTB, r16
 rcall delay

    ; Encender LEDs 0
     LDI R16, 0xfc
 OUT PORTD, r16
 LDI r16, 0x1f
 OUT PORTB, r16
 rcall delay
  
 


    rjmp Mostrarcarafeliz  ; Volvemos al bucle principal


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

Caratristemostrar:


; {0xfc,0xfc,0x6c,0x6c,0xfc,0x6c,0x9c,0xfc} portd
;{0x03,0x07,0x0b,0x0f,0x13,0x17,0x1b,0x1f} PORTB

  ; LEDS 1
 LDI R16, 0xfc
 OUT PORTD, r16
 LDI r16, 0x03
 OUT PORTB, r16
 rcall delay
    
	;LEDS 2
 LDI R16, 0x6c
 OUT PORTD, r16
 LDI r16, 0x07
 OUT PORTB, r16
 rcall delay
    ; Encender LEDs 3
 LDI R16, 0xfc
 OUT PORTD, r16
 LDI r16, 0x0b
 OUT PORTB, r16
 rcall delay

    ; Encender LEDs 4
 LDI R16, 0xfc
 OUT PORTD, r16
 LDI r16, 0x0f
 OUT PORTB, r16
 rcall delay

    ; Encender LEDs 5
  LDI R16, 0xfc
 OUT PORTD, r16
 LDI r16, 0x13
 OUT PORTB, r16
 rcall delay

    ; Encender LEDs 6
    LDI R16, 0x9c
 OUT PORTD, r16
 LDI r16, 0x17
 OUT PORTB, r16
 rcall delay
    ; Encender LEDs 7
   LDI R16, 0x6c
 OUT PORTD, r16
 LDI r16, 0x1b
 OUT PORTB, r16
 rcall delay

    ; Encender LEDs 0
     LDI R16, 0xfc
 OUT PORTD, r16
 LDI r16, 0x1f
 OUT PORTB, r16
 rcall delay
  
 

    rjmp Caratristemostrar  ; Volvemos al bucle principal

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

delay:
    ldi r21, 0x08   ; Cargamos un valor en r21 para crear el retardo
delay_loop:
    dec r21         ; Disminuimos el valor de r21
    brne delay_loop ; Si r21 no es 0, repetimos el ciclo
    ret             ; Retornamos de la subrutina delay







