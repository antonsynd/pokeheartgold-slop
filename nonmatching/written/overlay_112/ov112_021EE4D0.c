typedef unsigned char u8;
typedef unsigned int u32;

u32 MTRandom(void);
void ov112_021EA7D0(void *work);
void ov112_021ED314(int a0);

int ov112_021EE4D0(u8 *work) {
    (*(int *)(work + 0x1F2D0))++;
    if (*(int *)(work + 0x1F2D0) > 0xB4) {
        return 0x37;
    }
    if ((u32)*(int *)(work + 0x1F2D0) > MTRandom() % 0xB4) {
        ov112_021EA7D0(work);
    }
    ov112_021ED314(*(int *)(work + 0x1F2D0));
    return 0x36;
}
