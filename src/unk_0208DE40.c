#include "global.h"

#include "constants/gx.h"

#include "camera.h"
#include "gf_gfx_planes.h"
#include "touchscreen.h"

// This translation unit predates several header cleanups, so the pokepic/pokemon
// helpers are declared locally with the signatures they were compiled against
// (e.g. Pokepic_StartAnim still takes its now-removed second argument). Including
// pokepic.h / pokemon.h would pull the newer prototypes and break matching.

typedef struct UnkStruct_0208DE40 UnkStruct_0208DE40;

typedef struct Pokepic Pokepic;
typedef struct PokepicManager PokepicManager;
typedef struct PokepicAnimScript PokepicAnimScript;
typedef struct Pokemon Pokemon;
typedef struct BoxPokemon BoxPokemon;
typedef struct NARC NARC;

typedef struct PokepicTemplate {
    u16 narcID;
    u16 charDataID;
    u16 palDataID;
    u16 species;
    u8 isAnimated;
    u8 filler_9[3];
    u32 personality;
} PokepicTemplate;

typedef struct VecS16 {
    s16 x;
    s16 y;
    s16 z;
} VecS16;

typedef struct StatPosTemplate {
    u16 full[3];
    u16 base[3];
    u16 delta[3];
} StatPosTemplate;

typedef union ByteNibbles {
    u8 raw;
    struct {
        u8 lo : 4;
        u8 hi : 4;
    } bits;
} ByteNibbles;

PokepicManager *PokepicManager_Create(enum HeapID heapID);
void PokepicManager_DrawAll(PokepicManager *pokepicManager);
void PokepicManager_Delete(PokepicManager *pokepicManager);
void Pokepic_StartAnim(Pokepic *pokepic, int a1);
Pokepic *PokepicManager_CreatePokepic(PokepicManager *pokepicManager, PokepicTemplate *template, int x, int y, int z, int polygonId, PokepicAnimScript *animScript, void *callback);
void Pokepic_SetAttr(Pokepic *pokepic, int attr, int value);

void GetPokemonSpriteCharAndPlttNarcIds(PokepicTemplate *pokepicTemplate, Pokemon *mon, u8 whichFacing);
void GetBoxmonSpriteCharAndPlttNarcIds(PokepicTemplate *pokepicTemplate, BoxPokemon *boxMon, u8 whichFacing, BOOL sp14);
void NARC_ReadPokepicAnimScript(NARC *narc, PokepicAnimScript *dest, u16 species, u16 a3);
void sub_0207294C(NARC *narc, void *a1, void *a2, u16 a3, int a4, int a5, int a6);

void sub_02016F2C(void *a0);
void sub_02017088(void *a0, int a1);
void *sub_0208A520(UnkStruct_0208DE40 *work);

void sub_0208DE40(void);
void sub_0208DEDC(UnkStruct_0208DE40 *work);
void sub_0208DEFC(UnkStruct_0208DE40 *work);
void sub_0208DF2C(UnkStruct_0208DE40 *work);
void sub_0208E174(UnkStruct_0208DE40 *work);
void sub_0208E3AC(UnkStruct_0208DE40 *work);
void sub_0208E444(UnkStruct_0208DE40 *work);
void sub_0208E4B4(UnkStruct_0208DE40 *work);
u8 sub_0208E544(UnkStruct_0208DE40 *work);

static void sub_0208DF9C(const StatPosTemplate *tmpl, VecS16 *dst, u8 stat);
static void sub_0208DFF8(VecS16 *a, VecS16 *b, VecS16 *c);
static int sub_0208E4DC(UnkStruct_0208DE40 *work);

#define WORK_CAMERA(w) (*(Camera **)((u8 *)(w) + 0x29c))
#define WORK_PICMGR(w) (*(PokepicManager **)((u8 *)(w) + 0x2a0))
#define WORK_UNK2CC(w) (*(void **)((u8 *)(w) + 0x2cc))
#define WORK_PIC(w)    (*(Pokepic **)((u8 *)(w) + 0x2d0))
#define WORK_NARC(w)   (*(NARC **)((u8 *)(w) + 0x7b8))

