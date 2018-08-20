arm-none-eabi-as -mcpu=arm926ej-s startup.s -o startup.o
arm-none-eabi-gcc -c -O -Wall -mcpu=arm926ej-s init.c -o init.o
arm-none-eabi-gcc -c -O -Wall -mcpu=arm926ej-s syscalls.c -o syscalls.o
arm-none-eabi-ld -nostdlib -T linker.ld -o output.elf startup.o init.o syscalls.o libc.a libgcc.a #/usr/local/arm-none-eabi/arm-none-eabi/lib/libc.a /usr/local/arm-none-eabi/lib/gcc/arm-none-eabi/4.9.0/libgcc.a
arm-none-eabi-objcopy -O binary output.elf output.bin
arm-none-eabi-objdump -D init.o > init.dis
