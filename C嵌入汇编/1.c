#include <stdio.h>

// 修改：使用当前数据段，访问实际传入的地址（而非固定偏移2）
#define get_seg_byte(seg, addr)                                              \
    ({                                                                       \
        register unsigned char __res;                                        \
        /* 注意：在用户态程序中，fs寄存器通常受保护，这里改用ds段寄存器 */   \
        __asm__ __volatile__(                                                \
            "movb %%ds:(%1), %%al" /* 从ds段的addr地址读取字节 */            \
            : "=a"(__res)          /* 输出：al寄存器的值赋给__res */         \
            : "r"(addr), "a"(seg)  /* 输入：addr放入任意寄存器，seg放入ax */ \
            : "memory"             /* 告知编译器内存已被修改 */              \
        );                                                                   \
        __res;                                                               \
    })

int main()
{
    // 安全的内存分配：在当前数据段中分配内存
    char buffer[10] = "test"; // 栈上的内存，属于当前数据段
    buffer[2] = 0x55;         // 在位置2设置一个测试值（十进制85）

    // 访问buffer[2]的字节（使用当前数据段）
    unsigned char result = get_seg_byte(0, &buffer[2]);

    printf("Retrieved byte value: decimal=%d, hexadecimal=0x%02X\n", result, result);
    return 0;
}
