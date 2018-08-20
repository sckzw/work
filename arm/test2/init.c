/*
#include <stdio.h>

volatile unsigned char * const UART0_PTR = (unsigned char *)0x0101f1000;
void display(const char *string){
  while(*string != '\0'){
    *UART0_PTR = *string;
    string++;
  }
}

int my_init(){
  printf( "%s", "Hello\n" );
  //  display("Hello World!\n");
}
*/

#include <stdio.h>
#include <stdlib.h>

extern char *heap_end; /* Defined in syscalls.c */

void my_init() {
  char    c;
  char   *ptr        = NULL;
  size_t  alloc_size = 1;

  float v1 = 0.2;
  float v2 = 0.7;
  printf("soft fp: %f * %f = %f\n", v1, v2, v1 * v2);

  do {
    c = getchar();
    printf("%d: %c\n", c, c);

    ptr = realloc(ptr, alloc_size);
    if (ptr == NULL) {
      puts("Out of memory!\nProgram halting.");
      for (;;)
        ;
    } else {
      printf("new alloc of %d bytes at address 0x%X\n", alloc_size,
             (unsigned int)ptr);
      alloc_size <<= 1;
      printf("Heap end = 0x%X\n", (unsigned int)heap_end);
    }
  } while (1);
}
