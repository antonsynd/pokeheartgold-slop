#include "global.h"

#include "constants/sndseq.h"

#include "sound_02004A44.h"
#include "touchscreen.h"

typedef struct Ov109_021E638C {
    u8 filler_00[0xC];
    int unk0C;
    u8 filler_10[0xB];
    u8 unk1B;
    u8 unk1C;
} Ov109_021E638C;

extern const TouchscreenHitbox ov109_021E7A18[];

void ov109_021E75B4(Ov109_021E638C *a0);
void ov109_021E7474(Ov109_021E638C *a0, u8 a1, u8 a2, int a3);
int ov109_021E628C(Ov109_021E638C *a0, u8 a1);

int ov109_021E638C(Ov109_021E638C *a0, int *out) {
    u32 hit = TouchscreenHitbox_FindRectAtTouchNew(ov109_021E7A18);

    if (hit == -1) {
        return 5;
    }
    if (a0->unk0C == 0) {
        ov109_021E75B4(a0);
    }
    *out = 1;
    if (hit < 12) {
        a0->unk1B = hit & 3;
        a0->unk1C = hit >> 2;
        ov109_021E7474(a0, a0->unk1B, a0->unk1C, 1);
        PlaySE(SEQ_SE_DP_SELECT);
    }
    return ov109_021E628C(a0, hit);
}
