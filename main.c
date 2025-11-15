#include <stdio.h>

extern long sum_array(long long *x, int);

int main(){
    long long x[5]= {10,20,30,40,50};
    long result = sum_array(x, 5);
    printf("%ld\n", result);
    return 0;
}