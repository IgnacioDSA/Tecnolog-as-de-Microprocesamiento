.include "m328pdef.inc"

.org 0x00
ldi r16, 0xFF
ldi r17, (0<<PB5)
out DDRD, r16
out DDRB, r17

main_loop:

sbis PIND, PB5
ldi r18, 0b10111111
out PORTD, r18
sbic PIND, PB5
ldi r18, 0b01100000
out PORTD, r18
sbis PIND, PB5
sbic PIND, PB5
ldi r18, 0b11011010
out PORTD, r18
sbis PIND, PB5
sbic PIND, PB5

rjmp main_loop









