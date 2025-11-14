#include <stdio.h>

extern long loop();

int main(){
    long result = loop();
    printf("%ld\n", result);
    return 0;
}