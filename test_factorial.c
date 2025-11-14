#include <stdio.h>

extern long my_factorial(long);

int main(){
    long result = my_factorial(-3);
    printf("%ld\n", result);
    return 0;
}