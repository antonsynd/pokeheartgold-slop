typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

extern u8 gSystem[];
void ov112_021E7670(void);
int ov112_021E768C(void);
u8 ov112_021ED330(void *work, int a1);
u32 MTRandom(void);
void ov112_021EA76C(void *work);
void ov112_021EA60C(void *work);
void ov112_021ED314(int a0);
void ov112_021EDAF4(void *work, int a1);
void ov112_021EAA98(void *work, void *p, int mode);
void ov112_021EAA10(void *work);
int ov112_021E76A8(void);
void ManagedSprite_SetDrawFlag(void *sprite, int flag);
void sub_02032644(void *pokeWalker);
void ov112_021EA688(void *work, int a1);
void ov112_021E7464(void);
int ov112_021E7668(void);
void ov112_021E98E8(void *work, int show);
int ov112_021E9888(int a0);
void ov112_021EC440(void *work, int a1, int a2, int a3);
void ov112_021EA10C(void *work, int a1, int a2);
void PlaySE(u16 se);

int ov112_021ED35C(u8 *work) {
    u8 level;
    int event;

    ov112_021E7670();
    level = ov112_021ED330(work, ov112_021E768C());
    if (level > MTRandom() % 0xFF) {
        ov112_021EA76C(work);
    }
    ov112_021EA60C(work);
    ov112_021ED314(level);
    ov112_021EDAF4(work, level);
    if (level > 0xC8) {
        if (*(u16 *)(work + 0x1F2D4) == 0) {
            ov112_021EAA98(work, work + 0x1F2C0, 2);
            *(u16 *)(work + 0x1F2D4) = 1;
        }
    } else {
        ov112_021EAA10(work);
        *(u16 *)(work + 0x1F2D4) = 0;
    }

    event = ov112_021E76A8();
    switch (event) {
    case 2:
        if (*(u16 *)(work + 0x16) == 1) {
            *(u16 *)(work + 0x14) = 0x2A;
        }
        break;
    case 4:
    case 7:
    case 8:
    case 9:
    case 11:
    case 12:
    case 13:
        *(u16 *)(work + 0x14) = event;
        break;
    case 15:
        ManagedSprite_SetDrawFlag(*(void **)(work + 0x1E538), 0);
        sub_02032644(*(void **)(work + 0x1E440));
        ov112_021EA688(work, 8);
        ov112_021EAA98(work, work + 0x1F2C0, 0);
        return 0x23;
    }

    if (*(u16 *)(work + 0x14) != 0) {
        ManagedSprite_SetDrawFlag(*(void **)(work + 0x1E538), 0);
        *(int *)(work + 0xC) = 0x3A;
        ov112_021E7464();
        return 0x20;
    }

    if (ov112_021E7668() == 0) {
        ov112_021E98E8(work, 1);
        if (ov112_021E9888(5) != 0) {
            u32 keys = *(u32 *)(gSystem + 0x48);
            if (!(keys & 1) && !(keys & 2)) {
                return 0x19;
            }
        }
        *(u16 *)(work + 0x14) = 0x21;
        ov112_021E7464();
        ov112_021EC440(work, 3, 3, 0x21);
        PlaySE(0x5DD);
        return 0x41;
    }
    if (*(u16 *)(work + 0x16) == 0) {
        ov112_021EA10C(work, 2, 6);
        *(u16 *)(work + 0x16) = 1;
    }
    ov112_021E98E8(work, 0);
    return 0x19;
}
