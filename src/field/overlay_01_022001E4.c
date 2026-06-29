#include "global.h"

#include "constants/sndseq.h"

#include "map_object.h"
#include "unk_02005D10.h"

typedef struct {
    int unk0;
    int unk4;
    int unk8;
    int unkC;
    void *unk10;
} UnkManager_022001E4;

typedef struct {
    int unk0;
    FieldSystem *unk4;
    void *unk8;
    LocalMapObject *unkC;
} UnkData_022001E4;

typedef struct {
    int unk0;
    int unk4;
    int unk8;
    int unkC;
    int unk10;
    int unk14;
    VecFx32 unk18;
    u8 unk24[4];
    fx32 unk28;
    u8 unk2C[4];
    UnkData_022001E4 unk30;
    void *unk40;
} UnkWork_022001E4;

typedef BOOL (*UnkCb1_022001E4)(void *, UnkWork_022001E4 *);
typedef void (*UnkCb2_022001E4)(void *, UnkWork_022001E4 *);

typedef struct {
    int unk0;
    UnkCb1_022001E4 unk4;
    UnkCb1_022001E4 unk8;
    UnkCb2_022001E4 unkC;
    UnkCb2_022001E4 unk10;
} UnkTemplate_022001E4;

typedef struct {
    int unk0;
    int unk4;
    int unk8;
    int unkC;
    int unk10;
    int unk14;
} UnkConfig_022001E4;

extern UnkManager_022001E4 *ov01_021F1430(void *a0, int a1, int a2, int a3);
extern void ov01_021F1448(UnkManager_022001E4 *a0);
extern FieldSystem *ov01_021F146C(LocalMapObject *mapObject);
extern void *ov01_021F1450(FieldSystem *fieldSystem, int a1);
extern void ov01_021F1620(FieldSystem *fieldSystem, const UnkTemplate_022001E4 *a1, VecFx32 *a2, int a3, UnkData_022001E4 *a4, int a5);
extern void *ov01_021F1740(FieldSystem *fieldSystem, int a1, VecFx32 *a2);
extern void ov01_021F1758(void *a0, int a1, int a2, int a3, int a4, int a5, const UnkConfig_022001E4 *a6);
extern void ov01_021F18C8(void *a0, int a1);
extern void ov01_021F18D4(void *a0, int a1, int a2);
extern void ov01_021F18FC(void *a0, int a1);
extern void ov01_021F1908(void *a0, int a1, int a2);
extern void ov01_021F1924(void *a0, int a1);
extern void ov01_021F1930(void *a0, int a1, int a2, int a3);
extern void ov01_021F1970(void *a0, int a1);
extern void *sub_02068D74(void *a0);
extern u32 sub_02068D90(void *a0);
extern UnkData_022001E4 *sub_02068D98(void *a0);
extern void sub_02068DA8(void *a0, VecFx32 *a1);
extern void sub_02068DB8(void *a0, VecFx32 *a1);
extern BOOL sub_02023DA4(void *a0);
extern void sub_02023E50(void *a0, VecFx32 *a1);
extern void sub_02023EA4(void *a0, int a1);
extern void *sub_02023F90(void *a0);
extern void ov01_021F93AC(LocalMapObject *object, VecFx32 *out);
extern void NNS_G3dMdlSetMdlFogEnableFlagAll(void *a0, int a1);

UnkManager_022001E4 *ov01_022001E4(void *a0);
void ov01_022001F8(UnkManager_022001E4 *m);
int ov01_022003F4(void *a0);
void ov01_02200400(void *a0);
void ov01_02200540(LocalMapObject *mapObject, int a1, int a2);

static void ov01_02200208(UnkManager_022001E4 *m);
static void ov01_02200210(UnkManager_022001E4 *m);
static void ov01_02200220(UnkManager_022001E4 *m);
static void ov01_02200228(UnkManager_022001E4 *m);
static void ov01_02200238(UnkManager_022001E4 *m, int sel);
static void ov01_0220024C(UnkManager_022001E4 *m, int sel);
static void ov01_02200260(UnkManager_022001E4 *m);
static void ov01_022002AC(UnkManager_022001E4 *m);
static void ov01_022002FC(UnkManager_022001E4 *m);
static void ov01_0220032C(UnkManager_022001E4 *m);
static void ov01_0220035C(UnkManager_022001E4 *m);
static void ov01_0220036C(UnkManager_022001E4 *m);
static void ov01_0220037C(UnkManager_022001E4 *m);
static void ov01_0220038C(UnkManager_022001E4 *m);
static void ov01_0220039C(UnkManager_022001E4 *m, int sel);
static void ov01_022003B0(UnkManager_022001E4 *m, int sel);
static void *ov01_022003C4(FieldSystem *fs, int sel, VecFx32 *vec);
static BOOL ov01_02200418(void *param0, UnkWork_022001E4 *work);
static void ov01_02200480(void *param0, UnkWork_022001E4 *work);
static BOOL ov01_022004EC(void *param0, UnkWork_022001E4 *work);
static void ov01_02200508(void *param0, UnkWork_022001E4 *work);
static BOOL ov01_0220059C(void *param0, UnkWork_022001E4 *work);
static void ov01_02200614(void *param0, UnkWork_022001E4 *work);

