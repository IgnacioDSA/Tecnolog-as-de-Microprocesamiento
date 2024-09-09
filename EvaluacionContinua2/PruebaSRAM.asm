.include "m328pdef.inc"

.ORG 0X0000
RJMP Comienzo

Comienzo:
LDI R16, 0X05
ldi r30, low(0x0100)
ldi r31, high(0x0100)
ldi r26, low(0x0107)
ldi r27, high(0x0107)
ld r17, Z
OUT DDRB, r17

copy_loop:

st Z+, r0
st Z+, r1
st Z+, r2
ld r16, Z
st X+, r0
dec r16
brne copy_loop

bucle: rjmp bucle   
