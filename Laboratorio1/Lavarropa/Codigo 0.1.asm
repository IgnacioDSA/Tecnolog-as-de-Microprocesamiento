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

wait:
call     getc
cpi      r16, 0
breq     wait
ldi      r16,105
rcall    putc
ldi      r16, 110
rcall    putc
ldi      r16, 105
rcall    putc
ldi      r16, 99
rcall    putc
ldi      r16, 105
rcall    putc
ldi      r16, 111
rcall    putc

ldi      r16,0
rjmp     wait

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
