arm-none-eabi-gcc -mcpu=arm926ej-s -c -o test.o test.c
arm-none-eabi-gcc -mcpu=arm926ej-s -c -o vectors.o vectors.S
arm-none-eabi-gcc -nostdlib -T test.ld test.o vectors.o -o test
arm-none-eabi-objcopy -O binary test test.bin
