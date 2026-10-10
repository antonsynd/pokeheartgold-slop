#include "global.h"
#include "assert.h"
#include "sprite.h"

Sprite *ov96_021E8BAC(u32 param0);

void ov96_021EAC5C(u32 *param0, int animId) {
    Sprite *sprite = ov96_021E8BAC(param0[0]);
    u32 seq;

    switch (animId) {
    case 0:
    case 4:
    case 8:
    case 0xc:
    case 0x10:
    case 0x14:
    case 0x15:
    case 0x16:
    case 0x1a:
        break;
    default:
        return;
    }
    param0[0xe] = animId;
    if (animId == 0x14 || animId == 0x15) {
        seq = (u8)animId;
    } else {
        switch (param0[0xd]) {
        case 1:
            seq = (u8)animId;
            break;
        case 2:
            seq = (u8)(animId + 1);
            break;
        case 3:
            seq = (u8)(animId + 2);
            break;
        case 4:
            seq = (u8)(animId + 3);
            break;
        default:
            GF_AssertFail();
            return;
        }
    }
    Sprite_TryChangeAnimSeq(sprite, seq);
}
