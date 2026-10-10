typedef unsigned char u8;
typedef unsigned int u32;
typedef int s32;
#define NULL ((void *)0)

void *OverlayManager_GetData(void *appMan);
void ov71_022473F0(void);

typedef void *(*TradePhaseNewFn)(void *, void *, u32, u32);
typedef s32 (*TradePhaseRunFn)(void *, void *, void *, u32);
typedef void (*TradePhaseFreeFn)(void *, void *, u32, u32);

typedef struct {
    TradePhaseNewFn New;
    TradePhaseRunFn Run;
    TradePhaseFreeFn Free;
    u32 tradeTypeFlags;
} UnkStruct_TradePhase;

extern UnkStruct_TradePhase ov71_0224BBEC[];

s32 TradeSequence_Main(void *appMan, s32 *state)
{
    u8 *data = OverlayManager_GetData(appMan);
    u32 phase = *(u32 *)(data + 4);

    if (phase >= 7) {
        return 1;
    }

    u32 tradeType = *(u32 *)(*(u8 **)data + 0x10);
    u32 flags = ov71_0224BBEC[phase].tradeTypeFlags;
    if ((tradeType & flags) == 0) {
        *(u32 *)(data + 4) = phase + 1;
        *state = 0;
    } else {
        if (*(void **)(data + 0x154) == NULL) {
            TradePhaseNewFn newFn = ov71_0224BBEC[phase].New;
            *(void **)(data + 0x154) = newFn(data, newFn, phase << 4, phase);
        }
        u32 phase2 = *(u32 *)(data + 4);
        TradePhaseRunFn runFn = ov71_0224BBEC[phase2].Run;
        s32 done = runFn(*(void **)(data + 0x154), state, runFn, phase2 << 4);
        u32 r3v;
        __asm__ volatile("movs %0, r3" : "=l"(r3v) : : "cc");
        if (done != 0) {
            u32 phase3 = *(u32 *)(data + 4);
            TradePhaseFreeFn freeFn = ov71_0224BBEC[phase3].Free;
            freeFn(*(void **)(data + 0x154), freeFn, phase3 << 4, r3v);
            *(void **)(data + 0x154) = NULL;
            *(u32 *)(data + 4) = *(u32 *)(data + 4) + 1;
            *state = 0;
        }
    }
    ov71_022473F0();
    return 0;
}
