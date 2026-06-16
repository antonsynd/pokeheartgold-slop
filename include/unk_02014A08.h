#ifndef POKEHEARTGOLD_UNK_02014A08_H
#define POKEHEARTGOLD_UNK_02014A08_H

#include "global.h"

#include "heap.h"
#include "sys_task.h"

typedef struct UnkStruct_02014A08 {
    void *buffers[2];
    u8 curBuffer;
    u8 enabled;
    u8 unk_0A;
    u8 unk_0B;
} UnkStruct_02014A08;

typedef struct UnkStruct_02014AD8 {
    u8 buffers[0x600];
    UnkStruct_02014A08 *doubleBuf;
    SysTask *task;
    u32 unk_608;
    s16 sineTable[0xC0];
    u8 startLine;
    u8 endLine;
    u8 unk_78E[2];
    void *unk_790;
    u32 fillValue;
    s16 phase;
    s16 speed;
} UnkStruct_02014AD8;

UnkStruct_02014A08 *sub_02014A08(enum HeapID heapId, void *buf0, void *buf1);
void sub_02014A38(UnkStruct_02014A08 *self);
void *sub_02014A4C(UnkStruct_02014A08 *self);
void *sub_02014A60(UnkStruct_02014A08 *self);
void sub_02014A78(UnkStruct_02014A08 *self, BOOL enabled);
void sub_02014A8C(UnkStruct_02014A08 *self);
void sub_02014AA0(void);
void sub_02014AB0(const void *src, void *dst, u32 size, int mode);
UnkStruct_02014AD8 *sub_02014AD8(enum HeapID heapId);
void sub_02014B08(UnkStruct_02014AD8 *self, u8 startLine, u8 endLine, int step, fx32 amplitude, s16 speed, void *reg, u32 fillValue, u32 priority);
void sub_02014B9C(UnkStruct_02014AD8 *self);
void sub_02014BD8(UnkStruct_02014AD8 *self);
void *sub_02014BF8(UnkStruct_02014AD8 *self);
void sub_02014C08(UnkStruct_02014AD8 *self);
void sub_02014C40(UnkStruct_02014AD8 *self);

#endif // POKEHEARTGOLD_UNK_02014A08_H
