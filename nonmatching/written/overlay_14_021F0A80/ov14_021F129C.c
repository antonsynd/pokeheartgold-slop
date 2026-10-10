typedef unsigned char u8;
typedef unsigned short u16;
typedef short s16;
typedef unsigned int u32;

void ov14_021F459C(void *self);
void ov14_021F58B8(void *self);
u32 GridInputHandler_GetNextInput(void *h);
void GridInputHandler_SetNextLastUnk0FInputs(void *h, u32 a, u32 b, u32 c);
void *GridInputHandler_GetDpadBox(void *h, u32 idx);
void DpadMenuBox_GetPosition(void *box, u8 *px, u8 *py);
void ManagedSprite_SetPositionXY(void *spr, s16 x, s16 y);
void ov14_021F29E4(void *a, u32 b, u32 c);
void ov14_021F2A18(void *a, u32 b, u32 c);

void ov14_021F129C(char *self, u8 val)
{
    u32 callerR3;
    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");
    u32 slot = callerR3;
    u8 *pos = (u8 *)&slot;
    char *a = *(char **)(self + 0x34);

    a[0x44d] = (u8)(val + ((u8)a[0x44d] >> 2 << 2));
    ov14_021F459C(self);
    ov14_021F58B8(self);
    u32 next = GridInputHandler_GetNextInput(*(void **)(*(char **)(self + 0x34) + 0x2c));
    *(u32 *)(*(char **)(self + 0x34) + 0x43c) = next;
    u8 cur = (u8)*(u32 *)(*(char **)(self + 0x34) + 0x43c);
    GridInputHandler_SetNextLastUnk0FInputs(*(void **)(*(char **)(self + 0x34) + 0x2c), 6, cur, cur);
    void *box = GridInputHandler_GetDpadBox(*(void **)(*(char **)(self + 0x34) + 0x2c), 6);
    DpadMenuBox_GetPosition(box, &pos[1], &pos[0]);
    ManagedSprite_SetPositionXY(*(void **)(*(char **)(self + 0x34) + 0x320), pos[1], pos[0]);
    ov14_021F29E4(*(void **)(self + 0x34), 9, 8);
    ov14_021F2A18(*(void **)(self + 0x34), 9, 1);
}
