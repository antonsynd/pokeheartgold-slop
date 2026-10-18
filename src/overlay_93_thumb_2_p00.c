#include "global.h"

#include "bg_window.h"
#include "filesystem.h"
#include "gf_gfx_loader.h"
#include "sound.h"

typedef struct Ov93Gfx {
    u16 charId;
    u16 scrnId;
    u8 filler_4[4];
} Ov93Gfx;

typedef struct Ov93Values {
    u32 values[3];
} Ov93Values;

typedef struct Ov93Obj {
    BOOL active;
    int index;
    u8 filler_08[4];
    u32 value;
    u8 filler_10[0x1C];
    u8 unk2C;
    u8 filler_2D[3];
} Ov93Obj;

extern const Ov93Gfx ov93_02262CEC[];
extern const Ov93Values ov93_02262FD4[];

void ov93_0225FCA4(BgConfig *bgConfig, Ov93Obj *obj, int a2);

void ov93_0225FBF0(BgConfig *bgConfig, int row, int index, Ov93Obj *obj) {
    NARC *narc = NARC_New(NARC_a_1_9_9, HEAP_ID_117);

    GfGfxLoader_LoadCharDataFromOpenNarc(narc, ov93_02262CEC[index].charId, bgConfig, GF_BG_LYR_SUB_3, 0, 0, FALSE, HEAP_ID_117);
    GfGfxLoader_LoadScrnDataFromOpenNarc(narc, ov93_02262CEC[index].scrnId, bgConfig, GF_BG_LYR_SUB_3, 0, 0, FALSE, HEAP_ID_117);
    NARC_Delete(narc);
    MI_CpuFill8(obj, 0, sizeof(Ov93Obj));
    obj->value = ov93_02262FD4[row].values[index];
    obj->index = index;
    obj->active = TRUE;
    obj->unk2C = TRUE;
    ov93_0225FCA4(bgConfig, obj, row);
    PlaySE(SEQ_SE_DP_BOX02);
}
