#ifndef POKEHEARTGOLD_OVERLAY_01_021FCD2C_H
#define POKEHEARTGOLD_OVERLAY_01_021FCD2C_H

#include "constants/heap.h"

#include "field_system.h"
#include "sys_task.h"

SysTask *ov01_021FCD2C(FieldSystem *fieldSystem, enum HeapID heapId);
BOOL ov01_021FCD6C(SysTask *task);
void ov01_021FCD78(SysTask *task);
void ov01_021FCD8C(SysTask *task, int a1, fx32 a2, int a3);

#endif // POKEHEARTGOLD_OVERLAY_01_021FCD2C_H
