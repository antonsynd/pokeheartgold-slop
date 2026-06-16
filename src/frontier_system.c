#include <nitro/mi/memory.h>

#include "global.h"

#include "frontier/frontier_map.h"
#include "frontier/frontier_script_context.h"

#include "assert.h"
#include "filesystem.h"
#include "heap.h"
#include "message_format.h"
#include "pm_string.h"

typedef struct FrontierSystemWork {
    /* 0x00 */ void *unk0;
    /* 0x04 */ FrontierScriptContext *tasks[8];
    /* 0x24 */ u16 unk24[8];
    /* 0x34 */ enum HeapID heapId;
    /* 0x38 */ u8 unk38;
    /* 0x39 */ u8 padding_39[3];
    /* 0x3C */ MsgData *msgData;
    /* 0x40 */ void *narc;
    /* 0x44 */ MessageFormat *messageFormat;
    /* 0x48 */ String *unk48;
    /* 0x4C */ String *unk4C;
    /* 0x50 */ u8 padding_50;
    /* 0x51 */ s8 taskCount;
    /* 0x52 */ u16 unk52;
    /* 0x54 */ u8 padding_54[0xBC - 0x54];
} FrontierSystemWork;

extern s32 ov80_0222ACA0(s32 a0, s32 a1);
extern void ov80_02239C54(void *a0);
extern u32 ov80_0223B9CC;
extern const FrontierScrCmdFunc gFrontierCommandTable[];
extern void *sub_0209680C(void *a0);

FrontierSystemWork *FrontierSystem_Create(void *frontierData, enum HeapID heapId, int mode);
int FrontierSystem_Main(FrontierSystemWork *sys);
void ov80_0222A920(FrontierSystemWork *sys);
void FrontierSystem_AddTask(FrontierSystemWork *sys, int a1, int a2);
void ov80_0222AA7C(FrontierSystemWork *sys, int a1, enum HeapID heapId);
void *ov80_0222AAD8(FrontierSystemWork *sys, enum HeapID heapId);
void ov80_0222AAF8(FrontierSystemWork *sys, void *src);
void *ov80_0222AB2C(FrontierSystemWork *sys, int idx);

static int ov80_0222A9DC(FrontierSystemWork *sys, FrontierScriptContext *ctx);
static void ov80_0222AA0C(FrontierSystemWork *sys, FrontierScriptContext *ctx);
static void FrontierSystem_deadstripped_0222AA3C(FrontierSystemWork *sys, u16 a1, int a2, int a3);
static void ov80_0222AA40(void **outNarc, MsgData **outMsg, int mode, enum HeapID heapId);
static void ov80_0222AB14(FrontierScriptContext *ctx, int a1);

FrontierSystemWork *FrontierSystem_Create(void *frontierData, enum HeapID heapId, int mode) {
    FrontierSystemWork *sys = Heap_Alloc(heapId, 0xBC);
    MI_CpuFill8(sys, 0, 0xBC);
    sys->unk0 = frontierData;
    sys->heapId = heapId;
    sys->unk52 = mode;
    ov80_0222AA40(&sys->narc, &sys->msgData, mode, heapId);
    sys->messageFormat = MessageFormat_New_Custom(8, 0x40, heapId);
    sys->unk48 = String_New(1 << 0xa, heapId);
    sys->unk4C = String_New(1 << 0xa, heapId);
    FrontierSystem_deadstripped_0222AA3C(sys, (u16)mode, 0, 0);
    return sys;
}

int FrontierSystem_Main(FrontierSystemWork *sys) {
    int i;
    FrontierScriptContext *ctx;

    if (sys->taskCount == 0) {
        return 1;
    }
    if (sys->unk38 == 0) {
        for (i = 0; i < 8; i++) {
            ctx = sys->tasks[i];
            if (ctx != NULL) {
                if (FrontierScriptContext_Run(ctx) == 0) {
                    ov80_0222AA0C(sys, ctx);
                    sys->tasks[i] = NULL;
                    sys->taskCount--;
                }
            }
        }
        ov80_02239C54(sys->unk0);
    }
    if (sys->taskCount == 0) {
        return 1;
    }
    return 0;
}

