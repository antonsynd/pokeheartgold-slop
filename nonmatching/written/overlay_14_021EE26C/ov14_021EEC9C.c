typedef unsigned char u8;
typedef unsigned short u16;
typedef short s16;
typedef unsigned int u32;

void GridInputHandler_SetNextInput(void *h, int next);
void *GridInputHandler_GetDpadBox(void *h, u32 idx);
void DpadMenuBox_GetPosition(void *box, u8 *px, u8 *py);
void ManagedSprite_SetPositionXY(void *spr, s16 x, s16 y);
void PlaySE(u16 seq);
u32 ItemIdIsMail(u16 item);
void ov14_021F68C0(void *self, u32 a, u32 b);
u32 ov14_021F0254(void *self, u32 a);

u32 ov14_021EEC9C(char *self)
{
    u32 callerR3;
    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");
    u32 slot = callerR3;
    u8 *pos = (u8 *)&slot;

    if (*(u8 *)(self + 0x21) >= 0x1e && ItemIdIsMail(*(u16 *)(*(char **)(self + 0x34) + 0x88c8)) == 1) {
        u32 idx = (*(u8 *)(self + 0x21) - 0x1e) & 0xffff;
        GridInputHandler_SetNextInput(*(void **)(*(char **)(self + 0x34) + 0x2c), (u8)idx);
        void *box = GridInputHandler_GetDpadBox(*(void **)(*(char **)(self + 0x34) + 0x2c), idx);
        DpadMenuBox_GetPosition(box, &pos[1], &pos[0]);
        ManagedSprite_SetPositionXY(*(void **)(*(char **)(self + 0x34) + 0x320), pos[1], pos[0]);
        PlaySE(0x5f3);
        ov14_021F68C0(self, 4, 0x25);
        *(u32 *)(self + 0x30) = 0x77;
        return 6;
    }
    ov14_021F68C0(self, 2, 0x25);
    return ov14_021F0254(self, 2);
}
