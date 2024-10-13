MEMORY
{
    FLASH (rx) : ORIGIN = 0x08000000, LENGTH = 128K
    SRAM (rwx) : ORIGIN = 0x20000000, LENGTH = 8K
}

SECTIONS
{
    .text : 
    {
        *(.vectors)
        . = ALIGN(4);
        __text_start__ = .;
        *(.text)
        *(.rodata)
        . = ALIGN(4);
        __text_end__ = .;
    } > FLASH

    .data : 
    {
        . = ALIGN(4);
        __data_start__ = .;
        *(.data)
        . = ALIGN(4);
        __data_end__ = .;
    } > SRAM AT> FLASH

    .bss : 
    {
        . = ALIGN(4);
        __bss_start__ = .;
        *(.bss)
        . = ALIGN(4);
        __bss_end__ = .;
    } > SRAM

    __stack_top__ = ORIGIN(SRAM) + LENGTH(SRAM);
}
