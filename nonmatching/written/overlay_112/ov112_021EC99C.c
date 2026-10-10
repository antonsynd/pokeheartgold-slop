typedef unsigned char u8;
typedef unsigned short u16;

void FillBgTilemapRect(void *bgConfig, u8 bgId, u16 fillValue, u8 x, u8 y, u8 width, u8 height, u8 mode);
void ov112_021E7CA4(void *work, int a1, int a2);
u16 ov112_021EC950(void *work);
void ov112_021EC7D0(void *work);
void ov112_021E9F40(void *work, int a1);
void ov112_021ECA18(void *work, int a1);
void ov112_021EA51C(void *work, int a1);
extern const int ov112_021FF0C4[];

int ov112_021EC99C(u8 *work) {
    FillBgTilemapRect(*(void **)(work + 0x18), 1, 0, 0, 0x10, 0x20, 8, 0x10);
    ov112_021E7CA4(work, 5, 0x11);
    ov112_021E7CA4(work, 2, 0x17);
    *(u16 *)(work + 0x1EC76) = ov112_021EC950(work);
    ov112_021EC7D0(work);
    ov112_021E9F40(work, 6);
    ov112_021ECA18(work, *(int *)(work + 0x1EC54));
    ov112_021EA51C(work, ov112_021FF0C4[*(int *)(work + 0x1EC50)]);
    return 10;
}
