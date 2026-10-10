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
    u8 pad30[0x2f0];
    void *unk320;
    u8 pad324[0x118];
    s32 unk43C;
    u8 pad440[0xb];
    u8 unk44B;
} UnkStruct_ov14_021F70F4_34;

typedef struct {
    u8 pad0[0x25];
    u8 unk25;
    u8 pad26[0xe];
    UnkStruct_ov14_021F70F4_34 *unk34;
} UnkStruct_ov14_021F70F4;

void GridInputHandler_SetNextInput(void *a0, u8 a1);
void *GridInputHandler_GetDpadBox(void *a0, s32 a1);
void DpadMenuBox_GetPosition(void *a0, u8 *a1, u8 *a2);
void ManagedSprite_SetPositionXY(void *a0, u32 a1, u32 a2);
void ov14_021F2A18(UnkStruct_ov14_021F70F4_34 *a0, u32 a1, u32 a2);
void ov14_021F29E4(UnkStruct_ov14_021F70F4_34 *a0, u32 a1, u32 a2);

void ov14_021F70F4(UnkStruct_ov14_021F70F4 *a0, s32 a1)
{
    s32 r4;
    u32 slot;
    u8 *pos = (u8 *)&slot;

    __asm__ volatile("movs %0, r3" : "=l"(slot) : : "cc");
    r4 = a1;
    if ((u32)(r4 - 0x2b) <= 1) {
        r4 = (s32)a0->unk25 % 6 + 0x25;
        a0->unk34->unk43C = r4;
    }
    GridInputHandler_SetNextInput(a0->unk34->unk2C, r4);
    DpadMenuBox_GetPosition(GridInputHandler_GetDpadBox(a0->unk34->unk2C, r4), &pos[1], &pos[0]);
    ManagedSprite_SetPositionXY(a0->unk34->unk320, pos[1], pos[0]);
    ov14_021F2A18(a0->unk34, 9, 1);
    if (a0->unk34->unk44B == 0) {
        if (r4 >= 0x25 && r4 <= 0x2a) {
            ov14_021F29E4(a0->unk34, 9, 0xe);
        } else {
            ov14_021F29E4(a0->unk34, 9, 8);
        }
    }
}
