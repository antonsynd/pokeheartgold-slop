typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;

extern u8 gSystem[];
extern const int ov112_021FF0C4[];
int ov112_021E9888(int a0);
int ov112_021ECA88(void *work);
void ov112_021EC440(void *work, int a1, int a2, int a3);
void ov112_021EC8A4(void *work, int a1, int a2);
void ov112_021EA51C(void *work, int a1);
void ov112_021ECDA0(void *work, int dir);
void ov112_021ECA18(void *work, int a1);
void ov112_021EA6A0(void *work, int a1, int a2);
void PlaySE(u16 se);

#define CURSOR(work) (*(int *)((work) + 0x1EC50))
#define PAGE(work) (*(int *)((work) + 0x1EC54))

int ov112_021ECAA8(u8 *work) {
    int sel = ov112_021E9888(4);
    u32 keys;

    if (sel != -1) {
        if ((u32)sel <= 4) {
            CURSOR(work) = sel;
            if (ov112_021ECA88(work) >= 0) {
                ov112_021EC440(work, sel, ov112_021FF0C4[sel], 0xB);
                PlaySE(0x5DD);
                ov112_021EC8A4(work, PAGE(work), CURSOR(work));
                return 0x41;
            }
            ov112_021EC8A4(work, PAGE(work), CURSOR(work));
            PlaySE(0x5DC);
            ov112_021EA51C(work, ov112_021FF0C4[CURSOR(work)]);
        } else if (sel == 6) {
            ov112_021ECDA0(work, -1);
            ov112_021ECA18(work, PAGE(work));
            ov112_021EA6A0(work, 3, 2);
        } else if (sel == 7) {
            ov112_021ECDA0(work, 1);
            ov112_021ECA18(work, PAGE(work));
            ov112_021EA6A0(work, 4, 3);
        } else {
            ov112_021EC440(work, sel, ov112_021FF0C4[sel], 0xB);
            PlaySE(0x5DD);
            return 0x41;
        }
        return 10;
    }

    keys = *(u32 *)(gSystem + 0x48);
    if (keys & 0x40) {
        if (CURSOR(work) > 0) {
            CURSOR(work)--;
            PlaySE(0x5DC);
        }
        ov112_021EA51C(work, ov112_021FF0C4[CURSOR(work)]);
        ov112_021EC8A4(work, PAGE(work), CURSOR(work));
    } else if (keys & 0x80) {
        if (CURSOR(work) < 5) {
            CURSOR(work)++;
            PlaySE(0x5DC);
        }
        ov112_021EA51C(work, ov112_021FF0C4[CURSOR(work)]);
        ov112_021EC8A4(work, PAGE(work), CURSOR(work));
    } else if (keys & 0x20) {
        ov112_021ECDA0(work, -1);
        ov112_021ECA18(work, PAGE(work));
        ov112_021EA6A0(work, 3, 2);
    } else if (keys & 0x10) {
        ov112_021ECDA0(work, 1);
        ov112_021ECA18(work, PAGE(work));
        ov112_021EA6A0(work, 4, 3);
    } else if (keys & 1) {
        int cur = CURSOR(work);
        if (cur > 4) {
            ov112_021EC440(work, cur, ov112_021FF0C4[cur], 0xB);
            PlaySE(0x5DD);
            return 0x41;
        }
        if (ov112_021ECA88(work) >= 0) {
            ov112_021EC440(work, CURSOR(work), ov112_021FF0C4[CURSOR(work)], 0xB);
            PlaySE(0x5DD);
            return 0x41;
        }
        PlaySE(0x5DC);
    } else if (keys & 2) {
        ov112_021EC440(work, 5, 3, 0xB);
        PlaySE(0x5DC);
        return 0x41;
    }
    return 10;
}
