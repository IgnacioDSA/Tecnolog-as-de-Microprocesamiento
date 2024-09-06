.include "m328pdef.inc"

.org 0x00
ldi r16, 0xFF
ldi r17, (0<<PB5)
out DDRD, r16
out DDRB, r17

main_loop:

sbis PIND, PB5
ldi r18, 0b11110111
out PORTD, r18
sbic PIND, PB5
ldi r18, 0b01000001
out PORTD, r18
sbis PIND, PB5
sbic PIND, PB5
ldi r18, 0b00111011
out PORTD, r18
sbis PIND, PB5
sbic PIND, PB5

rjmp main_loop









