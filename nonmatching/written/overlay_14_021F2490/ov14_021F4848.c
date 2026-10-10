typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef signed short s16;
typedef int s32;
typedef int BOOL;

typedef struct {
    u8 pad0[0x314];
    void *unk314;
} UnkStruct_ov14_021F4848_34;

typedef struct {
    u8 pad0[0x1f];
    u8 unk1F;
    u8 pad20[0x5];
    u8 unk25;
    u8 pad26[0xe];
    UnkStruct_ov14_021F4848_34 *unk34;
} UnkStruct_ov14_021F4848;

void ov14_021F2A18(UnkStruct_ov14_021F4848_34 *a0, u32 a1, u32 a2);
void ManagedSprite_GetPositionXY(void *a0, s16 *a1, s16 *a2);
void ManagedSprite_SetPositionXY(void *a0, s16 a1, s16 a2);

void ov14_021F4848(UnkStruct_ov14_021F4848 *a0)
{
    u32 slot;
    s16 *pos = (s16 *)&slot;
    s32 q;

    __asm__ volatile("movs %0, r3" : "=l"(slot) : : "cc");
    q = (s32)a0->unk25 / 6;
    if (q == (s32)a0->unk1F / 6) {
        ov14_021F2A18(a0->unk34, 6, 1);
    } else {
        ov14_021F2A18(a0->unk34, 6, 0);
    }
    q = (s32)a0->unk1F % 6;
    ManagedSprite_GetPositionXY(a0->unk34->unk314, &pos[1], &pos[0]);
    ManagedSprite_SetPositionXY(a0->unk34->unk314, q * 0x22 + 0x2b, pos[0]);
}
