extern unsigned __text_start__;
extern unsigned __text_end__;
extern unsigned __data_start__;
extern unsigned __data_end__;
extern unsigned __bss_start__;
extern unsigned __bss_end__;
extern unsigned __stack_top__;

void _start();

__attribute__((section(".vectors")))
const void *vectors[] = {
    &__stack_top__,
    &_start
};

void copy_data() {
    unsigned *src = &__text_end__;
    unsigned *dst = &__data_start__;
    while (dst < &__data_end__) {
        *dst++ = *src++;
    }
}

void fill_bss() {
    unsigned *dst = &__bss_start__;
    while (dst < &__bss_end__) {
        *dst++ = 0;
    }
}

void main();

void _start() {
    copy_data();
    fill_bss();
    main();
    while (1);
}
