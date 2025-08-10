#include <stdio.h>
#include <string.h>

// 宏定义：计算两个数的平方和
#define SUM_OF_SQUARES(a, b)                              \
    ({                                                    \
        typeof(a) __a = (a); /* 使用typeof获取变量类型 */ \
        typeof(b) __b = (b);                              \
        __a *__a + __b *__b; /* 返回平方和 */             \
    })

int main()
{

    // 测试SUM_OF_SQUARES宏
    int x = 3, y = 4;
    int result = SUM_OF_SQUARES(x, y);
    printf("Sum of squares of %d and %d: %d\n", x, y, result);

    // 测试浮点数
    float a = 1.5f, b = 2.5f;
    float float_result = SUM_OF_SQUARES(a, b);
    printf("Sum of squares of %.1f and %.1f: %.2f\n", a, b, float_result);
    
    // 最基本的编译通过原理
    printf("%d", ({int a=1,b=2;a+b; }));
    return 0;
}