typedef struct Rodata0208DE40 {
    VecFx32 cameraPos;
    StatPosTemplate statPosTemplates[16];
    u8 touchResponseTable[11][4];
    TouchscreenHitbox touchHitboxes[11];
} Rodata0208DE40;

static const Rodata0208DE40 sRodata = {
    { 0, 0, 0x10000 },
    {
     { { 0x1412, 0x0EC8, 0x0000 }, { 0x1412, 0x02DF, 0x0000 }, { 0x0000, 0x000C, 0x0000 } },
     { { 0x2098, 0x03C5, 0x0000 }, { 0x15A2, 0x017F, 0x0000 }, { 0x000B, 0x0002, 0x0000 } },
     { { 0x1BA7, (s16)0xF475, 0x0000 }, { 0x1504, (s16)0xFF96, 0x0000 }, { 0x0007, (s16)0xFFF5, 0x0000 } },
     { { 0x1412, 0x012C, 0x0000 }, { 0x1412, 0x012C, 0x0000 }, { 0x0000, 0x0000, 0x0000 } },
     { { 0x0733, 0x03C5, 0x0000 }, { 0x1225, 0x017F, 0x0000 }, { (s16)0xFFF5, 0x0002, 0x0000 } },
     { { 0x13B5, 0x0EC8, 0x0000 }, { 0x13B5, 0x02DF, 0x0000 }, { 0x0000, 0x000C, 0x0000 } },
     { { 0x13B5, 0x012C, 0x0000 }, { 0x13B5, 0x012C, 0x0000 }, { 0x0000, 0x0000, 0x0000 } },
     { { 0x0C22, (s16)0xF475, 0x0000 }, { 0x12C3, (s16)0xFF96, 0x0000 }, { (s16)0xFFF9, (s16)0xFFF5, 0x0000 } },
     { { 0x0733, 0x03C5, 0x0000 }, { 0x1225, 0x017F, 0x0000 }, { (s16)0xFFF5, 0x0002, 0x0000 } },
     { { 0x13B5, 0x012C, 0x0000 }, { 0x13B5, 0x012C, 0x0000 }, { 0x0000, 0x0000, 0x0000 } },
     { { 0x1BA7, (s16)0xF475, 0x0000 }, { 0x14B3, (s16)0xFF96, 0x0000 }, { 0x0007, (s16)0xFFF5, 0x0000 } },
     { { 0x0C22, (s16)0xF475, 0x0000 }, { 0x12C3, (s16)0xFF96, 0x0000 }, { (s16)0xFFF9, (s16)0xFFF5, 0x0000 } },
     { { 0x1412, 0x012C, 0x0000 }, { 0x1412, 0x012C, 0x0000 }, { 0x0000, 0x0000, 0x0000 } },
     { { 0x2098, 0x03C5, 0x0000 }, { 0x15A2, 0x017F, 0x0000 }, { 0x000B, 0x0002, 0x0000 } },
     { { 0x1BA7, (s16)0xF475, 0x0000 }, { 0x1504, (s16)0xFF96, 0x0000 }, { 0x0007, (s16)0xFFF5, 0x0000 } },
     { { 0x0C22, (s16)0xF475, 0x0000 }, { 0x1314, (s16)0xFF96, 0x0000 }, { (s16)0xFFF9, (s16)0xFFF5, 0x0000 } },
     },
    {
     { 0x00, 0x01, 0x01, 0x04 },
     { 0x01, 0x02, 0x05, 0x0F },
     { 0x02, 0x04, 0x19, 0x0A },
     { 0x03, 0x04, 0x1A, 0x04 },
     { 0x04, 0x00, 0x00, 0x00 },
     { 0x05, 0x00, 0x00, 0x00 },
     { 0x06, 0x00, 0x00, 0x00 },
     { 0x07, 0x00, 0x00, 0x00 },
     { 0x08, 0x00, 0x00, 0x00 },
     { 0x09, 0x00, 0x00, 0x00 },
     { 0xFF, 0xFF, 0xFF, 0xFF },
     },
    {
     { { 0xA5, 0xBF, 0x02, 0x2D } },
     { { 0xA5, 0xBF, 0x30, 0x60 } },
     { { 0xA5, 0xBF, 0x63, 0x8C } },
     { { 0xA5, 0xBF, 0xBD, 0xFA } },
     { { 0x26, 0x42, 0xA5, 0xCB } },
     { { 0x2E, 0x4A, 0xCD, 0xF3 } },
     { { 0x46, 0x62, 0xA5, 0xCB } },
     { { 0x4E, 0x6A, 0xCD, 0xF3 } },
     { { 0x66, 0x82, 0xA5, 0xCB } },
     { { 0x6E, 0x8A, 0xCD, 0xF3 } },
     { { 0xFF, 0x00, 0x00, 0x00 } },
     },
};

