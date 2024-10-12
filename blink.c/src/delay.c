void delay(unsigned ms) {
    for (unsigned i = 0; i < ms; i++) {
        for (unsigned j = 0; j < 2000; j++) {
            asm("nop");
        }
    }
}
