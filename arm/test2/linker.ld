ENTRY(_Start)
SECTIONS
{
 . = 0x10000;
 startup : { startup.o(.text)}
 .data : {*(.data)}
 .bss : {*(.bss)}
 . = ALIGN(8);
 heap_low = .; /* for _sbrk */
 . = . + 0x10000; /* 64kB of heap memory */
 heap_top = .; /* for _sbrk */
 . = . + 0x10000; /* 64kB of stack memory */
 sp_top = .;
}
