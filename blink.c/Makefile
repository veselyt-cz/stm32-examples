CC=arm-none-eabi-gcc

CFLAGS=-mcpu=cortex-m3 -g -O1
LDFLAGS=-nostdlib

SRCFILES=$(wildcard src/*.c)
OBJFILES=$(patsubst src/%.c,obj/%.o,$(SRCFILES))
LDFILE=src/stm32f1.ld

all: bin/main.bin

obj/%.o: src/%.c
	$(CC) -c $(CFLAGS) $^ -o $@

bin/main.elf: $(OBJFILES) $(LDFILE)
	$(CC) $(LDFLAGS) $(OBJFILES) -T $(LDFILE) -o $@

bin/main.bin: bin/main.elf
	arm-none-eabi-objcopy -O binary bin/main.elf bin/main.bin

upload: bin/main.bin
	st-flash write bin/main.bin 0x08000000

clean:
	rm bin/* obj/*