void ov80_0222A920(FrontierSystemWork *sys) {
    GF_ASSERT(sys->taskCount == 0);
    MessageFormat_Delete(sys->messageFormat);
    String_Delete(sys->unk48);
    String_Delete(sys->unk4C);
    Heap_Free(sys->narc);
    DestroyMsgData(sys->msgData);
    Heap_Free(sys);
}

void FrontierSystem_AddTask(FrontierSystemWork *sys, int a1, int a2) {
    FrontierScriptContext *ctx = Heap_Alloc(sys->heapId, 0x90);
    MI_CpuFill8(ctx, 0, 0x90);
    FrontierScriptContext_Init(ctx, gFrontierCommandTable, ov80_0223B9CC);
    ctx->frontierSystem = (FrontierSystem *)sys;
    if (a1 == 0xFFFF || sys->unk52 == a1) {
        ctx->scripts = sys->narc;
        ctx->msgLoader = sys->msgData;
    } else {
        ov80_0222AA40((void **)&ctx->scripts, &ctx->msgLoader, a1, sys->heapId);
    }
    FrontierScriptContext_Start(ctx, ctx->scripts);
    ov80_0222AB14(ctx, a2);
    ov80_0222A9DC(sys, ctx);
}

static int ov80_0222A9DC(FrontierSystemWork *sys, FrontierScriptContext *ctx) {
    int i;
    for (i = 0; i < 8; i++) {
        if (sys->tasks[i] == NULL) {
            sys->tasks[i] = ctx;
            sys->taskCount++;
            return 1;
        }
    }
    GF_AssertFail();
    return 0;
}

static void ov80_0222AA0C(FrontierSystemWork *sys, FrontierScriptContext *ctx) {
    if (ctx->msgLoader != sys->msgData) {
        DestroyMsgData(ctx->msgLoader);
    }
    if (ctx->scripts != (u8 *)sys->narc) {
        Heap_Free(ctx->scripts);
    }
    Heap_Free(ctx);
}

static void FrontierSystem_deadstripped_0222AA3C(FrontierSystemWork *sys, u16 a1, int a2, int a3) {
}

static void ov80_0222AA40(void **outNarc, MsgData **outMsg, int mode, enum HeapID heapId) {
    s32 a = ov80_0222ACA0(mode, 1);
    s32 b = ov80_0222ACA0(mode, 2);
    *outNarc = AllocAndReadWholeNarcMemberByIdPair((NarcId)0xB6, a, heapId);
    *outMsg = NewMsgDataFromNarc(MSGDATA_LOAD_LAZY, (NarcId)0x1B, b, heapId);
}

void ov80_0222AA7C(FrontierSystemWork *sys, int a1, enum HeapID heapId) {
    int i;
    FrontierScriptContext *ctx;
    s32 x = ov80_0222ACA0(sys->unk52, 2);
    s32 y = ov80_0222ACA0(a1, 2);
    if (x != y) {
        MsgData *newMsg = NewMsgDataFromNarc(MSGDATA_LOAD_LAZY, (NarcId)0x1B, y, heapId);
        for (i = 0; i < 8; i++) {
            ctx = sys->tasks[i];
            if (ctx != NULL && ctx->msgLoader == sys->msgData) {
                ctx->msgLoader = newMsg;
            }
        }
        DestroyMsgData(sys->msgData);
        sys->msgData = newMsg;
    }
}

void *ov80_0222AAD8(FrontierSystemWork *sys, enum HeapID heapId) {
    void *out = Heap_Alloc(heapId, 0x10);
    u16 *src = sys->unk24;
    u16 *dst = out;
    u32 i = 8;
    do {
        *dst++ = *src++;
    } while (--i);
    return out;
}

void ov80_0222AAF8(FrontierSystemWork *sys, void *src) {
    u16 *p = src;
    u16 *dst = sys->unk24;
    u32 i = 8;
    do {
        *dst++ = *p++;
    } while (--i);
    Heap_Free(src);
}

static void ov80_0222AB14(FrontierScriptContext *ctx, int a1) {
    ctx->scriptPtr += a1 * 4;
    ctx->scriptPtr += FrontierScriptContext_ReadWord(ctx);
}

void *ov80_0222AB2C(FrontierSystemWork *sys, int idx) {
    return &sys->unk24[idx];
}

FrontierMap *FrontierSystem_GetFrontierMap(FrontierSystem *frontierSystem) {
    return sub_0209680C(frontierSystem->unk0);
}
