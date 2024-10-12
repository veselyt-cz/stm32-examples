#define REG(addr) *(volatile unsigned *)(addr)

#define RCC_BASE 0x40021000
// APB2 peripheral clock enable register
#define RCC_APB2ENR REG(RCC_BASE + 0x18)
// USART1 clock enable
#define RCC_USART1EN (1 << 14)
// I/O port C clock enable
#define RCC_IOPCEN (1 << 4)
// I/O port B clock enable
#define RCC_IOPBEN (1 << 3)
// I/O port A clock enable
#define RCC_IOPAEN (1 << 2)

#define GPIOA_BASE 0x40010800
// Port configuration register low
#define GPIOA_CRL REG(GPIOA_BASE + 0x00)
// Port configuration register high
#define GPIOA_CRH REG(GPIOA_BASE + 0x04)
// Port input data register
#define GPIOA_IDR REG(GPIOA_BASE + 0x08)
// Port output data register
#define GPIOA_ODR REG(GPIOA_BASE + 0x0C)

#define GPIOB_BASE 0x40010C00
// Port configuration register low
#define GPIOB_CRL REG(GPIOB_BASE + 0x00)
// Port configuration register high
#define GPIOB_CRH REG(GPIOB_BASE + 0x04)
// Port input data register
#define GPIOB_IDR REG(GPIOB_BASE + 0x08)
// Port output data register
#define GPIOB_ODR REG(GPIOB_BASE + 0x0C)

#define GPIOC_BASE 0x40011000
// Port configuration register low
#define GPIOC_CRL REG(GPIOC_BASE + 0x00)
// Port configuration register high
#define GPIOC_CRH REG(GPIOC_BASE + 0x04)
// Port input data register
#define GPIOC_IDR REG(GPIOC_BASE + 0x08)
// Port output data register
#define GPIOC_ODR REG(GPIOC_BASE + 0x0C)

#define USART_BASE 0x40013800
// Status register
#define USART_SR REG(USART_BASE + 0x00)
// Transmit data register empty 
#define USART_TXE (1 << 7)
// Transmission complete
#define USART_TC (1 << 6)
// Receive data register not empty
#define USART_RXNE (1 << 5)
// Data register
#define USART_DR REG(USART_BASE + 0x04)
// Baud rate register
#define USART_BRR REG(USART_BASE + 0x08)
// Control register 1
#define USART_CR1 REG(USART_BASE + 0x0C)
// USART enable
#define USART_UE (1 << 13)
// Transmitter enable
#define USART_TE (1 << 3)
// Receiver enable
#define USART_RE (1 << 2)
// Control register 2
#define USART_CR2 REG(USART_BASE + 0x10)
