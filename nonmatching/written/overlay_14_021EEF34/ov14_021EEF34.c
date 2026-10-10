typedef unsigned char u8;
typedef unsigned short u16;
typedef short s16;
typedef unsigned int u32;

void GridInputHandler_SetNextInput(void *h, int next);
void *GridInputHandler_GetDpadBox(void *h, u32 idx);
void DpadMenuBox_GetPosition(void *box, u8 *px, u8 *py);
void ManagedSprite_SetPositionXY(void *spr, s16 x, s16 y);
void ov14_021F6768(void *self, u32 a, u32 b);

u32 ov14_021EEF34(char *self)
{
    u32 callerR3;
    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");
    u32 slot = callerR3;
    u8 *pos = (u8 *)&slot;
    u32 idx = *(u8 *)(self + 0x21);
    char *sub;
    if (idx >= 0x1e) {
        idx = (idx - 0x1e) & 0xffff;
    }
    sub = *(char **)(self + 0x34);
    GridInputHandler_SetNextInput(*(void **)(sub + 0x2c), (u8)idx);
    sub = *(char **)(self + 0x34);
    void *box = GridInputHandler_GetDpadBox(*(void **)(sub + 0x2c), idx);
    DpadMenuBox_GetPosition(box, &pos[1], &pos[0]);
    sub = *(char **)(self + 0x34);
    ManagedSprite_SetPositionXY(*(void **)(sub + 0x320), pos[1], pos[0]);
    ov14_021F6768(self, *(u16 *)(self + 0x1c), 0x25);
    *(u32 *)(self + 0x30) = 0x77;
    return 6;
}
