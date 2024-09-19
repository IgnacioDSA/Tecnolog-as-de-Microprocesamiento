.include "m328pdef.inc"
.org 0x0000
ldi r16, 0x01       ; Define el bit posicionado en la SRAM a leer
rjmp start

configurar:
  ldi r21, 0xFF
  ldi r22, 0x03
  ldi r23, 0xFF

	ldi r20, 255
	out DDRD, r20
	ldi r20, 0xff
	out DDRB, r20
	clr r20
	out PORTC, r20
	call guardar_codigos
	ret

esperar_inicio:
	ldi r21, 0xFF ; valor para el primer retardo
delay:
	dec r21 ; disminuir el contador del primer retardo
	brne delay ; repetir hasta que sea 0
	dec r23 ; disminuir el contador del segundo retardo
	brne esperar_inicio ; repetir hasta que sea 0
	ret

start:
  ldi r16, HIGH(RAMEND)
	out SPH, r16
	ldi r16, LOW(RAMEND)
	out SPL, r16
  inc r18
	call configurar
	call esperar_inicio


	call get_u
	call set_7seg_u
	rjmp start

get_u:
	mov		r20, r18
	andi	r20, 0xff
	mov		r1, r20
	ret

set_7seg_u:
	mov		r0, r1
	call	get_7seg_code
	mov		r17, r20
	out		PORTD, r17
	ret

get_7seg_code:
	ldi r28,0x00 ;LOW(0x0100)
	ldi r29,0x01 ;HIGH(0x0100)
	add r28,r0
	ld r20, Y
	ret

