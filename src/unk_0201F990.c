#include "global.h"

extern int G3X_GetBoxTestResult(int *result);

typedef struct {
    u8 pad_00[0x18];
    s16 unk_18;
    s16 unk_1A;
    s16 unk_1C;
    s16 unk_1E;
    s16 unk_20;
    s16 unk_22;
    u32 unk_24;
} UnkBox;

typedef struct {
    u8 pad_00[0x14];
    UnkBox box;
} UnkObj;

typedef struct {
    s16 unk_00;
    s16 unk_02;
    s16 unk_04;
    u8 pad_06[2];
    u32 unk_08;
    u32 unk_0C;
    u32 unk_10;
} UnkData;

int sub_0201F990(UnkObj *arg0, const VecFx32 *pTrans, const MtxFx33 *pRot, const VecFx32 *pScale);
int sub_0201FA34(const VecFx32 *pTrans, UnkData *pData);

static void sub_0201FAA4(s16 a, s16 b, s16 c, s16 d, s16 e, s16 f, s16 *out);
static int sub_0201FAC8(s16 *box);

int sub_0201F990(UnkObj *arg0, const VecFx32 *pTrans, const MtxFx33 *pRot, const VecFx32 *pScale) {
    s16 box[6];
    VecFx32 trans = *pTrans;
    VecFx32 scale;
    UnkBox *base = arg0 ? &arg0->box : NULL;
    fx32 v;
    int result;

    sub_0201FAA4(base->unk_18, base->unk_1A, base->unk_1C, base->unk_1E, base->unk_20, base->unk_22, box);
    NNS_G3dGlbSetBaseTrans(&trans);
    NNS_G3dGlbSetBaseRot(pRot);
    NNS_G3dGlbSetBaseScale(pScale);
    NNS_G3dGlbFlush();
    NNS_G3dGePushMtx();
    v = base->unk_24;
    scale.x = v;
    scale.y = v;
    scale.z = v;
    NNS_G3dGeBufferOP_N(G3OP_MTX_SCALE, (u32 *)&scale, G3OP_MTX_SCALE_NPARAMS);
    result = sub_0201FAC8(box);
    NNS_G3dGePopMtx(1);
    return result;
}

int sub_0201FA34(const VecFx32 *pTrans, UnkData *pData) {
    s16 box[6];
    VecFx32 scale;
    fx32 sx, sy, sz;
    int result;

    sub_0201FAA4(0, 0, 0, pData->unk_00, pData->unk_02, pData->unk_04, box);
    NNS_G3dGlbSetBaseTrans(pTrans);
    NNS_G3dGlbFlush();
    NNS_G3dGePushMtx();
    sz = pData->unk_10 << 12;
    sy = pData->unk_0C << 12;
    sx = pData->unk_08 << 12;
    scale.x = sx;
    scale.y = sy;
    scale.z = sz;
    NNS_G3dGeBufferOP_N(G3OP_MTX_SCALE, (u32 *)&scale, G3OP_MTX_SCALE_NPARAMS);
    result = sub_0201FAC8(box);
    NNS_G3dGePopMtx(1);
    return result;
}

static void sub_0201FAA4(s16 a, s16 b, s16 c, s16 d, s16 e, s16 f, s16 *out) {
    out[0] = a;
    out[1] = b;
    out[2] = c;
    out[3] = d;
    out[4] = e;
    out[5] = f;
}

static int sub_0201FAC8(s16 *box) {
    int result = 1;
    u32 polyAttr = 0x000030C1;
    u32 begin;

    NNS_G3dGeBufferOP_N(G3OP_POLYGON_ATTR, &polyAttr, G3OP_POLYGON_ATTR_NPARAMS);
    begin = 0;
    NNS_G3dGeBufferOP_N(G3OP_BEGIN, &begin, G3OP_BEGIN_NPARAMS);
    NNS_G3dGeBufferOP_N(G3OP_END, NULL, G3OP_END_NPARAMS);
    NNS_G3dGeBufferOP_N(G3OP_BOX_TEST, (u32 *)box, G3OP_BOX_TEST_NPARAMS);
    NNS_G3dGeFlushBuffer();
    while (G3X_GetBoxTestResult(&result) != 0) {
        ;
    }
    return result;
}
