typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

extern u8 gSystem[];
int ov112_021E76A8(void);
void ov112_021E7464(void);
int ov112_021E7668(void);
int ov112_021E9888(int a0);
void ov112_021E98E8(void *work, int show);
void ov112_021EC134(void *work);
void ov112_021EC440(void *work, int a1, int a2, int a3);
void ManagedSprite_SetDrawFlag(void *sprite, int flag);
void sub_02032624(void *pokeWalker);
void PlaySE(u16 se);

int ov112_021EC044(u8 *work) {
    int ret = 0x11;
    switch (ov112_021E76A8()) {
    case 2:
    case 4:
    case 5:
    case 7:
    case 8:
    case 9:
    case 11:
    case 12:
        ret = 0x12;
        break;
    case 15:
        ManagedSprite_SetDrawFlag(*(void **)(work + 0x1E538), 0);
        ov112_021EC134(work);
        sub_02032624(*(void **)(work + 0x1E440));
        *(int *)(work + 0x1D758) = 0;
        *(int *)(work + 0x1D75C) = 0;
        ov112_021E7464();
        return 0x14;
    }
    if (ret != 0x11) {
        ov112_021E7464();
    }
    if (ov112_021E7668() != 0) {
        ov112_021E98E8(work, 0);
        return ret;
    }
    ov112_021E98E8(work, 1);
    if (ov112_021E9888(5) != 0) {
        u32 keys = *(u32 *)(gSystem + 0x48);
        if (!(keys & 1) && !(keys & 2)) {
            return ret;
        }
    }
    ov112_021E7464();
    ov112_021EC440(work, 1, 3, 0x12);
    PlaySE(0x5DC);
    return 0x21;
}
