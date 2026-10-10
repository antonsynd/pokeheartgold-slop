#include "global.h"

#include "assert.h"
#include "constants/sndseq.h"
#include "heap.h"
#include "map_object.h"
#include "math_util.h"
#include "unk_0205FD20.h"

typedef struct UnkStruct_MoveData {
    s8 unk_00;
    s8 unk_01;
    u8 unk_02;
    u8 unk_03;
    s32 unk_04;
    struct UnkStruct_MoveAlloc *unk_08;
} UnkStruct_MoveData;

typedef struct UnkStruct_MoveAlloc {
    u8 unk_00;
    s8 unk_01;
    s8 unk_02;
    s8 unk_03;
    s32 unk_04;
    s32 unk_08;
    s32 unk_0C;
    s32 unk_10;
    s32 unk_14;
    s32 unk_18;
} UnkStruct_MoveAlloc;

float _fflt(s32 value);
float _fadd(float a, float b);
float _fsub(float a, float b);
s32 _ffix(float value);
s32 _s32_div_f(s32 a, s32 b);
s64 _ll_mul(s64 a, s64 b);

#define MO_ROUND(v, tsh, vsh) ((((s32)((u32)(v) << (tsh))) > 0) ? _ffix(_fadd(0.5f, _fflt((s32)((u32)(v) << (vsh))))) : _ffix(_fsub(_fflt((s32)((u32)(v) << (vsh))), 0.5f)))

void sub_020632B0(LocalMapObject *mapObj, s32 param1, s32 param2, s32 param3, s32 param4, s32 param5, s32 param6)
{
    UnkStruct_MoveData *data = (UnkStruct_MoveData *)sub_0205F3C0(mapObj, 0xC);
    UnkStruct_MoveAlloc *alloc;
    s32 v0;

    alloc = Heap_AllocAtEnd(0xB, 0x1C);
    MI_CpuFill8(alloc, 0, 0x1C);
    data->unk_08 = alloc;

    data->unk_00 = (s8)param4;
    data->unk_01 = (s8)param5;
    data->unk_03 = (u8)param6;

    v0 = MO_ROUND(param5, 12, 12);

    data->unk_08->unk_01 = (s8)param1;
    data->unk_08->unk_02 = (s8)param2;
    data->unk_08->unk_03 = (s8)param3;

    data->unk_08->unk_04 = FX_Div(MO_ROUND(param1, 4, 16), v0);
    data->unk_08->unk_08 = FX_Div(MO_ROUND(param2, 4, 16), v0);
    data->unk_08->unk_0C = FX_Div(MO_ROUND(param3, 4, 16), v0);

    data->unk_08->unk_00 = _s32_div_f(0xB4, param5);

    MapObject_CopyPositionVector(mapObj, (VecFx32 *)&data->unk_08->unk_10);
    data->unk_04 = data->unk_08->unk_14;
    sub_02060F78(mapObj);
    MapObject_SetFlagsBits(mapObj, 0x00010004);
    MapObject_SetOrQueueFacing(mapObj, (u32)(s8)param4);
    sub_0205F328(mapObj, (u16)param6);
    MapObject_IncrementMovementStep(mapObj);

    if (!MapObject_CheckVisible(mapObj)) {
        PlaySE(SEQ_SE_DP_DANSA);
    }
}

