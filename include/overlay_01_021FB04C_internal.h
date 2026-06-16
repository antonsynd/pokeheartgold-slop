#ifndef POKEHEARTGOLD_OVERLAY_01_021FB04C_INTERNAL_H
#define POKEHEARTGOLD_OVERLAY_01_021FB04C_INTERNAL_H

#include "global.h"

#include "constants/heap.h"

#include "filesystem.h"
#include "heap.h"
#include "sys_task_api.h"

typedef struct UnkStruct_Ov01_021FB04C {
    void *unk00; // 0x00
    void *unk04; // 0x04
    void *unk08; // 0x08
    void *unk0C; // 0x0c
    void *unk10; // 0x10
    void *unk14; // 0x14
    u32 unk18;   // 0x18
    u32 unk1C;   // 0x1c
} UnkStruct_Ov01_021FB04C;

typedef struct UnkStruct_Ov01_021FB04C_Header {
    u32 unk00; // 0x00
    u32 unk04; // 0x04
    u32 unk08; // 0x08
    u32 unk0C; // 0x0c
    u32 unk10; // 0x10
    u32 unk14; // 0x14
} UnkStruct_Ov01_021FB04C_Header;

typedef struct UnkStruct_Ov01_021FB174 {
    u8 unk00[0x48];                       // 0x00
    u32 unk48;                            // 0x48
    UnkStruct_Ov01_021FB04C_Header unk4C; // 0x4c
    u32 unk64;                            // 0x64
    u8 unk68;                             // 0x68
    void *unk6C;                          // 0x6c
    UnkStruct_Ov01_021FB04C *unk70;       // 0x70
    u32 unk74;                            // 0x74
    u32 *unk78;                           // 0x78
    NARC *unk7C;                          // 0x7c
    void *unk80;                          // 0x80
    u32 *unk84;                           // 0x84
} UnkStruct_Ov01_021FB174;

UnkStruct_Ov01_021FB04C *ov01_021FB254(void);
void ov01_021FB270(NARC *narc, void *a1, UnkStruct_Ov01_021FB04C *output, void *base);
void ov01_021FB2E8(void *ptr);
void ov01_021FB2F4(UnkStruct_Ov01_021FB04C *output);
SysTask *ov01_021FB308(NARC *narc, void *a1, UnkStruct_Ov01_021FB04C *output, u32 *a3, void **a4, u32 *a5);
void ov01_021FB354(SysTask *task);
void ov01_021FB360(UnkStruct_Ov01_021FB04C *output);

#endif // POKEHEARTGOLD_OVERLAY_01_021FB04C_INTERNAL_H
