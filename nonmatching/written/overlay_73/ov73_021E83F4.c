typedef unsigned int u32;
typedef int s32;

extern void *_021EA940[];

u32 OS_DisableInterrupts(void);
u32 OS_RestoreInterrupts(u32 state);
void *NNS_FndAllocFromExpHeapEx(void *heap, u32 size, s32 align);

void *ov73_021E83F4(u32 unused, u32 size, s32 align)
{
    u32 state = OS_DisableInterrupts();
    void *p = NNS_FndAllocFromExpHeapEx(_021EA940[1], size, align);
    OS_RestoreInterrupts(state);
    return p;
}