BOOL MapObjectMovementCmd108_Step1(LocalMapObject *mapObj)
{
    UnkStruct_MoveData *data = (UnkStruct_MoveData *)sub_0205F3E4(mapObj);
    UnkStruct_MoveAlloc *alloc;
    s32 x;
    s32 sinv;
    VecFx32 vec;
    FieldSystem *fieldSystem;
    s64 p;
    s32 ylo;
    s32 ynew;

    x = (data->unk_02 != 0) ? _ffix(_fadd(0.5f, _fflt((s32)((u32)data->unk_02 << 12)))) : _ffix(_fsub(_fflt((s32)((u32)data->unk_02 << 12)), 0.5f));

    alloc = (UnkStruct_MoveAlloc *)data->unk_08;

    p = _ll_mul((s64)alloc->unk_04, (s64)x);
    vec.x = alloc->unk_10 + (s32)((p + 0x800) >> 12);

    p = _ll_mul((s64)alloc->unk_0C, (s64)x);
    vec.z = alloc->unk_18 + (s32)((p + 0x800) >> 12);

    vec.y = 0;

    fieldSystem = MapObject_GetFieldSystem(mapObj);
    if (sub_02061248(fieldSystem, &vec, MapObject_CheckFlag29(mapObj)) != 0) {
        data->unk_04 = vec.y;
    } else {
        vec.y = data->unk_04;
    }

    MapObject_SetPositionVector(mapObj, &vec);

    sinv = GF_SinDegNoWrap((u16)(data->unk_02 * alloc->unk_00));

    p = _ll_mul((s64)alloc->unk_08, (s64)x);
    ylo = alloc->unk_14 + (s32)((p + 0x800) >> 12);
    ynew = ylo + (s32)((((s64)sinv << 16) + 0x800) >> 12);
    vec.y = ynew - vec.y;

    vec.x = 0;
    vec.z = 0;
    sub_0205F9A0(mapObj, &vec);

    data->unk_01--;
    data->unk_02++;

    if (data->unk_01 > 0) {
        return FALSE;
    }

    vec.x = 0;
    vec.y = 0;
    vec.z = 0;
    MapObject_SetFacingVector(mapObj, &vec);
    sub_0205F9A0(mapObj, &vec);

    MapObject_AddCurrentX(mapObj, (s8)alloc->unk_01);
    MapObject_AddCurrentY(mapObj, (s8)alloc->unk_02);
    MapObject_AddCurrentZ(mapObj, (s8)alloc->unk_03);

    vec.x = alloc->unk_10 + MO_ROUND((s8)alloc->unk_01, 4, 16);
    vec.y = alloc->unk_14 + MO_ROUND((s8)alloc->unk_02, 4, 16);
    vec.z = alloc->unk_18 + MO_ROUND((s8)alloc->unk_03, 4, 16);
    MapObject_SetPositionVector(mapObj, &vec);

    sub_02061070(mapObj);
    MapObject_SetFlagsBits(mapObj, 0x00020008);
    sub_02060F78(mapObj);
    sub_0205F484(mapObj);
    sub_0205F328(mapObj, 0);
    MapObject_IncrementMovementStep(mapObj);

    if (!MapObject_CheckVisible(mapObj)) {
        PlaySE(SEQ_SE_DP_SUTYA2);
    }

    Heap_Free(alloc);
    return FALSE;
}

BOOL MapObjectMovementCmd105_Step0(LocalMapObject *mapObj)
{
    sub_020632B0(mapObj, 0, 1, 5, 1, 0xF, 3);
    return TRUE;
}

BOOL MapObjectMovementCmd105_Step2(LocalMapObject *mapObj)
{
    sub_020632B0(mapObj, 4, 0, 0, 3, 0xC, 3);
    return TRUE;
}

BOOL MapObjectMovementCmd105_Step4(LocalMapObject *mapObj)
{
    sub_020632B0(mapObj, 0, 0, -5, 0, 0xF, 3);
    return TRUE;
}

BOOL MapObjectMovementCmd105_Step6(LocalMapObject *mapObj)
{
    sub_020632B0(mapObj, -2, 0, -3, 0, 9, 3);
    return TRUE;
}

BOOL MapObjectMovementCmd105_Step8(LocalMapObject *mapObj)
{
    sub_020632B0(mapObj, -4, 1, -4, 2, 0xC, 3);
    return TRUE;
}

BOOL MapObjectMovementCmd106_Step0(LocalMapObject *mapObj)
{
    sub_020632B0(mapObj, 2, 1, 0, 3, 6, 3);
    return TRUE;
}

BOOL MapObjectMovementCmd106_Step2(LocalMapObject *mapObj)
{
    sub_020632B0(mapObj, -1, 0, 5, 1, 0xC, 3);
    return TRUE;
}

BOOL MapObjectMovementCmd106_Step4(LocalMapObject *mapObj)
{
    sub_020632B0(mapObj, -3, 0, 0, 2, 6, 3);
    return TRUE;
}