void sub_0208DE40(void) {
    NNS_G3dInit();
    G3X_Init();
    G3X_InitMtxStack();
    G3X_SetShading(GX_SHADING_TOON);
    G3X_AlphaTest(FALSE, 0);
    G3X_AlphaBlend(TRUE);
    G3X_AntiAlias(TRUE);
    G3X_EdgeMarking(FALSE);
    G3X_SetFog(FALSE, GX_FOGBLEND_COLOR_ALPHA, GX_FOGSLOPE_0x8000, 0);
    G3X_SetClearColor(RGB_BLACK, 0, GF_GX_CLEARCOLORDEPTH_MAX, 0x3F, FALSE);
    G3_SwapBuffers(GX_SORTMODE_AUTO, GX_BUFFERMODE_Z);
    G3_ViewPort(0, 0, 255, 191);
    GfGfx_EngineATogglePlanes(GX_PLANEMASK_BG0, GF_PLANE_TOGGLE_ON);
    G2_SetBG0Priority(2);
}

void sub_0208DEDC(UnkStruct_0208DE40 *work) {
    NNS_G2dSetupSoftwareSpriteCamera();
    PokepicManager_DrawAll(WORK_PICMGR(work));
    G3_SwapBuffers(GX_SORTMODE_MANUAL, GX_BUFFERMODE_Z);
}

void sub_0208DEFC(UnkStruct_0208DE40 *work) {
    Camera_Delete(WORK_CAMERA(work));
    sub_02017088(WORK_UNK2CC(work), 0);
    sub_02016F2C(WORK_UNK2CC(work));
    PokepicManager_Delete(WORK_PICMGR(work));
}

void sub_0208DF2C(UnkStruct_0208DE40 *work) {
    VecFx32 pos = sRodata.cameraPos;
    CameraAngle angle = { 0, 0, 0, 0 };

    WORK_CAMERA(work) = Camera_New(HEAP_ID_19);
    Camera_Init_FromPosDistanceAndAngle(&pos, 0x10000, &angle, 0x5C1, 1, WORK_CAMERA(work));
    Camera_SetPerspectiveClippingPlane(0, 0x64000, WORK_CAMERA(work));
    Camera_ClearFixedTarget(WORK_CAMERA(work));
    Camera_SetStaticPtr(WORK_CAMERA(work));
}

static void sub_0208DF9C(const StatPosTemplate *tmpl, VecS16 *dst, u8 stat) {
    if (stat == 0xff) {
        dst->x = tmpl->full[0];
        dst->y = tmpl->full[1];
        dst->z = tmpl->full[2];
        return;
    }
    if (stat == 0) {
        dst->x = tmpl->base[0];
        dst->y = tmpl->base[1];
        dst->z = tmpl->base[2];
        return;
    }
    dst->x = (s16)tmpl->base[0] + (s16)tmpl->delta[0] * stat;
    dst->y = (s16)tmpl->base[1] + (s16)tmpl->delta[1] * stat;
    dst->z = (s16)tmpl->base[2] + (s16)tmpl->delta[2] * stat;
}

