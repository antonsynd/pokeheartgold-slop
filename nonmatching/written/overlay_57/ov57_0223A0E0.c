#include "global.h"

#include "sprite_system.h"

typedef struct UnkStruct_ov57_0223A0E0 {
    u8 padding_000[0xE0];
    SpriteSystem *unk_E0;
    u8 padding_E4[0x3F4 - 0xE4];
    u32 unk_3F4;
} UnkStruct_ov57_0223A0E0;

typedef int (*UnkFunc_ov57_0223A0E0)(UnkStruct_ov57_0223A0E0 *, u32, u32, u32);

extern UnkFunc_ov57_0223A0E0 ov57_0223BEB8[];

int ov57_0223A0E0(UnkStruct_ov57_0223A0E0 *param0) {
    u32 callerR3;
    UnkFunc_ov57_0223A0E0 v0;
    int v1;

    __asm__ volatile("movs %0, r3" : "=l"(callerR3) : : "cc");

    v0 = ov57_0223BEB8[param0->unk_3F4];
    v1 = v0(param0, (u32)v0, param0->unk_3F4 << 2, callerR3);
    SpriteSystem_DrawSprites(param0->unk_E0);
    return v1;
}
