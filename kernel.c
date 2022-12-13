#include <stdbool.h>
#include <stddef.h>
#include <stdint.h>
#include "Librarys\OSstd.h"

void main_kernel(void) 
{
	/* Initialize terminal interface */
	terminal_initialize();
 
	/* Newline support is left as an exercise. */
	terminal_writestring("Hello, This Is A Os Made In C And Assembly Under The Mit License!");
}
