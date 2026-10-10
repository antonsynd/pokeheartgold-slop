typedef unsigned char u8;
typedef unsigned int u32;

u32 MTRandom(void);
void ov112_021EA670(void *work, int a1);
void ov112_021EA7D0(void *work);

int ov112_021EC338(u8 *work) {
    (*(int *)(work + 0x1F2D0))++;
    if (*(int *)(work + 0x1F2D0) > 0xB4) {
        ov112_021EA670(work, 8);
        return 0x1A;
    }
    if ((u32)*(int *)(work + 0x1F2D0) > MTRandom() % 0xB4) {
        ov112_021EA7D0(work);
    }
    return 0x19;
}
