#include "global.h"
#include "sprite_system.h"

#define U8AT(p, off)  (*(u8 *)((u8 *)(p) + (off)))
#define PTRAT(p, off) (*(void **)((u8 *)(p) + (off)))

extern const UnmanagedSpriteTemplate ov108_021EA7F8;
extern const UnmanagedSpriteTemplate ov108_021EA820;
extern const UnmanagedSpriteTemplate ov108_021EA848;
extern const UnmanagedSpriteTemplate ov108_021EA870;

extern void *ov108_021E8540(void *a0, u16 x, u16 y, int a3, int a4, u8 a5, u8 a6, int a7);
extern void ov108_021E756C(void *data);

void ov108_021E733C(void *data) {
    int i;

    for (i = 0; i < 6; i++) {
        int col = i % 3;
        int row = i / 3;
        PTRAT(data, 0x36C + i * 4) = ov108_021E8540(PTRAT(data, 0x348), (u16)(col * 0x48 + 0x38), (u16)(row * 0x48 + 0x38), 2, 0x80, (u8)i, U8AT(data, 0x1C + i * 0x7A), 1);
    }
    for (i = 0; i < 6; i++) {
        int col = i % 3;
        int row = i / 3;
        PTRAT(data, 0x384 + i * 4) = ov108_021E8540(PTRAT(data, 0x348), (u16)(col * 0x50 + 0x30), (u16)(row * 0x48 + 0x38), 3, 0x80, (u8)(i + 6), (u8)(i + U8AT(data, 0x184DE) * 6), 1);
    }
    PTRAT(data, 0x354) = SpriteSystem_CreateSpriteFromResourceHeader(PTRAT(data, 0x34C), PTRAT(data, 0x350), &ov108_021EA7F8);
    PTRAT(data, 0x358) = SpriteSystem_CreateSpriteFromResourceHeader(PTRAT(data, 0x34C), PTRAT(data, 0x350), &ov108_021EA7F8);
    PTRAT(data, 0x360) = SpriteSystem_CreateSpriteFromResourceHeader(PTRAT(data, 0x34C), PTRAT(data, 0x350), &ov108_021EA7F8);
    PTRAT(data, 0x35C) = SpriteSystem_CreateSpriteFromResourceHeader(PTRAT(data, 0x34C), PTRAT(data, 0x350), &ov108_021EA820);
    PTRAT(data, 0x364) = SpriteSystem_CreateSpriteFromResourceHeader(PTRAT(data, 0x34C), PTRAT(data, 0x350), &ov108_021EA848);
    PTRAT(data, 0x368) = SpriteSystem_CreateSpriteFromResourceHeader(PTRAT(data, 0x34C), PTRAT(data, 0x350), &ov108_021EA870);
    thunk_Sprite_SetPriority(PTRAT(data, 0x358), 3);
    thunk_Sprite_SetPriority(PTRAT(data, 0x364), 3);
    thunk_Sprite_SetPriority(PTRAT(data, 0x368), 3);
    thunk_Sprite_SetPriority(PTRAT(data, 0x360), 0);
    thunk_Sprite_SetDrawPriority(PTRAT(data, 0x360), 5);
    thunk_Sprite_SetDrawFlag(PTRAT(data, 0x354), 0);
    thunk_Sprite_SetDrawFlag(PTRAT(data, 0x358), 0);
    thunk_Sprite_SetDrawFlag(PTRAT(data, 0x360), 0);
    thunk_Sprite_SetDrawFlag(PTRAT(data, 0x35C), 0);
    ov108_021E756C(data);
}
