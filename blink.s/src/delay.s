.syntax unified
.global delay

delay:
    mov r1, #2000
delay_loop:
    nop
    subs r1, #1
    bne delay_loop
    subs r0, #1
    bne delay
bx lr
