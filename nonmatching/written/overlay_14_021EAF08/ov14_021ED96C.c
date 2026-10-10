typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef signed short s16;
typedef int s32;
typedef int BOOL;

typedef struct {
    u8 pad0[0x44d];
    u8 unk44D;
} UnkStruct_ov14_021ED96C_34;

typedef struct {
    u8 pad0[0x4];
    void *unk4;
    u8 pad8[0x17];
    u8 unk1F;
    u8 pad20[0x14];
    UnkStruct_ov14_021ED96C_34 *unk34;
} UnkStruct_ov14_021ED96C;

void ov14_021E78AC(UnkStruct_ov14_021ED96C *a0, u32 a1);
void PCStorage_SetBoxWallpaper(void *a0, u32 a1, u32 a2);
void ov14_021F4530(UnkStruct_ov14_021ED96C *a0);
void ov14_021F4958(UnkStruct_ov14_021ED96C *a0, u32 a1);

s32 ov14_021ED96C(UnkStruct_ov14_021ED96C *a0)
{
    u32 wallpaper;

    ov14_021E78AC(a0, a0->unk34->unk44D);
    wallpaper = a0->unk34->unk44D;
    if (wallpaper < 0x10) {
        PCStorage_SetBoxWallpaper(a0->unk4, a0->unk1F, wallpaper);
    } else {
        PCStorage_SetBoxWallpaper(a0->unk4, a0->unk1F, wallpaper + 0x10);
    }
    ov14_021F4530(a0);
    ov14_021F4958(a0, a0->unk1F);
    return 0x48;
}
