arm-elf-as -mcpu=arm926ej-s startup.s -o startup.o
arm-elf-gcc -c -O -Wall -mcpu=arm926ej-s init.c -o init.o
arm-elf-gcc -c -O -Wall -mcpu=arm926ej-s syscalls.c -o syscalls.o
arm-elf-ld -nostdlibs -T linker.ld -o output.elf startup.o init.o syscalls.o libc.a libgcc.a
arm-elf-objcopy -O binary output.elf output.bin
arm-elf-objdump -d init.o > init.dis
