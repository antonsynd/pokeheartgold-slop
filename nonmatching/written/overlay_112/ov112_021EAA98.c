typedef unsigned char u8;
typedef unsigned short u16;
typedef short s16;

void ov112_021EA9BC(void *work, u8 *p);

void ov112_021EAA98(void *work, u8 *p, int mode) {
    if (mode == 0) {
        *(s16 *)(p + 4) = 0x80;
        *(s16 *)(p + 6) = 0x82;
        p[2] = (u8)-10;
        *(s16 *)(p + 0xE) = 0;
    } else if (mode == 1) {
        *(s16 *)(p + 4) = 0x80;
        *(s16 *)(p + 6) = -0x6E;
        p[2] = 10;
        *(s16 *)(p + 0xE) = 0;
    } else if (mode == 2) {
        *(s16 *)(p + 4) = 0x80;
        *(s16 *)(p + 6) = 0x82;
        p[2] = 0;
        *(s16 *)(p + 0xE) = 0;
    }
    *(s16 *)(p + 8) = 0;
    *(s16 *)(p + 0xA) = 0;
    ov112_021EA9BC(work, p);
}
