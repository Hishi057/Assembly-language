#include <stdio.h>

extern long my_abs(long);

int main() {
    long value = -10;
    long result = my_abs(value);
    printf("The absolute value of %ld is %ld\n", value, result);
    return 0;
}