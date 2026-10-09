#include "global.h"

#include "sprite.h"
#include "system.h"

typedef struct UnkStruct_ov34_0225E58C {
    u8 unk0[0x198];
    Sprite *unk198[2];
    u8 unk1A0[0xF8];
    u8 unk298;
    s8 unk299;
    u8 unk29A;
    u8 unk29B;
    int unk29C;
    u16 unk2A0[2];
} UnkStruct_ov34_0225E58C;

void ov34_0225E58C(UnkStruct_ov34_0225E58C *work);
BOOL ov34_0225E5D4(UnkStruct_ov34_0225E58C *work);
void ov34_0225E5DC(UnkStruct_ov34_0225E58C *work, int a1);
int ov34_0225E5E4(UnkStruct_ov34_0225E58C *work);
void ov34_0225E5EC(UnkStruct_ov34_0225E58C *work, int index);
void ov34_0225E630(UnkStruct_ov34_0225E58C *work);

void ov34_0225E58C(UnkStruct_ov34_0225E58C *work) {
    work->unk298 = 0;
    if (gSystem.touchNew != 0) {
        work->unk298 = 1;
        return;
    }
    if (gSystem.touchHeld != 0) {
        work->unk299--;
        if (work->unk299 < 0) {
            work->unk298 = 1;
            work->unk299 = work->unk29B;
        }
    } else {
        work->unk299 = work->unk29A;
    }
}

BOOL ov34_0225E5D4(UnkStruct_ov34_0225E58C *work) {
    return work->unk298;
}

void ov34_0225E5DC(UnkStruct_ov34_0225E58C *work, int a1) {
    work->unk29C = a1;
}

int ov34_0225E5E4(UnkStruct_ov34_0225E58C *work) {
    return work->unk29C;
}

void ov34_0225E5EC(UnkStruct_ov34_0225E58C *work, int index) {
    u16 frame = Sprite_GetAnimationFrame(work->unk198[index]);
    u16 seq = Sprite_GetAnimationNumber(work->unk198[index]);
    if (frame != 0 || seq != index + 4) {
        Sprite_SetAnimCtrlSeq(work->unk198[index], index + 4);
    }
    work->unk2A0[index] = 1;
}

void ov34_0225E630(UnkStruct_ov34_0225E58C *work) {
    int i;
    for (i = 0; i < 2; i++) {
        Sprite_GetAnimationFrame(work->unk198[i]);
        if (work->unk2A0[i] == 1) {
            Sprite_SetAnimActiveFlag(work->unk198[i], FALSE);
            work->unk2A0[i] = 0;
        } else if (!Sprite_GetAnimActiveFlag(work->unk198[i])) {
            Sprite_SetAnimActiveFlag(work->unk198[i], TRUE);
            Sprite_SetAnimationFrame(work->unk198[i], 1);
        }
    }
}
