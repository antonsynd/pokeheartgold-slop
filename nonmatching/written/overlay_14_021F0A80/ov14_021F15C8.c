typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef signed char s8;
typedef signed short s16;
typedef int s32;
typedef int BOOL;

typedef struct {
    u8 pad0[0x2c];
    void *unk2C;
    u8 pad30[0x2c0];
    void *unk2F0;
    u8 pad2F4[0x8];
    void *unk2FC[9];
    void *unk320;
    u8 pad324[0x118];
    s32 unk43C;
    u8 pad440[0xb];
    u8 unk44B;
    u8 unk44C;
    u8 pad44D[0x3c47];
    u8 unk4094[0x4838];
    s32 unk88CC;
} UnkStruct_ov14_021F15C8_34;

typedef struct {
    u8 pad0[0x4];
    void *unk4;
    void *unk8;
    u8 pad_c[0x13];
    u8 unk1F;
    u8 pad20;
    u8 unk21;
    u8 unk22;
    u8 pad23[0x2];
    u8 unk25;
    u8 pad26[0xe];
    UnkStruct_ov14_021F15C8_34 *unk34;
} UnkStruct_ov14_021F15C8;

void ManagedSprite_GetPositionXY(void *a0, s16 *a1, s16 *a2);
void ManagedSprite_SetPositionXY(void *a0, s16 a1, s16 a2);
int Party_GetCount(void *a0);
void *Party_GetMonByIndex(void *a0, u32 a1);
u32 GetMonData(void *a0, s32 a1, void *a2);
BOOL ItemIdIsMail(u16 a0);
u32 PCStorage_CountEmptySpotsInBox(void *a0);
void ov14_021E765C(UnkStruct_ov14_021F15C8 *a0);
void ov14_021E8634(void *a0);
void ov14_021E884C(UnkStruct_ov14_021F15C8_34 *a0);
void ov14_021F48B4(UnkStruct_ov14_021F15C8 *a0);
void ov14_021F57B8(UnkStruct_ov14_021F15C8 *a0);
BOOL ov14_021E6480(UnkStruct_ov14_021F15C8 *a0, u32 a1);
BOOL ov14_021E7588(UnkStruct_ov14_021F15C8 *a0, u32 a1);
s32 GridInputHandler_GetNextInput(void *a0);
void ov14_021F08BC(UnkStruct_ov14_021F15C8 *a0);
void ov14_021F0234(UnkStruct_ov14_021F15C8 *a0, void *a1, u32 a2);
void ov14_021EA378(void);

void ov14_021F15C8(UnkStruct_ov14_021F15C8 *a0, u32 a1)
{
    u32 slot;
    s16 *pos = (s16 *)&slot;
    u32 idx;
    void *sprite;
    int count;
    u32 r6;
    void *mon;
    s32 next;

    __asm__ volatile("movs %0, r3" : "=l"(slot) : : "cc");
    a0->unk34->unk88CC = (a1 == 0xff) ? 1 : 0;
    ManagedSprite_GetPositionXY(a0->unk34->unk320, &pos[1], &pos[0]);
    idx = *((u8 *)a0->unk34 + a0->unk21 + 0x4094);
    sprite = *(void **)((u8 *)a0->unk34 + idx * 4 + 0x2fc);
    ManagedSprite_SetPositionXY(sprite, pos[1], (s16)(pos[0] + 4));
    if (a1 < 0x24) {
        if (a1 >= 0x1e) {
            count = Party_GetCount(a0->unk8);
            if (a0->unk21 < 0x1e) {
                if (a1 - 0x1e > count) {
                    ov14_021E765C(a0);
                    ov14_021E8634(a0->unk34->unk2F0);
                } else {
                    ov14_021E884C(a0->unk34);
                }
            } else {
                if (a1 - 0x1e >= count) {
                    ov14_021E765C(a0);
                    ov14_021E8634(a0->unk34->unk2F0);
                } else {
                    ov14_021E884C(a0->unk34);
                }
            }
        } else {
            ov14_021E884C(a0->unk34);
        }
    } else if (a1 != 0xff) {
        a0->unk25 = a1 + (s32)a0->unk25 / 6 * 6 - 0x25;
        ov14_021F48B4(a0);
        ov14_021F57B8(a0);
        r6 = a0->unk21;
        if (r6 >= 0x1e) {
            r6 -= 0x1e;
            mon = Party_GetMonByIndex(a0->unk8, r6);
            if (ItemIdIsMail(GetMonData(mon, 6, 0)) == 1) {
                ov14_021E884C(a0->unk34);
            } else if (GetMonData(mon, 0xa2, 0) != 0) {
                ov14_021E884C(a0->unk34);
            } else if (ov14_021E6480(a0, r6) == 0) {
                ov14_021E884C(a0->unk34);
            } else if (a0->unk25 == a0->unk1F) {
                ov14_021E765C(a0);
                ov14_021E8634(a0->unk34->unk2F0);
            } else if (PCStorage_CountEmptySpotsInBox(a0->unk4) == 0) {
                ov14_021E884C(a0->unk34);
            } else {
                ov14_021E765C(a0);
                ov14_021E8634(a0->unk34->unk2F0);
            }
        } else {
            if (a0->unk25 == a0->unk1F) {
                ov14_021E765C(a0);
                ov14_021E8634(a0->unk34->unk2F0);
            } else if (PCStorage_CountEmptySpotsInBox(a0->unk4) == 0) {
                ov14_021E884C(a0->unk34);
            } else {
                ov14_021E765C(a0);
                ov14_021E8634(a0->unk34->unk2F0);
            }
        }
    } else {
        next = GridInputHandler_GetNextInput(a0->unk34->unk2C);
        if ((u32)next < 0x24) {
            if (ov14_021E7588(a0, next) == 0) {
                ov14_021E8634(a0->unk34->unk2F0);
            }
        } else {
            ov14_021E765C(a0);
            ov14_021E8634(a0->unk34->unk2F0);
        }
    }
    a0->unk34->unk44C = a1;
    a0->unk34->unk44B = 0;
    ov14_021F08BC(a0);
    a0->unk22 = 2;
    ov14_021F0234(a0, (void *)ov14_021EA378, 0x2b);
}