guardar_codigos:
	ldi r28, 0x00 ;LOW(0x0100)
	ldi r29, 0x01 ;HIGH(0x0100)

  ldi r20, 73 ;cargamos el 1
	ST Y+, r20
  ldi r20, 74 ;cargamos el 1
	ST Y+, r20
  ldi r20, 75 ;cargamos el 1
	ST Y+, r20
  ldi r20, 75 ;cargamos el 1
	ST Y+, r20
  ldi r20, 74 ;cargamos el 1
	ST Y+, r20
  ldi r20, 73 ;cargamos el 1
	ST Y+, r20
   ldi r20, 73 ;cargamos el 1
	ST Y+, r20
   ldi r20, 73 ;cargamos el 1
	ST Y+, r20
   ldi r20, 73 ;cargamos el 1
	ST Y+, r20
   ldi r20, 73 ;cargamos el 1
	ST Y+, r20
   ldi r20, 72 ;cargamos el 1
	ST Y+, r20
   ldi r20, 71 ;cargamos el 1
	ST Y+, r20
   ldi r20, 69 ;cargamos el 1
	ST Y+, r20
   ldi r20, 68 ;cargamos el 1
	ST Y+, r20
   ldi r20, 67 ;cargamos el 1
	ST Y+, r20
   ldi r20, 67 ;cargamos el 1
	ST Y+, r20
   ldi r20, 67 ;cargamos el 1
	ST Y+, r20
   ldi r20, 68 ;cargamos el 1
	ST Y+, r20
   ldi r20, 68 ;cargamos el 1
	ST Y+, r20
   ldi r20, 67 ;cargamos el 1
	ST Y+, r20
   ldi r20, 65 ;cargamos el 1
	ST Y+, r20
   ldi r20, 62 ;cargamos el 1
	ST Y+, r20
   ldi r20, 61 ;cargamos el 1
	ST Y+, r20
   ldi r20, 59 ;cargamos el 1
	ST Y+, r20
   ldi r20, 57 ;cargamos el 1
	ST Y+, r20
   ldi r20, 56 ;cargamos el 1
	ST Y+, r20
   ldi r20, 55 ;cargamos el 1
	ST Y+, r20
   ldi r20, 55 ;cargamos el 1
	ST Y+, r20
   ldi r20, 54 ;cargamos el 1
	ST Y+, r20
   ldi r20, 54 ;cargamos el 1
	ST Y+, r20
   ldi r20, 54 ;cargamos el 1
	ST Y+, r20
  ldi r20, 55 ;cargamos el 1
	ST Y+, r20
  ldi r20, 55 ;cargamos el 1
	ST Y+, r20
  ldi r20, 55 ;cargamos el 1
	ST Y+, r20
  ldi r20, 55 ;cargamos el 1
	ST Y+, r20
  ldi r20, 55 ;cargamos el 1
	ST Y+, r20
  ldi r20, 55 ;cargamos el 1
	ST Y+, r20
  ldi r20, 54 ;cargamos el 1
	ST Y+, r20
  ldi r20, 53 ;cargamos el 1
	ST Y+, r20
  ldi r20, 51 ;cargamos el 1
	ST Y+, r20
  ldi r20, 50 ;cargamos el 1
	ST Y+, r20
  ldi r20, 49 ;cargamos el 1
	ST Y+, r20
  ldi r20, 49 ;cargamos el 1
	ST Y+, r20
  ldi r20, 52 ;cargamos el 1
	ST Y+, r20
  ldi r20, 61 ;cargamos el 1
	ST Y+, r20
  ldi r20, 77 ;cargamos el 1
	ST Y+, r20
  ldi r20, 101 ;cargamos el 1
	ST Y+, r20
  ldi r20, 132 ;cargamos el 1
	ST Y+, r20
  ldi r20, 169 ;cargamos el 1
	ST Y+, r20
  ldi r20, 207 ;cargamos el 1
	ST Y+, r20
  ldi r20, 238 ;cargamos el 1
	ST Y+, r20
  ldi r20, 255 ;cargamos el 1
	ST Y+, r20
  ldi r20, 254 ;cargamos el 1
	ST Y+, r20
  ldi r20, 198 ;cargamos el 1
	ST Y+, r20
  ldi r20, 154 ;cargamos el 1
	ST Y+, r20
  ldi r20, 109 ;cargamos el 1
	ST Y+, r20
  ldi r20, 68 ;cargamos el 1
	ST Y+, r20
  ldi r20, 37 ;cargamos el 1
	ST Y+, r20
  ldi r20, 17 ;cargamos el 1
	ST Y+, r20
  ldi r20, 5 ;cargamos el 1
	ST Y+, r20
  ldi r20, 0 ;cargamos el 1
	ST Y+, r20
  ldi r20, 1 ;cargamos el 1
	ST Y+, r20
  ldi r20, 6 ;cargamos el 1
	ST Y+, r20
  ldi r20, 13 ;cargamos el 1
	ST Y+, r20
  ldi r20, 20 ;cargamos el 1
	ST Y+, r20
  ldi r20, 28 ;cargamos el 1
	ST Y+, r20
  ldi r20, 36 ;cargamos el 1
	ST Y+, r20
  ldi r20, 45 ;cargamos el 1
	ST Y+, r20
  ldi r20, 52 ;cargamos el 1
	ST Y+, r20
  ldi r20, 57 ;cargamos el 1
	ST Y+, r20
  ldi r20, 61 ;cargamos el 1
	ST Y+, r20
  ldi r20, 64 ;cargamos el 1
	ST Y+, r20
  ldi r20, 65 ;cargamos el 1
	ST Y+, r20
  ldi r20, 66 ;cargamos el 1
	ST Y+, r20
  ldi r20, 67 ;cargamos el 1
	ST Y+, r20
  ldi r20, 68 ;cargamos el 1
	ST Y+, r20
  ldi r20, 68 ;cargamos el 1
	ST Y+, r20

	ldi r20, 69 ;cargamos el 0
	ST Y+, r20
	ldi r20, 70 ;cargamos el 1
	ST Y+, r20
  ldi r20, 71 ;cargamos el 1
	ST Y+, r20
  ldi r20, 71 ;cargamos el 1
	ST Y+, r20
  ldi r20, 71 ;cargamos el 1
	ST Y+, r20
  ldi r20, 71 ;cargamos el 1
	ST Y+, r20
  ldi r20, 71 ;cargamos el 1
	ST Y+, r20
  ldi r20, 71 ;cargamos el 1
	ST Y+, r20
  ldi r20, 71 ;cargamos el 1
	ST Y+, r20
  ldi r20, 71 ;cargamos el 1
	ST Y+, r20
  ldi r20, 72 ;cargamos el 1
	ST Y+, r20
  ldi r20, 72 ;cargamos el 1
	ST Y+, r20
  ldi r20, 72 ;cargamos el 1
	ST Y+, r20
  ldi r20, 73 ;cargamos el 1
	ST Y+, r20
  ldi r20, 73 ;cargamos el 1
	ST Y+, r20
  ldi r20, 74 ;cargamos el 1
	ST Y+, r20
  ldi r20, 75 ;cargamos el 1
	ST Y+, r20
  ldi r20, 75 ;cargamos el 1
	ST Y+, r20
  ldi r20, 76 ;cargamos el 1
	ST Y+, r20
  ldi r20, 77 ;cargamos el 1
	ST Y+, r20
  ldi r20, 78 ;cargamos el 1
	ST Y+, r20
  ldi r20, 79 ;cargamos el 1
	ST Y+, r20
  ldi r20, 80 ;cargamos el 1
	ST Y+, r20
  ldi r20, 81 ;cargamos el 1
	ST Y+, r20
  ldi r20, 82 ;cargamos el 1
	ST Y+, r20
  ldi r20, 83 ;cargamos el 1
	ST Y+, r20
  ldi r20, 84 ;cargamos el 1
	ST Y+, r20
  ldi r20, 86 ;cargamos el 1
	ST Y+, r20
  ldi r20, 88 ;cargamos el 1
	ST Y+, r20
  ldi r20, 91 ;cargamos el 1
	ST Y+, r20
  ldi r20, 93 ;cargamos el 1
	ST Y+, r20
  ldi r20, 96 ;cargamos el 1
	ST Y+, r20
  ldi r20, 98 ;cargamos el 1
	ST Y+, r20
  ldi r20, 100 ;cargamos el 1
	ST Y+, r20
  ldi r20, 102 ;cargamos el 1
	ST Y+, r20
  ldi r20, 104 ;cargamos el 1
	ST Y+, r20
  ldi r20, 107 ;cargamos el 1
	ST Y+, r20
  ldi r20, 109 ;cargamos el 1
	ST Y+, r20
  ldi r20, 112 ;cargamos el 1
	ST Y+, r20
  ldi r20, 115 ;cargamos el 1
	ST Y+, r20
  ldi r20, 118 ;cargamos el 1
	ST Y+, r20
  ldi r20, 121 ;cargamos el 1
	ST Y+, r20
  ldi r20, 123 ;cargamos el 1
	ST Y+, r20
  ldi r20, 125 ;cargamos el 1
	ST Y+, r20
  ldi r20, 126 ;cargamos el 1
	ST Y+, r20
  ldi r20, 127 ;cargamos el 1
	ST Y+, r20
  ldi r20, 127 ;cargamos el 1
	ST Y+, r20
  ldi r20, 127 ;cargamos el 1
	ST Y+, r20
  ldi r20, 127 ;cargamos el 1
	ST Y+, r20
  ldi r20, 127 ;cargamos el 1
	ST Y+, r20
  ldi r20, 126 ;cargamos el 1
	ST Y+, r20
  ldi r20, 125 ;cargamos el 1
	ST Y+, r20
  ldi r20, 124 ;cargamos el 1
	ST Y+, r20
  ldi r20, 121 ;cargamos el 1
	ST Y+, r20
  ldi r20, 119 ;cargamos el 1
	ST Y+, r20
  ldi r20, 116 ;cargamos el 1
	ST Y+, r20
  ldi r20, 113 ;cargamos el 1
	ST Y+, r20
  ldi r20, 109 ;cargamos el 1
	ST Y+, r20
  ldi r20, 105 ;cargamos el 1
	ST Y+, r20
  ldi r20, 102 ;cargamos el 1
	ST Y+, r20
  ldi r20, 98 ;cargamos el 1
	ST Y+, r20
  ldi r20, 95 ;cargamos el 1
	ST Y+, r20
  ldi r20, 92 ;cargamos el 1
	ST Y+, r20
  ldi r20, 89 ;cargamos el 1
	ST Y+, r20
   ldi r20, 87 ;cargamos el 1
	ST Y+, r20
   ldi r20, 84 ;cargamos el 1
	ST Y+, r20
   ldi r20, 81 ;cargamos el 1
	ST Y+, r20
   ldi r20, 79 ;cargamos el 1
	ST Y+, r20
   ldi r20, 77 ;cargamos el 1
	ST Y+, r20
   ldi r20, 76 ;cargamos el 1
	ST Y+, r20
   ldi r20, 75 ;cargamos el 1
	ST Y+, r20
   ldi r20, 74 ;cargamos el 1
	ST Y+, r20
   ldi r20, 73 ;cargamos el 1
	ST Y+, r20
   ldi r20, 72 ;cargamos el 1
	ST Y+, r20
   ldi r20, 70 ;cargamos el 1
	ST Y+, r20
   ldi r20, 69 ;cargamos el 1
	ST Y+, r20
  ldi r20, 68 ;cargamos el 1
	ST Y+, r20
  ldi r20, 67 ;cargamos el 1
	ST Y+, r20
  ldi r20, 67 ;cargamos el 1
	ST Y+, r20
  ldi r20, 67 ;cargamos el 1
	ST Y+, r20
  ldi r20, 68 ;cargamos el 1
	ST Y+, r20
  ldi r20, 68 ;cargamos el 1
	ST Y+, r20
  ldi r20, 68 ;cargamos el 1
	ST Y+, r20
  ldi r20, 69 ;cargamos el 1
	ST Y+, r20
  ldi r20, 69 ;cargamos el 1
	ST Y+, r20
  ldi r20, 69 ;cargamos el 1
	ST Y+, r20
  ldi r20, 69 ;cargamos el 1
	ST Y+, r20
  ldi r20, 69 ;cargamos el 1
	ST Y+, r20
  ldi r20, 69 ;cargamos el 1
	ST Y+, r20
  ldi r20, 69 ;cargamos el 1
	ST Y+, r20
  ldi r20, 69 ;cargamos el 1
	ST Y+, r20
  ldi r20, 70 ;cargamos el 1
	ST Y+, r20
  ldi r20, 71 ;cargamos el 1
	ST Y+, r20
  ldi r20, 72 ;cargamos el 1
	ST Y+, r20
  ldi r20, 73 ;cargamos el 1
	ST Y+, r20
  ldi r20, 73 ;cargamos el 1
	ST Y+, r20
  ldi r20, 74 ;cargamos el 1
	ST Y+, r20
  ldi r20, 74 ;cargamos el 1
	ST Y+, r20
  ldi r20, 75 ;cargamos el 1
	ST Y+, r20
  ldi r20, 75 ;cargamos el 1
	ST Y+, r20
  ldi r20, 75 ;cargamos el 1
	ST Y+, r20
  ldi r20, 75 ;cargamos el 1
	ST Y+, r20
  ldi r20, 75 ;cargamos el 1
	ST Y+, r20
  ldi r20, 74 ;cargamos el 1
	ST Y+, r20
  ldi r20, 74 ;cargamos el 1
	ST Y+, r20
  ldi r20, 73 ;cargamos el 1
	ST Y+, r20
  ldi r20, 73 ;cargamos el 1
	ST Y+, r20
  ldi r20, 73 ;cargamos el 1
	ST Y+, r20
  ldi r20, 73 ;cargamos el 1
	ST Y+, r20
  ldi r20, 72 ;cargamos el 1
	ST Y+, r20
  ldi r20, 72 ;cargamos el 1
	ST Y+, r20
  ldi r20, 72 ;cargamos el 1
	ST Y+, r20
  ldi r20, 71 ;cargamos el 1
	ST Y+, r20
  ldi r20, 71 ;cargamos el 1
	ST Y+, r20
  ldi r20, 71 ;cargamos el 1
	ST Y+, r20
  ldi r20, 71 ;cargamos el 1
	ST Y+, r20
  ldi r20, 71 ;cargamos el 1
	ST Y+, r20
  ldi r20, 71 ;cargamos el 1
	ST Y+, r20
  ldi r20, 71 ;cargamos el 1
	ST Y+, r20

      ; Asumimos que el puntero Y ya apunta al lugar adecuado en la memoria

    ldi r20, 70  ; Cargar 70 en r20
    ST Y+, r20   ; Guardar en memoria
    ST Y+, r20   ; Repetir
    ST Y+, r20   ; Repetir

    ldi r20, 69  ; Cargar 69 en r20
    ST Y+, r20   ; Guardar en memoria
    ST Y+, r20   ; Repetir
    ST Y+, r20   ; Repetir
    ST Y+, r20   ; Repetir
    ST Y+, r20   ; Repetir

    ldi r20, 70  ; Cargar 70 en r20
    ST Y+, r20   ; Guardar en memoria
    ST Y+, r20   ; Repetir
    ST Y+, r20   ; Repetir

    ldi r20, 69  ; Cargar 69 en r20
    ST Y+, r20   ; Guardar en memoria

    ldi r20, 68  ; Cargar 68 en r20
    ST Y+, r20   ; Guardar en memoria
    ST Y+, r20   ; Repetir

    ldi r20, 67  ; Cargar 67 en r20
    ST Y+, r20   ; Guardar en memoria
    ST Y+, r20   ; Repetir
    ST Y+, r20   ; Repetir
    ST Y+, r20   ; Repetir

    ldi r20, 66  ; Cargar 66 en r20
    ST Y+, r20   ; Guardar en memoria
    ST Y+, r20   ; Repetir
    ST Y+, r20   ; Repetir

    ldi r20, 65  ; Cargar 65 en r20
    ST Y+, r20   ; Guardar en memoria
    ST Y+, r20   ; Repetir
    ST Y+, r20   ; Repetir
    ST Y+, r20   ; Repetir
    ST Y+, r20   ; Repetir
    ST Y+, r20   ; Repetir
    ST Y+, r20   ; Repetir

    ldi r20, 64  ; Cargar 64 en r20
    ST Y+, r20   ; Guardar en memoria
    ST Y+, r20   ; Repetir

    ldi r20, 63  ; Cargar 63 en r20
    ST Y+, r20   ; Guardar en memoria
    ST Y+, r20   ; Repetir

    ldi r20, 64  ; Cargar 64 en r20
    ST Y+, r20   ; Guardar en memoria
    ST Y+, r20   ; Repetir

    ldi r20, 65  ; Cargar 65 en r20
    ST Y+, r20   ; Guardar en memoria
    ST Y+, r20   ; Repetir
    ST Y+, r20   ; Repetir
    ST Y+, r20   ; Repetir
    ST Y+, r20   ; Repetir
    ST Y+, r20   ; Repetir

    ldi r20, 64  ; Cargar 64 en r20
    ST Y+, r20   ; Guardar en memoria
    ST Y+, r20   ; Repetir
    ST Y+, r20   ; Repetir
    ST Y+, r20   ; Repetir
    ST Y+, r20   ; Repetir
    ST Y+, r20   ; Repetir
    ST Y+, r20   ; Repetir

    ldi r20, 65  ; Cargar 65 en r20
    ST Y+, r20   ; Guardar en memoria
    ST Y+, r20   ; Repetir
    ST Y+, r20   ; Repetir

    ldi r20, 66  ; Cargar 66 en r20
    ST Y+, r20   ; Guardar en memoria

    ldi r20, 67  ; Cargar 67 en r20
    ST Y+, r20   ; Guardar en memoria
    ST Y+, r20   ; Repetir

    ldi r20, 68  ; Cargar 68 en r20
    ST Y+, r20   ; Guardar en memoria

    ldi r20, 69  ; Cargar 69 en r20
    ST Y+, r20   ; Guardar en memoria

    ldi r20, 71  ; Cargar 71 en r20
    ST Y+, r20   ; Guardar en memoria

    ldi r20, 72  ; Cargar 72 en r20
    ST Y+, r20   ; Guardar en memoria

    ldi r20, 73  ; Cargar 73 en r20
    ST Y+, r20   ; Guardar en memoria
	ret   
