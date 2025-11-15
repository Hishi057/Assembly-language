#include <stdio.h>

extern long string_length(char *s);

int main(){
    char x[] = "hello";
    long result = string_length(x);
    printf("%ld\n", result);
    return 0;
}