#include "global.h"
#include "sprite_system.h"

extern s32 _s32_div_f(s32 num, s32 den);
void *ov96_021EA854(u32 heapId, u32 param1, u32 param2, void *param3, SpriteList *list);
void ov96_021E6168(void *course, int quot, int rem, void *out);
void ov96_021E60C0(void *course, int quot, int rem);
u32 ov96_021E6108(void);
void ov96_021EA8A8(u32 a0, u32 a1, void *a2, void *a3, u32 a4, u32 a5);

typedef struct UnkStruct_ov96_02217AE4 {
    u32 unk00;
    u8 unk04[8];
    void *unk0C;
    u8 unk10[8];
    void *unk18;
    u32 unk1C;
} UnkStruct_ov96_02217AE4;

void ov96_02217AE4(UnkStruct_ov96_02217AE4 *param_1, u32 param_2)
{
    u32 arr[17];
    u8 buf[12][16];
    u32 i;
    u32 rem;
    s32 quot;
    SpriteList *list;
    volatile s32 three = 3;

    list = SpriteManager_GetSpriteList((SpriteManager *)param_1->unk0C);
    param_1->unk1C = (u32)ov96_021EA854(param_1->unk00, 0xc, 7, param_1->unk18, list);

    for (i = 0; i < 17; i++) {
        arr[i] = 0;
    }

    for (i = 0; i < 12; i++) {
        quot = _s32_div_f(i, three);
        __asm__ volatile("movs %0, r1" : "=l"(rem) : : "cc");
        _s32_div_f(i, three);
        ov96_021E6168((void *)param_2, quot, rem, buf[i]);
        ov96_021E60C0((void *)param_2, quot, rem);
        arr[5 + i] = ov96_021E6108();
    }

    arr[1] = 3;
    arr[3] = 1;
    arr[4] = 1;
    ov96_021EA8A8(param_1->unk1C, 0xc, buf, arr, 0, 0);
}