static inline s16 sub_0208DFF8_Round(int diff) {
    if ((f32)diff / 4096.0f / 4.0f > 0.0f) {
        return (s16)(0.5f + 4096.0f * ((f32)diff / 4096.0f / 4.0f));
    } else {
        return (s16)(4096.0f * ((f32)diff / 4096.0f / 4.0f) - 0.5f);
    }
}

static void sub_0208DFF8(VecS16 *a, VecS16 *b, VecS16 *c) {
    c->x = sub_0208DFF8_Round(b->x - a->x);
    c->y = sub_0208DFF8_Round(b->y - a->y);
    c->z = sub_0208DFF8_Round(b->z - a->z);
}

void sub_0208E174(UnkStruct_0208DE40 *work) {
    u32 i;
    VecS16 *step0, *target0, *current0;
    VecS16 *step1, *target1, *current1;
    VecS16 *step2, *target2, *current2;
    VecS16 *step3, *target3, *current3;

    sub_0208DF9C(&sRodata.statPosTemplates[0], (VecS16 *)((u8 *)work + 0x398), ((u8 *)work)[0x275]);
    sub_0208DF9C(&sRodata.statPosTemplates[1], (VecS16 *)((u8 *)work + 0x39e), ((u8 *)work)[0x276]);
    sub_0208DF9C(&sRodata.statPosTemplates[2], (VecS16 *)((u8 *)work + 0x3aa), ((u8 *)work)[0x277]);
    sub_0208DF9C(&sRodata.statPosTemplates[3], (VecS16 *)((u8 *)work + 0x3a4), 0);
    sub_0208DF9C(&sRodata.statPosTemplates[4], (VecS16 *)((u8 *)work + 0x3b0), ((u8 *)work)[0x279]);
    sub_0208DF9C(&sRodata.statPosTemplates[5], (VecS16 *)((u8 *)work + 0x3b6), ((u8 *)work)[0x275]);
    sub_0208DF9C(&sRodata.statPosTemplates[6], (VecS16 *)((u8 *)work + 0x3c2), 0);
    sub_0208DF9C(&sRodata.statPosTemplates[7], (VecS16 *)((u8 *)work + 0x3bc), ((u8 *)work)[0x278]);
    sub_0208DF9C(&sRodata.statPosTemplates[8], (VecS16 *)((u8 *)work + 0x3c8), ((u8 *)work)[0x279]);
    sub_0208DF9C(&sRodata.statPosTemplates[9], (VecS16 *)((u8 *)work + 0x3ce), 0);
    sub_0208DF9C(&sRodata.statPosTemplates[10], (VecS16 *)((u8 *)work + 0x3da), ((u8 *)work)[0x277]);
    sub_0208DF9C(&sRodata.statPosTemplates[11], (VecS16 *)((u8 *)work + 0x3d4), ((u8 *)work)[0x278]);
    sub_0208DF9C(&sRodata.statPosTemplates[12], (VecS16 *)((u8 *)work + 0x3e0), 0);
    sub_0208DF9C(&sRodata.statPosTemplates[13], (VecS16 *)((u8 *)work + 0x3e6), ((u8 *)work)[0x276]);
    sub_0208DF9C(&sRodata.statPosTemplates[14], (VecS16 *)((u8 *)work + 0x3f2), ((u8 *)work)[0x277]);
    sub_0208DF9C(&sRodata.statPosTemplates[15], (VecS16 *)((u8 *)work + 0x3ec), ((u8 *)work)[0x278]);

    i = 0;
    step0 = (VecS16 *)((u8 *)work + 0x338);
    target0 = (VecS16 *)((u8 *)work + 0x398);
    current0 = (VecS16 *)((u8 *)work + 0x2d8);
    step1 = (VecS16 *)((u8 *)work + 0x33e);
    target1 = (VecS16 *)((u8 *)work + 0x39e);
    current1 = (VecS16 *)((u8 *)work + 0x2de);
    step2 = (VecS16 *)((u8 *)work + 0x344);
    target2 = (VecS16 *)((u8 *)work + 0x3a4);
    current2 = (VecS16 *)((u8 *)work + 0x2e4);
    step3 = (VecS16 *)((u8 *)work + 0x34a);
    target3 = (VecS16 *)((u8 *)work + 0x3aa);
    current3 = (VecS16 *)((u8 *)work + 0x2ea);
    for (; i < 4; i++) {
        sub_0208DFF8(current0, target0, step0);
        sub_0208DFF8(current1, target1, step1);
        sub_0208DFF8(current2, target2, step2);
        sub_0208DFF8(current3, target3, step3);
        step0 += 4;
        target0 += 4;
        current0 += 4;
        step1 += 4;
        target1 += 4;
        current1 += 4;
        step2 += 4;
        target2 += 4;
        current2 += 4;
        step3 += 4;
        target3 += 4;
        current3 += 4;
    }

    *(int *)((u8 *)work + 0x3f8) = 0;
}

