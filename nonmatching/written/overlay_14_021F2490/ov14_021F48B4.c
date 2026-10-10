typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef signed short s16;
typedef int s32;
typedef int BOOL;

typedef struct {
    u8 pad0[0x2fc];
    void *unk2FC[0x40];
} UnkStruct_ov14_021F48B4_34;

typedef struct {
    u8 pad0[0x25];
    u8 unk25;
    u8 pad26[0xe];
    UnkStruct_ov14_021F48B4_34 *unk34;
} UnkStruct_ov14_021F48B4;

extern u8 ov14_021F8068[];

void ManagedSprite_GetPositionXY(void *a0, s16 *a1, s16 *a2);
void ManagedSprite_SetPositionXY(void *a0, s16 a1, s16 a2);
void ov14_021F46F4(UnkStruct_ov14_021F48B4_34 *a0);

void ov14_021F48B4(UnkStruct_ov14_021F48B4 *a0)
{
    s16 posA;
    s16 posB;
    s16 posC;
    u16 rem;
    u8 *base;

    rem = (s32)a0->unk25 % 6;
    base = (u8 *)a0->unk34;
    ManagedSprite_GetPositionXY(*(void **)(base + 0x318), &posC, &posB);
    ManagedSprite_SetPositionXY(*(void **)(base + 0x318), ov14_021F8068[rem], posB);
    ManagedSprite_GetPositionXY(*(void **)(base + 0x2fc + (rem + 0xf) * 4), &posA, &posB);
    ManagedSprite_GetPositionXY(*(void **)(base + 0x31c), &posC, &posB);
    ManagedSprite_SetPositionXY(*(void **)(base + 0x31c), posA, posB);
    ov14_021F46F4(a0->unk34);
}
