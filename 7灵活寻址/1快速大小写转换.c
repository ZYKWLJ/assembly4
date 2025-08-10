#include <stdio.h>

int main(void)
{
    int char_a = 'a';
    printf("%c %c\n", char_a, char_a & 0b11011111); // 减少32
    int char_A = 'A';
    printf("%c %c\n", char_A, char_A | 0b00100000); // 多出32
    return 0;
}   