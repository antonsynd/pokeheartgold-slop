#include "global.h"

#include "filesystem.h"
#include "heap.h"

typedef struct Ov14Sub {
    u8 filler_000[0x44D];
    u8 unk44D;
} Ov14Sub;

typedef struct Ov14_021F462C {
    u8 filler_00[0x34];
    Ov14Sub *sub;
} Ov14_021F462C;

void ov14_021F46B0(Ov14_021F462C *a0, u8 *buf, u32 a2, u32 a3, u32 size);
void ov14_021F2C1C(Ov14Sub *sub, int slot, u8 *buf, u32 size);

void ov14_021F462C(Ov14_021F462C *a0) {
    NNSG2dCharacterData *charData;
    void *narcData;
    u8 *buf;
    u32 i;
    int slot = 0x15;
    u32 tile = (a0->sub->unk44D / 4) * 4;

    buf = Heap_AllocAtEnd(HEAP_ID_10, 0x240);
    narcData = AllocAtEndAndReadWholeNarcMemberByIdPair(NARC_a_0_1_9, 0x4A, HEAP_ID_10);
    NNS_G2dGetUnpackedCharacterData(narcData, &charData);
    for (i = 0; i < 4; i++) {
        MI_CpuCopy8(charData->pRawData, buf, 0x240);
        ov14_021F46B0(a0, buf, tile, 0x1E, 0x240);
        ov14_021F2C1C(a0->sub, slot, buf, 0x240);
        slot++;
        tile++;
    }
    Heap_Free(narcData);
    Heap_Free(buf);
}
