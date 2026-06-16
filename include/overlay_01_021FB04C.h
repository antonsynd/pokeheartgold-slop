#ifndef POKEHEARTGOLD_OVERLAY_01_021FB04C_H
#define POKEHEARTGOLD_OVERLAY_01_021FB04C_H

#include "filesystem.h"
#include "sys_task.h"

typedef struct UnkStruct_Ov01_021FB04C UnkStruct_Ov01_021FB04C;

UnkStruct_Ov01_021FB04C *ov01_021FB254(void);
void ov01_021FB270(NARC *narc, void *a1, UnkStruct_Ov01_021FB04C *output, void *base);
void ov01_021FB2E8(void *ptr);
void ov01_021FB2F4(UnkStruct_Ov01_021FB04C *output);
SysTask *ov01_021FB308(NARC *narc, void *a1, UnkStruct_Ov01_021FB04C *output, u32 *a3, void **a4, u32 *a5);
void ov01_021FB354(SysTask *task);
void ov01_021FB360(UnkStruct_Ov01_021FB04C *output);

#endif // POKEHEARTGOLD_OVERLAY_01_021FB04C_H
