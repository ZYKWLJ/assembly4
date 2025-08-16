#include <stdio.h>

int main(void)
{
    int a = 10;
    int b = 10;
    ptrdiff_t diff = &a - &b;
    printf("%d\n", &a);
    printf("%d\n", &b);
    // 注意diff是类型的单元差值，所以这里是一个int类型，也就是4B，还要乘以4
    printf("%d\n", diff * sizeof(int));
    return 0;
}