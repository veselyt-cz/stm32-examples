.set RCC_BASE, 0x40021000
# APB2 peripheral clock enable register
.global RCC_APB2ENR
.set RCC_APB2ENR, RCC_BASE + 0x18

.set GPIOA_BASE, 0x40010800
# Port configuration register low
.global GPIOA_CRL
.set GPIOA_CRL, GPIOA_BASE + 0x00
# Port configuration register high
.global GPIOA_CRH
.set GPIOA_CRH, GPIOA_BASE + 0x04
# Port input data register
.global GPIOA_IDR
.set GPIOA_IDR, GPIOA_BASE + 0x08
# Port output data register
.global GPIOA_ODR
.set GPIOA_ODR, GPIOA_BASE + 0x0C

.set GPIOB_BASE, 0x40010C00
# Port configuration register low
.global GPIOB_CRL
.set GPIOB_CRL, GPIOB_BASE + 0x00
# Port configuration register high
.global GPIOB_CRH
.set GPIOB_CRH, GPIOB_BASE + 0x04
# Port input data register
.global GPIOB_IDR
.set GPIOB_IDR, GPIOB_BASE + 0x08
# Port output data register
.global GPIOB_ODR
.set GPIOB_ODR, GPIOB_BASE + 0x0C

.set GPIOC_BASE, 0x40011000
# Port configuration register low
.global GPIOC_CRL
.set GPIOC_CRL, GPIOC_BASE + 0x00
# Port configuration register high
.global GPIOC_CRH
.set GPIOC_CRH, GPIOC_BASE + 0x04
# Port input data register
.global GPIOC_IDR
.set GPIOC_IDR, GPIOC_BASE + 0x08
# Port output data register
.global GPIOC_ODR
.set GPIOC_ODR, GPIOC_BASE + 0x0C

.set USART_BASE, 0x40013800
# Status register
.global USART_SR
.set USART_SR, USART_BASE + 0x00
# Data register
.global USART_DR
.set USART_DR, USART_BASE + 0x04
# Baud rate register
.global USART_BRR
.set USART_BRR, USART_BASE + 0x08
# Control register 1
.global USART_CR1
.set USART_CR1, USART_BASE + 0x0C
# Control register 2
.global USART_CR2
.set USART_CR2, USART_BASE + 0x10
