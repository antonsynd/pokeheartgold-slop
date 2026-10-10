typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef short s16;

void GridInputHandler_SetNextInput(void *inputHandler, int nextInput);
void *GridInputHandler_GetDpadBox(void *inputHandler, int target);
void DpadMenuBox_GetPosition(const void *dpadBoxes, u8 *px, u8 *py);
void ManagedSprite_SetPositionXY(void *managedSprite, s16 x, s16 y);
void ov14_021F29E4(void *sys, int a1, int a2);

void ov14_021F7688(void *app, int idx)
{
    u32 callerR3;
    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");
    u32 slot = callerR3; // stack slot filled by push {r3, ...}, read back as bytes
    u8 *pos = (u8 *)&slot; // pos[0] = y, pos[1] = x
    void *sys = *(void **)((u8 *)app + 0x34);
    if ((u32)(idx - 6) <= 1) {
        idx = (int)*((u8 *)app + 0x25) % 6;
        *(int *)((u8 *)sys + 0x43c) = idx;
    }
    sys = *(void **)((u8 *)app + 0x34);
    GridInputHandler_SetNextInput(*(void **)((u8 *)sys + 0x2c), (u8)idx);
    sys = *(void **)((u8 *)app + 0x34);
    void *box = GridInputHandler_GetDpadBox(*(void **)((u8 *)sys + 0x2c), idx);
    DpadMenuBox_GetPosition(box, &pos[1], &pos[0]);
    sys = *(void **)((u8 *)app + 0x34);
    ManagedSprite_SetPositionXY(*(void **)((u8 *)sys + 0x320), pos[1], pos[0]);
    if (idx >= 0 && idx <= 5) {
        ov14_021F29E4(*(void **)((u8 *)app + 0x34), 9, 0xe);
    } else {
        ov14_021F29E4(*(void **)((u8 *)app + 0x34), 9, 8);
    }
}
