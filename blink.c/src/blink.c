#include "delay.h"
#include "stm32f1.h"

void setup() {
    RCC_APB2ENR |= RCC_IOPCEN;
    GPIOC_CRH &= ~0xff;
    GPIOC_CRH |= 0x11;
}

void loop() {
    GPIOC_ODR = 0x100;
    delay(500);
    GPIOC_ODR = 0x200;
    delay(500);
}

void main() {
    setup();
    while (1) {
        loop();
    }
}
