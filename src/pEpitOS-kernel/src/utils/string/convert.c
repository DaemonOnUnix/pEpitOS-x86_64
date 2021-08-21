char* dec(unsigned long long x, char *s) {
    *--s = 0;
    if (!x)
        *--s = '0';
    for (; x; x /= 10)
        *--s = '0' + x % 10;
    return s;
}

char* decX(unsigned long long x, char *s) {
    char list[16] = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
    *--s = 0;
    if (!x)
        *--s = '0';
    for (; x; x /= 16)
        *--s = list[x % 16];
    return s;
}
