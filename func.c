#include <stdio.h>
int add(int a, int b)
{
    int c = a + b;
    printf("a+b=%d\n", c);
    return c;
}
int a = 1, b = 2;
int main(void)
{
    printf("answer=%d\n", add(a, b));
    return 0;
}

// void print()
// {
//     printf("hello");
// }

// gcc -S -O1 C:\Users\29001\Desktop\公众号文件\专注CLinuxCloud\汇编语言\func.c -o - | grep '^[[:space:]]*[a-zA-Z]' > C:\Users\29001\Desktop\公众号文件\专注CLinuxCloud\汇编语言\func.s