BOOL MapObjectMovementCmd106_Step6(LocalMapObject *mapObj)
{
    sub_020632B0(mapObj, -3, 0, 0, 2, 9, 3);
    return TRUE;
}

BOOL MapObjectMovementCmd107_Step0(LocalMapObject *mapObj)
{
    sub_020632B0(mapObj, 3, 1, -1, 3, 6, 3);
    return TRUE;
}

BOOL MapObjectMovementCmd107_Step2(LocalMapObject *mapObj)
{
    sub_020632B0(mapObj, 0, 0, 4, 1, 9, 3);
    return TRUE;
}

BOOL MapObjectMovementCmd107_Step4(LocalMapObject *mapObj)
{
    sub_020632B0(mapObj, -4, 0, 0, 2, 0xC, 3);
    return TRUE;
}

BOOL MapObjectMovementCmd107_Step6(LocalMapObject *mapObj)
{
    sub_020632B0(mapObj, 0, -1, -4, 0, 6, 3);
    return TRUE;
}

BOOL MapObjectMovementCmd107_Step8(LocalMapObject *mapObj)
{
    sub_020632B0(mapObj, 1, 1, -3, 0, 9, 3);
    return TRUE;
}

BOOL MapObjectMovementCmd107_Step10(LocalMapObject *mapObj)
{
    sub_020632B0(mapObj, 3, 0, 0, 3, 9, 3);
    return TRUE;
}

BOOL MapObjectMovementCmd107_Step12(LocalMapObject *mapObj)
{
    sub_020632B0(mapObj, 0, 0, 4, 1, 0xC, 3);
    return TRUE;
}

BOOL MapObjectMovementCmd109_Step12(LocalMapObject *mapObj)
{
    sub_020632B0(mapObj, 0, 0, 5, 1, 0xC, 3);
    return TRUE;
}

BOOL MapObjectMovementCmd108_Step0(LocalMapObject *mapObj)
{
    sub_020632B0(mapObj, 2, 1, 5, 1, 9, 3);
    return TRUE;
}

BOOL MapObjectMovementCmd110_Step0(LocalMapObject *mapObj)
{
    sub_020632B0(mapObj, 2, 1, 4, 1, 9, 3);
    return TRUE;
}

BOOL MapObjectMovementCmd108_Step2(LocalMapObject *mapObj)
{
    sub_020632B0(mapObj, 1, 0, 5, 1, 0xC, 3);
    return TRUE;
}

BOOL MapObjectMovementCmd111_Step0(LocalMapObject *mapObj)
{
    sub_020632B0(mapObj, 0, 0, 2, 1, 6, 3);
    return TRUE;
}

BOOL MapObjectMovementCmd111_Step2(LocalMapObject *mapObj)
{
    sub_020632B0(mapObj, 2, 0, 0, 3, 6, 3);
    return TRUE;
}

BOOL MapObjectMovementCmd111_Step4(LocalMapObject *mapObj)
{
    sub_020632B0(mapObj, 3, 0, 0, 3, 9, 3);
    return TRUE;
}

BOOL MapObjectMovementCmd111_Step6(LocalMapObject *mapObj)
{
    sub_020632B0(mapObj, 0, 0, 2, 1, 6, 3);
    return TRUE;
}

BOOL MapObjectMovementCmd111_Step10(LocalMapObject *mapObj)
{
    sub_020632B0(mapObj, -3, 0, 0, 2, 9, 3);
    return TRUE;
}

BOOL MapObjectMovementCmd111_Step14(LocalMapObject *mapObj)
{
    sub_020632B0(mapObj, 0, 0, -2, 0, 6, 3);
    return TRUE;
}

BOOL MapObjectMovementCmd111_Step16(LocalMapObject *mapObj)
{
    sub_020632B0(mapObj, 0, 0, -3, 0, 9, 3);
    return TRUE;
}

BOOL MapObjectMovementCmd111_Step18(LocalMapObject *mapObj)
{
    sub_020632B0(mapObj, 3, 0, 1, 1, 9, 3);
    return TRUE;
}