void sub_0208E3AC(UnkStruct_0208DE40 *work) {
    PokepicTemplate template;
    void *mon;

    WORK_PICMGR(work) = PokepicManager_Create(HEAP_ID_19);
    mon = sub_0208A520(work);
    if ((*(u8 **)((u8 *)work + 0x22c))[0x11] == 2) {
        GetBoxmonSpriteCharAndPlttNarcIds(&template, mon, 2, 0);
    } else {
        GetPokemonSpriteCharAndPlttNarcIds(&template, mon, 2);
    }
    NARC_ReadPokepicAnimScript(WORK_NARC(work), (PokepicAnimScript *)((u8 *)work + 0x2a4), *(u16 *)((u8 *)work + 0x23c), 1);
    *(int *)((u8 *)work + 0x2d4) = 0;
    WORK_PIC(work) = PokepicManager_CreatePokepic(WORK_PICMGR(work), &template, 0xd0, 0x68, 0, 0, (PokepicAnimScript *)((u8 *)work + 0x2a4), 0);
    Pokepic_SetAttr(WORK_PIC(work), 6, 1);
    Pokepic_SetAttr(WORK_PIC(work), 0x23, 0);
}

void sub_0208E444(UnkStruct_0208DE40 *work) {
    if ((*(u32 *)((u8 *)work + 0x280) << 3) >> 31) {
        sub_0207294C(WORK_NARC(work), WORK_UNK2CC(work), WORK_PIC(work), 0, 2, *(int *)((u8 *)work + 0x2d4), 0);
    } else {
        Pokepic_StartAnim(WORK_PIC(work), 1);
        sub_0207294C(WORK_NARC(work), WORK_UNK2CC(work), WORK_PIC(work), *(u16 *)((u8 *)work + 0x23c), 2, *(int *)((u8 *)work + 0x2d4), 0);
    }
}

void sub_0208E4B4(UnkStruct_0208DE40 *work) {
    sub_02017088(WORK_UNK2CC(work), 0);
    PokepicManager_Delete(WORK_PICMGR(work));
    sub_0208E3AC(work);
    sub_0208E444(work);
}

static int sub_0208E4DC(UnkStruct_0208DE40 *work) {
    int idx;

    if (((ByteNibbles *)((u8 *)work + 0x7bf))->bits.lo == 0xf) {
        return -1;
    }
    if ((*(u8 **)((u8 *)work + 0x22c))[0x11] != 2) {
        idx = TouchscreenHitbox_FindRectAtTouchNew(sRodata.touchHitboxes);
        if (idx != -1) {
            return sRodata.touchResponseTable[idx][0];
        }
        return idx;
    } else {
        idx = TouchscreenHitbox_FindRectAtTouchNew(sRodata.touchHitboxes);
        if (idx >= 4 && idx <= 9) {
            return -1;
        }
        if (idx != -1) {
            return sRodata.touchResponseTable[idx][0];
        }
        return idx;
    }
}

u8 sub_0208E544(UnkStruct_0208DE40 *work) {
    int idx = sub_0208E4DC(work);
    if (idx != -1) {
        return (u8)idx;
    }
    return 0xff;
}
