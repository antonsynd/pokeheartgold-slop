typedef unsigned char u8;
typedef unsigned short u16;
typedef unsigned int u32;
typedef short s16;

void *Heap_Alloc(int heapId, u32 size);
void *GridInputHandler_GetDpadBox(void *inputHandler, int target);
void DpadMenuBox_GetPosition(const void *dpadBoxes, u8 *px, u8 *py);

void ov14_021F7AC4(void *app, int boxA, int boxB)
{
    u32 callerR3;
    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");
    u32 slot = callerR3; // stack slot filled by push {r3, ...}, read back as bytes
    u8 *pos = (u8 *)&slot; // pos[3] = x1, pos[2] = y1, pos[1] = x2, pos[0] = y2
    void *handler = *(void **)((u8 *)app + 0x2c);
    void *box;
    u8 *work;
    u32 *flags;

    box = GridInputHandler_GetDpadBox(handler, boxA);
    DpadMenuBox_GetPosition(box, &pos[3], &pos[2]);
    box = GridInputHandler_GetDpadBox(handler, boxB);
    DpadMenuBox_GetPosition(box, &pos[1], &pos[0]);

    work = (u8 *)Heap_Alloc(10, 8);
    flags = (u32 *)(work + 4);
    *flags = (*flags & 3) | 0x10;
    work[0] = pos[3];
    work[1] = pos[2];
    if (pos[3] >= pos[1]) {
        work[2] = pos[3] - pos[1];
        *flags = *flags & ~1u;
    } else {
        work[2] = pos[1] - pos[3];
        *flags = (*flags & ~1u) | 1;
    }
    if (pos[2] >= pos[0]) {
        work[3] = pos[2] - pos[0];
        *flags = *flags & ~2u;
    } else {
        work[3] = pos[0] - pos[2];
        *flags = *flags | 2;
    }
    work[2] = (u32)((u32)work[2] << 8) / (*flags >> 2) >> 8;
    work[3] = (u32)((u32)work[3] << 8) / (*flags >> 2) >> 8;
    *(void **)((u8 *)app + 0xc) = work;
}
