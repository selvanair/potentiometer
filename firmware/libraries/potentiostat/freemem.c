/* Use _end and __stack pointers in avr to return currently available
   free memory.
   Mar 2020 Selva Nair
*/
#include "freemem.h"

extern uint8_t *__bss_end;

static uint16_t min_free = 65535; /* max possible value */

#define MIN(a,b) (a) < (b) ? (a) : (b)

uint16_t count_freemem(void)
{
   uint8_t x = 0;
   uint16_t n =  &x - __bss_end; /* stack ptr - bss-end ignoring heap use */
   min_free = MIN(n, min_free);
   return n;
}

uint16_t min_freemem(void)
{
    count_freemem(); /* this updates min_free */
    return min_free;
}
