#include <stdio.h>

void main( void ) {
char    c;
char   *ptr        = NULL;
size_t  alloc_size = 1;

int a;
int b;
char s[256];

float v1 = 0.2;
float v2 = 0.7;
printf("soft fp: %f * %f = %f\n\r", v1, v2, v1 * v2);

printf( "Input string: ");
scanf( "%s", s );
printf( "Input a: " );
scanf( "%d", &a );
printf( "Input b: " );
scanf( "%d", &b );
printf( "a * b: %d * %d = %d\n\r", a, b, a * b );
}
