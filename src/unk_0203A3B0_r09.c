#include "global.h"

typedef struct NetworkIcon {
    int unk00;
    int strength;
    int unk08;
    u16 x;
    u16 y;
    u8 unk10;
    u8 screenId;
    u8 filler_12[0xA];
    GXOamAttr *oam;
    u8 palette;
    u8 vramType;
    u8 mode;
} NetworkIcon;

static inline int NetworkIcon_GetVramType(NetworkIcon *icon) {
    switch (icon->screenId) {
    case 1:
        return GX_GetDispSelect() == GX_DISP_SELECT_MAIN_SUB ? NNS_G2D_VRAM_TYPE_2DMAIN : NNS_G2D_VRAM_TYPE_2DSUB;
    case 2:
        return GX_GetDispSelect() == GX_DISP_SELECT_MAIN_SUB ? NNS_G2D_VRAM_TYPE_2DSUB : NNS_G2D_VRAM_TYPE_2DMAIN;
    default:
        return icon->vramType;
    }
}

static inline int NetworkIcon_GetStrengthOAMOffset(int vramType, int strength) {
    int ramMode;
    int gxBank;

    if (vramType == NNS_G2D_VRAM_TYPE_2DMAIN) {
        ramMode = GX_GetOBJVRamModeChar();
        gxBank = GX_GetBankForOBJ();
    } else {
        ramMode = GXS_GetOBJVRamModeChar();
        gxBank = GX_GetBankForSubOBJ();
    }

    switch (ramMode) {
    case GX_OBJVRAMMODE_CHAR_1D_32K:
        if (gxBank == GX_VRAM_OBJ_16_G || gxBank == GX_VRAM_OBJ_16_F) {
            return 512 - 16 + 4 * strength;
        } else {
            return 1024 - 16 + 4 * strength;
        }
    case GX_OBJVRAMMODE_CHAR_1D_64K:
        if (gxBank == GX_VRAM_OBJ_16_G || gxBank == GX_VRAM_OBJ_16_F || gxBank == GX_VRAM_SUB_OBJ_16_I) {
            return 512 - 8 + 2 * strength;
        }
        break;
    case GX_OBJVRAMMODE_CHAR_1D_128K:
        if (gxBank == GX_VRAM_OBJ_80_EF || gxBank == GX_VRAM_OBJ_80_EG) {
            return 640 - 4 + 1 * strength;
        } else if (gxBank == GX_VRAM_OBJ_64_E) {
            return 512 - 4 + 1 * strength;
        } else {
            return 1024 - 4 + 1 * strength;
        }
    case GX_OBJVRAMMODE_CHAR_1D_256K:
        if (gxBank == GX_VRAM_OBJ_256_AB) {
            return 1024 - 4 + 1 * strength;
        } else {
            return 512 - 4 + 1 * strength;
        }
    }
    return 1024 - 8 + 2 * strength;
}

void sub_0203A700(NetworkIcon *icon) {
    int vramType = NetworkIcon_GetVramType(icon);
    int oamOffset = NetworkIcon_GetStrengthOAMOffset(vramType, icon->strength);
    GXOamAttr *oam = vramType == NNS_G2D_VRAM_TYPE_2DMAIN ? (GXOamAttr *)HW_OAM : (GXOamAttr *)HW_DB_OAM;

    G2_SetOBJAttr(oam, icon->x, icon->y, 0, (GXOamMode)icon->mode, FALSE, GX_OAM_EFFECT_NONE, GX_OAM_SHAPE_16x16, GX_OAM_COLORMODE_16, oamOffset, icon->palette, 0);
    if (oam != icon->oam) {
        G2_SetOBJAttr(icon->oam, 0, 0, 0, (GXOamMode)icon->mode, FALSE, GX_OAM_EFFECT_NODISPLAY, GX_OAM_SHAPE_16x16, GX_OAM_COLORMODE_16, 0, 0, 0);
        icon->oam = oam;
    }
}
