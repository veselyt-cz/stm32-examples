.syntax unified
.global main

main:
    bl setup_rcc
    bl setup_gpio
loop:
    bl led_blue
    mov r0, #500
    bl delay
    bl led_green
    mov r0, #500
    bl delay
b loop

setup_rcc:
    ldr r0, =RCC_APB2ENR
    ldr r1, [r0]
    orr r1, #0x10
    str r1, [r0]
bx lr

setup_gpio:
    ldr r0, =GPIOC_CRH
    ldr r1, [r0]
    bic r1, #0xFF
    orr r1, #0x11
    str r1, [r0]
bx lr

led_blue:
    ldr r0, =GPIOC_ODR
    mov r1, #0x100
    str r1, [r0]
bx lr

led_green:
    ldr r0, =GPIOC_ODR
    mov r1, #0x200
    str r1, [r0]
bx lr
