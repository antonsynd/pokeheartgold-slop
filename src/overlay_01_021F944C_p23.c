#include "global.h"

#include "gf_3d_loader.h"

typedef struct Ov01_021F9918 {
    u8 filler_00[0xF0];
    GF_3DGfxRawResMan *resMan;
} Ov01_021F9918;

BOOL ov01_021FA524(Ov01_021F9918 *a0, u32 spriteId);
int GetMoveModelNoBySpriteId(u32 spriteId);
BOOL ov01_021FA470(Ov01_021F9918 *a0, u32 spriteId, int moveModelNo, int a3);

int ov01_021F9918(Ov01_021F9918 *a0, int a1, u32 spriteId) {
    int moveModelNo;

    if (!GF3dGfxRawResMan_DoesNotHaveObjWithId(a0->resMan, spriteId)) {
        return 0;
    }
    if (ov01_021FA524(a0, spriteId)) {
        return 1;
    }
    moveModelNo = GetMoveModelNoBySpriteId(spriteId);
    if (moveModelNo < 0) {
        return 2;
    }
    switch (ov01_021FA470(a0, spriteId, moveModelNo, a1)) {
    case TRUE:
        return 0;
    default:
        return 1;
    }
}
