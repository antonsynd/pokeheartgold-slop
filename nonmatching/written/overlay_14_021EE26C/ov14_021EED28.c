typedef unsigned char u8;
typedef unsigned short u16;
typedef short s16;
typedef unsigned int u32;
typedef signed char s8;

void GridInputHandler_SetNextInput(void *h, int next);
void *GridInputHandler_GetDpadBox(void *h, u32 idx);
void DpadMenuBox_GetPosition(void *box, u8 *px, u8 *py);
void ManagedSprite_SetPositionXY(void *spr, s16 x, s16 y);
u32 ov14_021F2A04(void *a, u32 b);
void ov14_021F391C(void *a, u32 b);
void ov14_021F2A18(void *a, u32 b, u32 c);
void ov14_021F68C0(void *self, u32 a, u32 b);
void ov14_021F5FBC(void *self, u32 b);

u32 ov14_021EED28(char *self)
{
    u32 callerR3;
    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");
    u32 slot = callerR3;
    u8 *pos = (u8 *)&slot;
    u32 idx;

    if (ov14_021F2A04(*(void **)(self + 0x34), 0xb) != 0) {
        return 0x79;
    }
    idx = *(u8 *)(self + 0x21);
    if (idx >= 0x1e) {
        idx = (idx - 0x1e) & 0xffff;
    }
    GridInputHandler_SetNextInput(*(void **)(*(char **)(self + 0x34) + 0x2c), (u8)idx);
    void *box = GridInputHandler_GetDpadBox(*(void **)(*(char **)(self + 0x34) + 0x2c), idx);
    DpadMenuBox_GetPosition(box, &pos[1], &pos[0]);
    ManagedSprite_SetPositionXY(*(void **)(*(char **)(self + 0x34) + 0x320), pos[1], pos[0]);
    ov14_021F391C(*(void **)(self + 0x34), 0);
    ov14_021F2A18(*(void **)(self + 0x34), 0xb, 0);
    ov14_021F68C0(self, 3, 0x25);
    ov14_021F5FBC(self, 0);
    *(u16 *)(*(char **)(self + 0x34) + 0x88c8) = 0;
    *(u32 *)(self + 0x30) = 0x77;
    return 6;
}
