#include "global.h"
#include "assert.h"
#include "error_handling.h"
#include "heap.h"
#include "message_format.h"
#include "msgdata.h"
#include "pm_string.h"

typedef struct UnkStruct_ov39_02227208_Param {
    u32 unk_00;
    enum HeapID heapID;
    u32 unk_08;
    u32 unk_0C[11];
    u32 unk_38;
    u32 unk_3C;
} UnkStruct_ov39_02227208_Param;

typedef struct UnkStruct_ov39_02227208 {
    u32 unk_00;
    u32 unk_04;
    u32 unk_08;
    u32 unk_0C;
    u8 unk_10;
    u8 unk_11;
    u8 filler_012[0x144 - 0x12];
    u32 unk_144;
    u8 filler_148[4];
    s32 unk_14C;
    u32 unk_150[11];
    u8 filler_17C[0x18C - 0x17C];
    void *unk_18C;
    u8 filler_190[0x3B4 - 0x190];
    void *unk_3B4;
    u32 unk_3B8;
    u8 filler_3BC[0x3C4 - 0x3BC];
    u32 unk_3C4;
    u8 filler_3C8[0x3E8 - 0x3C8];
    u32 unk_3E8;
    u32 unk_3EC;
    u8 filler_3F0[0x3F4 - 0x3F0];
    MsgData *unk_3F4;
    MessageFormat *unk_3F8;
    String *unk_3FC;
    u8 filler_400[0x414 - 0x400];
} UnkStruct_ov39_02227208;

u32 ov39_0222A2C0(s32 a0);
int ov39_0222A110(void *a0);
void *ov39_02227DEC(enum HeapID heapID);

void ov39_02227208(UnkStruct_ov39_02227208 *dst, UnkStruct_ov39_02227208_Param *src) {
    int i;

    MI_CpuFill8(dst, 0, sizeof(UnkStruct_ov39_02227208));

    dst->unk_144 = src->heapID;
    dst->unk_00 = src->unk_08;
    for (i = 0; i < 11; i++) {
        dst->unk_150[i] = src->unk_0C[i];
    }
    dst->unk_08 = src->unk_3C;
    dst->unk_04 = src->unk_38;
    dst->unk_14C = -1;
    dst->unk_3E8 = 0x59DC;
    dst->unk_3EC = 0x59DC;
    dst->unk_3B4 = Heap_Alloc(src->heapID, ov39_0222A2C0(-1));
    MI_CpuFill8(dst->unk_3B4, 0, ov39_0222A2C0(-1));
    dst->unk_3F4 = NewMsgDataFromNarc(0, 0x1B, 0x320, src->heapID);
    dst->unk_3F8 = MessageFormat_New(src->heapID);
    dst->unk_3FC = String_New(0x100, src->heapID);
    dst->unk_18C = ov39_02227DEC(src->heapID);
    dst->unk_0C = src->unk_00;
    dst->unk_10 = GAME_VERSION;
    dst->unk_11 = 2;
    GF_ASSERT(ov39_0222A110(&dst->unk_0C) == 1);
    dst->unk_3C4 = 1;
    dst->unk_3B8 = 1;
}
