#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <time.h>

uint64_t c_fibonacci(uint64_t n) {
    
    if (n == 0) {
        return 0;
    }
    
    uint64_t f_prev_prev = 0;
    uint64_t f_prev = 1;
    
    if (n == 1) {
        return f_prev;
    }

    uint64_t f_current = 0;
    
    for (uint64_t i = 2; i <= n; i++) {
        f_current = f_prev + f_prev_prev;
        
        f_prev_prev = f_prev;
        f_prev = f_current;
    }
    
    return f_current;
}

extern long my_fibonacci(long);

int main() {
    long value = 1000000000;

    printf("\n");

    // アセンブリ言語製 の Fibonacci関数
    printf("- Fibonacci関数 by アセンブリ言語\n");

    clock_t start_time = clock();

    uint64_t result1 = my_fibonacci(value);
    printf("my_fibonacci(%ld) is %llu\n", value, (unsigned long long)result1);

    clock_t end_time = clock();
    double elapsed_time_sec = (double)(end_time - start_time) / CLOCKS_PER_SEC;
    printf("実行時間 (CPU時間): %f 秒\n", elapsed_time_sec);

    // 空白
    printf("\n");

    // c言語で書いた Fibonacci関数
    printf("- Fibonacci関数 by C言語\n");

    start_time = clock();

    uint64_t result2 = c_fibonacci(value);
    printf(" c_fibonacci(%ld) is %llu\n", value, (unsigned long long)result2);

    end_time = clock();
    elapsed_time_sec = (double)(end_time - start_time) / CLOCKS_PER_SEC;
    printf("実行時間 (CPU時間): %f 秒\n", elapsed_time_sec);

    printf("\n");
    return 0;
}