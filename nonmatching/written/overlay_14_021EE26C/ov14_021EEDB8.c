typedef unsigned char u8;
typedef unsigned short u16;
typedef short s16;
typedef unsigned int u32;
typedef signed char s8;

void GridInputHandler_SetNextInput(void *h, int next);
void *GridInputHandler_GetDpadBox(void *h, u32 idx);
void DpadMenuBox_GetPosition(void *box, u8 *px, u8 *py);
void ManagedSprite_SetPositionXY(void *spr, s16 x, s16 y);
void ov14_021E8248(void *spr);
void ov14_021E82A8(void *spr);
void ov14_021E8328(void *spr);
void ov14_021E88F8(void *spr);
void ov14_021F3488(void *self, u32 a, u32 b);
void ov14_021F40DC(void *self);
void ov14_021F391C(void *a, u32 b);
void ov14_021F29E4(void *a, u32 b, u32 c);
void ov14_021F6654(void *a, u32 b);
u32 ov14_021F0234(void *self, void *fn, u32 b);
void ov14_021E9450(void);

u32 ov14_021EEDB8(char *self)
{
    u32 callerR3;
    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");
    u32 slot = callerR3;
    u8 *pos = (u8 *)&slot;
    u32 idx = *(u8 *)(self + 0x21);

    if (idx < 0x1e) {
        ov14_021E8248(*(void **)(*(char **)(self + 0x34) + 0x2f0));
        ov14_021E82A8(*(void **)(*(char **)(self + 0x34) + 0x2f0));
        ov14_021F3488(self, 0x81, 1);
    } else {
        idx = (idx - 0x1e) & 0xffff;
        ov14_021F3488(self, 0x82, 1);
    }
    ov14_021E8328(*(void **)(*(char **)(self + 0x34) + 0x2f0));
    GridInputHandler_SetNextInput(*(void **)(*(char **)(self + 0x34) + 0x2c), (u8)idx);
    void *box = GridInputHandler_GetDpadBox(*(void **)(*(char **)(self + 0x34) + 0x2c), idx);
    DpadMenuBox_GetPosition(box, &pos[1], &pos[0]);
    ManagedSprite_SetPositionXY(*(void **)(*(char **)(self + 0x34) + 0x320), pos[1], pos[0]);
    ov14_021F40DC(self);
    ov14_021F391C(*(void **)(self + 0x34), 1);
    ov14_021F29E4(*(void **)(self + 0x34), 0xb, 2);
    ov14_021E88F8(*(void **)(*(char **)(self + 0x34) + 0x2f0));
    ov14_021F6654(*(void **)(self + 0x34), 0x25);
    if (*(u8 *)(self + 0x21) < 0x1e) {
        ov14_021F3488(self, 0x81, 1);
    } else {
        ov14_021F3488(self, 0x82, 1);
    }
    return ov14_021F0234(self, (void *)ov14_021E9450, 0x7b);
}
