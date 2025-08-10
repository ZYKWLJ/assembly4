#include <stdio.h>
#define is_digit(c) ((c) >= '0' && (c) <= '9')

static int skip_atoi(const char **s)
{
    int i = 0;

    while (is_digit(**s))
        i = i * 10 + *((*s)++) - '0';
    return i;
}

int main(void)
{
    const char *s = "123456xxxxx";
    int i = skip_atoi(&s);
    printf("%d\n", i);
    return 0;
}