// The two templates and the config are one contiguous rodata object in retail
// (0x2C8 / 0x2DC / 0x2F0). MWCC size-sorts separate static const objects, so
// they must be combined into ONE struct to stay in field order; only the
// {1,0xC} model array (local init in ov01_022003C4) size-sorts ahead of it.
static const struct {
    UnkTemplate_022001E4 templates[2];
    UnkConfig_022001E4 config;
} sRodata = {
    {
     { sizeof(UnkWork_022001E4), ov01_02200418, ov01_022004EC, ov01_02200480, ov01_02200508 },
     { sizeof(UnkWork_022001E4), ov01_0220059C, ov01_022004EC, ov01_02200614, ov01_02200508 },
     },
    { 0, 1, 0, 0, 0, 2 },
};

UnkManager_022001E4 *ov01_022001E4(void *a0) {
    UnkManager_022001E4 *m = ov01_021F1430(a0, sizeof(UnkManager_022001E4), 0, 0);
    m->unk10 = a0;
    return m;
}

void ov01_022001F8(UnkManager_022001E4 *m) {
    ov01_022002FC(m);
    ov01_021F1448(m);
}

static void ov01_02200208(UnkManager_022001E4 *m) {
    m->unk0++;
}

static void ov01_02200210(UnkManager_022001E4 *m) {
    m->unk0--;
    GF_ASSERT(m->unk0 >= 0);
}

static void ov01_02200220(UnkManager_022001E4 *m) {
    m->unk4++;
}

static void ov01_02200228(UnkManager_022001E4 *m) {
    m->unk4--;
    GF_ASSERT(m->unk4 >= 0);
}

static void ov01_02200238(UnkManager_022001E4 *m, int sel) {
    if (sel == 0) {
        ov01_02200208(m);
    } else {
        ov01_02200220(m);
    }
}

static void ov01_0220024C(UnkManager_022001E4 *m, int sel) {
    if (sel == 0) {
        ov01_02200210(m);
    } else {
        ov01_02200228(m);
    }
}

static void ov01_02200260(UnkManager_022001E4 *m) {
    if (m->unk8 == 0) {
        m->unk8 = 1;
        ov01_021F18D4(m->unk10, 1, 0x76);
        ov01_021F1908(m->unk10, 1, 0x8c);
        ov01_021F1930(m->unk10, 1, 0x11, 1);
        ov01_021F1758(m->unk10, 1, 1, 1, 1, 0, &sRodata.config);
    }
}

static void ov01_022002AC(UnkManager_022001E4 *m) {
    if (m->unkC == 0) {
        m->unkC = 1;
        ov01_021F18D4(m->unk10, 0xa, 0x7d);
        ov01_021F1908(m->unk10, 0xa, 0x8c);
        ov01_021F1930(m->unk10, 0xb, 0x18, 1);
        ov01_021F1758(m->unk10, 0xc, 0xa, 0xa, 0xb, 0, &sRodata.config);
    }
}

static void ov01_022002FC(UnkManager_022001E4 *m) {
    if (m->unk8 == 1) {
        m->unk8 = 0;
        ov01_021F18FC(m->unk10, 1);
        ov01_021F1924(m->unk10, 1);
        ov01_021F1970(m->unk10, 1);
        ov01_021F18C8(m->unk10, 1);
    }
}

static void ov01_0220032C(UnkManager_022001E4 *m) {
    if (m->unkC == 1) {
        m->unkC = 0;
        ov01_021F18FC(m->unk10, 0xa);
        ov01_021F1924(m->unk10, 0xa);
        ov01_021F1970(m->unk10, 0xb);
        ov01_021F18C8(m->unk10, 0xc);
    }
}

static void ov01_0220035C(UnkManager_022001E4 *m) {
    if (m->unk0 == 0) {
        ov01_02200260(m);
    }
}

static void ov01_0220036C(UnkManager_022001E4 *m) {
    if (m->unk4 == 0) {
        ov01_022002AC(m);
    }
}

static void ov01_0220037C(UnkManager_022001E4 *m) {
    if (m->unk0 == 0) {
        ov01_022002FC(m);
    }
}

static void ov01_0220038C(UnkManager_022001E4 *m) {
    if (m->unk4 == 0) {
        ov01_0220032C(m);
    }
}

static void ov01_0220039C(UnkManager_022001E4 *m, int sel) {
    if (sel == 0) {
        ov01_0220035C(m);
    } else {
        ov01_0220036C(m);
    }
}

static void ov01_022003B0(UnkManager_022001E4 *m, int sel) {
    if (sel == 0) {
        ov01_0220037C(m);
    } else {
        ov01_0220038C(m);
    }
}

static void *ov01_022003C4(FieldSystem *fs, int sel, VecFx32 *vec) {
    int models[2] = { 1, 0xC };
    void *r = ov01_021F1740(fs, models[sel], vec);
    NNS_G3dMdlSetMdlFogEnableFlagAll(sub_02023F90(r), 0);
    return r;
}

