#include <stdio.h>

extern long fibonacci(long);

int main() {
    long value = 10;
    long result = fibonacci(value);
    printf("%ld is %ld\n", value, result);
    return 0;
}