int ov01_022003F4(void *a0) {
    return ((UnkWork_022001E4 *)sub_02068D74(a0))->unk14;
}

void ov01_02200400(void *a0) {
    UnkWork_022001E4 *work = sub_02068D74(a0);
    work->unk10 = 1;
    if (work->unk40 != NULL) {
        sub_02023EA4(work->unk40, 0);
    }
}

static BOOL ov01_02200418(void *param0, UnkWork_022001E4 *work) {
    VecFx32 vec;
    work->unk30 = *sub_02068D98(param0);
    work->unk28 = 6 << 0xc;
    ov01_0220039C(work->unk30.unk8, work->unk30.unk0);
    sub_02068DB8(param0, &vec);
    work->unk40 = ov01_022003C4(work->unk30.unk4, work->unk30.unk0, &vec);
    ov01_02200238(work->unk30.unk8, work->unk30.unk0);
    sub_02023EA4(work->unk40, 0);
    if (sub_02068D90(param0) == 1) {
        PlaySE(SEQ_SE_DP_DECIDE);
    }
    return TRUE;
}

static void ov01_02200480(void *param0, UnkWork_022001E4 *work) {
    VecFx32 vec;
    sub_02068DB8(param0, &vec);
    switch (work->unk0) {
    case 0:
        sub_02023EA4(work->unk40, 1);
        work->unk18.y += work->unk28;
        if (work->unk18.y != 0) {
            work->unk28 -= 2 << 0xc;
        } else {
            work->unk28 = 0;
            work->unk0++;
        }
        break;
    case 1:
        work->unk4++;
        if (work->unk4 >= 0x1e) {
            work->unk0++;
            work->unk4 = 0;
            work->unk14 = 1;
        }
        break;
    case 2:
        break;
    }
    sub_02068DA8(param0, &vec);
}

static BOOL ov01_022004EC(void *param0, UnkWork_022001E4 *work) {
    sub_02023DA4(work->unk40);
    ov01_0220024C(work->unk30.unk8, work->unk30.unk0);
    ov01_022003B0(work->unk30.unk8, work->unk30.unk0);
}

static void ov01_02200508(void *param0, UnkWork_022001E4 *work) {
    VecFx32 vec;
    if (work->unk10 != 1) {
        sub_02068DB8(param0, &vec);
        vec.x += work->unk18.x;
        vec.y += work->unk18.y;
        vec.z += work->unk18.z;
        sub_02023E50(work->unk40, &vec);
    }
}

void ov01_02200540(LocalMapObject *mapObject, int a1, int a2) {
    UnkData_022001E4 data;
    VecFx32 vec;
    VecFx32 facing;
    FieldSystem *fs = ov01_021F146C(mapObject);
    data.unk0 = a1;
    data.unk4 = fs;
    data.unk8 = ov01_021F1450(fs, 9);
    data.unkC = mapObject;
    MapObject_CopyPositionVector(mapObject, &vec);
    MapObject_CopyFacingVector(mapObject, &facing);
    VEC_Add(&vec, &facing, &vec);
    {
        int priority = MapObject_GetPriority(mapObject) + 1;
        ov01_021F1620(fs, &sRodata.templates[1], &vec, a2, &data, priority);
    }
}

static BOOL ov01_0220059C(void *param0, UnkWork_022001E4 *work) {
    VecFx32 vec;
    work->unk30 = *sub_02068D98(param0);
    work->unk8 = MapObject_GetID(work->unk30.unkC);
    work->unkC = MapObject_GetMapID(work->unk30.unkC);
    work->unk28 = 6 << 0xc;
    ov01_0220039C(work->unk30.unk8, work->unk30.unk0);
    sub_02068DB8(param0, &vec);
    work->unk40 = ov01_022003C4(work->unk30.unk4, work->unk30.unk0, &vec);
    ov01_02200238(work->unk30.unk8, work->unk30.unk0);
    sub_02023EA4(work->unk40, 0);
    if (sub_02068D90(param0) == 1) {
        PlaySE(SEQ_SE_DP_DECIDE);
    }
    return TRUE;
}

static void ov01_02200614(void *param0, UnkWork_022001E4 *work) {
    VecFx32 vec;
    LocalMapObject *mapObject = work->unk30.unkC;
    GF_ASSERT(sub_0205F0A8(mapObject, work->unk8, work->unkC));
    ov01_021F93AC(mapObject, &vec);
    {
        fx32 offset = 2 << 0x10;
        vec.y += offset;
        vec.z += offset >> 5;
    }
    switch (work->unk0) {
    case 0:
        sub_02023EA4(work->unk40, 1);
        work->unk18.y += work->unk28;
        if (work->unk18.y != 0) {
            work->unk28 -= 2 << 0xc;
        } else {
            work->unk28 = 0;
            work->unk0++;
        }
        break;
    case 1:
        work->unk4++;
        if (work->unk4 >= 0x1e) {
            work->unk0++;
            work->unk4 = 0;
            work->unk14 = 1;
        }
        break;
    case 2:
        break;
    }
    sub_02068DA8(param0, &vec);
}
