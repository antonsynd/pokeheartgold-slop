// WIP / DEFERRED (21/26 functions byte-match): terrain/map-attribute/collision
// query module over FieldSystem. main.lsf is kept on asm/unk_02054648.o until
// all 26 match. To resume: flip main.lsf to src/unk_02054648.o and iterate with
//   python3 tools/decomp_harness/objdiff.py build/heartgold.us/asm/unk_02054648.o \
//     build/heartgold.us/src/unk_02054648.o --summary
//
// MATCHED (21): sub_02054648, sub_02054774, sub_02054790, sub_020547A4(asm),
//   sub_020547D8, sub_02054824, sub_0205489C, sub_020548EC, GetMetatileBehavior,
//   sub_02054940, sub_020549A8, sub_020549F4, sub_02054A60, sub_02054A9C,
//   sub_02054AE4, sub_02054B74, sub_02054C20, sub_02054C90, sub_02054DC8(asm),
//   sub_02054E00, sub_02054E20.
// Key fixes this pass: metatile getters read the u16 attr through u8 intermediates
//   (each narrowing assign forces a (u8); GetMetatileBehavior needs `int v=(u8)attr;
//   return v;` for the double-trunc). sub_02054824 block index = `coord / 32`
//   (signed-div idiom), not a hand-rolled `(x+(x>>31))>>5`. sub_02054A9C AABB is the
//   && form (one shared `return 0`). sub_02054874/D8 cache unk2C in a local; D8
//   sentinel is 0xFF (movs #255) not 0xFFFF. sub_02054B74/C90 dropped a redundant
//   `if(count==0)continue;` (for-loop guard already covers it); sub_02054C90 has only
//   5 params (no bounds — caller in overlay_02 confirms). 549A8/F4: `if(elev==0){..}
//   return 1;` (early-return at end). E00/E20: declare loop counter before the table
//   pointer (counter -> lower reg).
// STILL OFF (5) — known leads:
//   * sub_02054654: the big mode-aware height selector (~32 bytes off; the
//     mesh_height stack slot + ov01_021FAE50 5/6-arg stack layout). Hardest.
//   * sub_02054D10: 45 diffs. arr@sp+8 / outerI@sp+12 slot order set via decl reorder
//     (outerI before arr) but more slot/loop-shape work remains.
//   * sub_02054874 / sub_020548C0 / sub_02054954: small (2-6 byte) MWCC block-layout
//     fragility. 874: NULL-return wants to be inline / F6600 at end (both `if(call)..`
//     and `if(!call)..` forms put NULL at end). 548C0: needs call==0 and flag!=1 to
//     SHARE one `return 0` block; MWCC keeps inlining the call==0 fail. 954: wants
//     `bge`/`ble` branch order; mine emits `blt`/`bgt`.
// FieldSystem (field_system.h, FROZEN): unk2C@0x2c, mapMatrix@0x30,
//   terrainAttributes@0x5c, unk60@0x60 (typed u32 but is a 2-fn vtable, cast to
//   FieldTileProvider*), 0x98 is filler (read via cast). Provider slot 0 is a
//   5-arg fx32 getHeight, slot 1 a 4-arg BOOL getAttr.
#include "unk_02054648.h"

#include "global.h"

#include "field_system.h"
#include "field_types_def.h"
#include "heap.h"
#include "map_matrix.h"
#include "overlay_01_021FB368_internal.h"
#include "terrain_attributes.h"
#include "unk_020648EC.h"

void _s32_div_f(void);

void ov01_021F630C(int idx, FieldSystemUnkSub2C *unk2C, s32 *out);
int ov01_021F3B44(int count, u8 j);
int ov01_021F3B34(int handle);
void ov01_021F3B0C(VecFx32 *out, void *src);
u8 ov01_021F6328(int linearTileIdx);
u8 ov01_021F635C(int matrixBlockIdx, int tileData, FieldSystemUnkSub2C *unk2C);
void *ov01_021F652C(FieldSystemUnkSub2C *unk2C, int i);
BOOL ov01_021F654C(FieldSystemUnkSub2C *unk2C, int x, int z, u8 *outIdx);
void *ov01_021F65D0(FieldSystemUnkSub2C *unk2C, u8 idx);
void *ov01_021F65E4(FieldSystemUnkSub2C *unk2C, u8 idx);
void *ov01_021F6600(FieldSystemUnkSub2C *unk2C, u8 idx);
int ov01_021FAE50(int mode, fx32 arg1, fx32 x, fx32 z, void *mesh, fx32 *out);

typedef struct FieldTileProvider {
    fx32 (*unk0)(FieldSystem *, fx32, fx32, fx32, u8 *);
    BOOL (*unk4)(FieldSystem *, int, int, u16 *);
} FieldTileProvider;

static s32 sub_02054648(s32 a, s32 b);
static fx32 sub_02054654(FieldSystem *fieldSystem, int mode, fx32 refHeight, fx32 xFx32, fx32 zFx32, u8 *outSelector);
fx32 sub_02054774(FieldSystem *fieldSystem, fx32 refHeight, fx32 xFx32, fx32 zFx32, u8 *outSelector);
fx32 sub_02054790(FieldSystem *fieldSystem, int mode, fx32 refHeight, fx32 xFx32, fx32 zFx32, u8 *outSelector);
static fx32 sub_020547A4(FieldSystem *fieldSystem, fx32 refHeight, fx32 xFx32, fx32 zFx32, u8 *outSelector);
static BOOL sub_020547D8(FieldSystem *fieldSystem, int x, int z, u16 *out);
static BOOL sub_02054824(FieldSystem *fieldSystem, int x, int z, u16 *out);
void *sub_02054874(FieldSystem *fieldSystem, int x, int z);
BOOL sub_020548C0(FieldSystem *fieldSystem, int x, int z);
u8 sub_020548EC(FieldSystem *fieldSystem, int x, int z);
fx32 sub_02054940(FieldSystem *fieldSystem, fx32 y, fx32 x, fx32 z, u8 *outSelector);
static int sub_02054954(FieldSystem *fieldSystem, VecFx32 *playerPos, int xInFront, int yInFront, u8 *outSelector);
void sub_02054A60(int x, int z, int dx, int dz, int hw, int hh, s32 *out);
static BOOL sub_02054A9C(void *obj, s32 *bounds, VecFx32 *delta);
BOOL sub_02054AE4(FieldSystem *fieldSystem, int targetType, s32 *bounds, int *outObj);
BOOL sub_02054B74(FieldSystem *fieldSystem, u32 *values, u32 count, s32 *bounds, int *outObj, int *outVal);
BOOL sub_02054C20(FieldSystem *fieldSystem, int targetType, int *outObj, void **outHandle);
BOOL sub_02054C90(FieldSystem *fieldSystem, u32 *values, u32 count, int *outObj, int *outVal);
int *sub_02054D10(FieldSystem *fieldSystem, enum HeapID heapId, int capacity, s32 *bounds, u32 fillValue);
void sub_02054DC8(int idx, int width, VecFx32 *out);
static BOOL sub_02054E00(u16 behavior);
BOOL sub_02054E20(u16 behavior);

static const u16 sBehaviors0[] = { 0x00D0, 0x00D2, 0x00D3, 0x0000 };
static const FieldTileProvider sProvider0 = { sub_02054774, sub_020547D8 };
static const u16 sBehaviors1[] = { 0x00D0, 0x00D1, 0x00D2, 0x00D3 };
static const FieldTileProvider sProvider1 = { sub_020547A4, sub_02054824 };

static s32 sub_02054648(s32 a, s32 b) {
    if (a >= b) {
        return a - b;
    }
    return b - a;
}

static fx32 sub_02054654(FieldSystem *fieldSystem, int mode, fx32 refHeight, fx32 xFx32, fx32 zFx32, u8 *outSelector) {
    fx32 height = 0;
    u8 selector = 0;
    FieldSystemUnkSub2C *unk2C = fieldSystem->unk2C;
    u8 mapWidth = MapMatrix_GetWidth(fieldSystem->mapMatrix);
    int width32 = (int)mapWidth << 5;
    int tile_x = (xFx32 + (xFx32 >> 31)) >> 16;
    int tile_z = (zFx32 + (zFx32 >> 31)) >> 16;
    UnkStruct_Ov01_021FB368 *zoneMgr = *(UnkStruct_Ov01_021FB368 **)fieldSystem->filler_98;
    u8 zoneIdx;
    BOOL zoneFound = ov01_021FB42C(tile_x, tile_z, zoneMgr, &zoneIdx);
    int block_col = tile_x >> 5;
    int block_row = tile_z >> 5;
    fx32 x_offset = xFx32 - (fx32)(((block_col << 5) + 0x10) << 16);
    fx32 z_offset = zFx32 - (fx32)(((block_row << 5) + 0x10) << 16);
    int tile_b0 = ov01_021F6328(tile_x + tile_z * width32);
    int matrix_block_idx = block_col + block_row * mapWidth;
    u8 b0_layer = ov01_021F635C(matrix_block_idx, tile_b0, unk2C);
    int mesh_hit = 0;
    fx32 mesh_height = 0;
    if (b0_layer <= 3) {
        void *mesh = ov01_021F65D0(unk2C, b0_layer);
        mesh_hit = ov01_021FAE50(mode, refHeight, x_offset, z_offset, mesh, &mesh_height);
    }
    if (zoneFound) {
        fx32 zone_height = ov01_021FB474(zoneIdx, zoneMgr);
        if (mesh_hit) {
            fx32 mesh_h = mesh_height;
            if (zone_height > mesh_h) {
                s32 dist_mesh = sub_02054648(mesh_h, refHeight);
                s32 dist_zone = sub_02054648(zone_height, refHeight);
                if (dist_mesh > dist_zone) {
                    height = zone_height;
                    selector = 2;
                } else {
                    height = mesh_h;
                    selector = 1;
                }
            } else {
                height = mesh_h;
                selector = 1;
            }
        } else {
            height = zone_height;
            selector = 2;
        }
    } else {
        if (mesh_hit) {
            height = mesh_height;
            selector = 1;
        }
    }
    if (outSelector != NULL) {
        *outSelector = selector;
    }
    return height;
}

fx32 sub_02054774(FieldSystem *fieldSystem, fx32 refHeight, fx32 xFx32, fx32 zFx32, u8 *outSelector) {
    return sub_02054654(fieldSystem, 0, refHeight, xFx32, zFx32, outSelector);
}

fx32 sub_02054790(FieldSystem *fieldSystem, int mode, fx32 refHeight, fx32 xFx32, fx32 zFx32, u8 *outSelector) {
    return sub_02054654(fieldSystem, mode, refHeight, xFx32, zFx32, outSelector);
}

// clang-format off
static asm fx32 sub_020547A4(FieldSystem *fieldSystem, fx32 refHeight, fx32 xFx32, fx32 zFx32, u8 *outSelector) {
    push {r3, lr}
    asr r1, r2, #0xf
    lsr r1, r1, #0x10
    add r1, r2, r1
    asr r2, r3, #0xf
    lsr r2, r2, #0x10
    add r2, r3, r2
    ldr r0, [r0, #0x2c]
    asr r1, r1, #0x10
    asr r2, r2, #0x10
    mov r3, #0
    bl ov01_021F654C
    ldr r1, [sp, #8]
    cmp r1, #0
    beq _020547D2
    cmp r0, #0
    beq _020547CC
    mov r1, #1
    b _020547CE
_020547CC:
    mov r1, #0
_020547CE:
    ldr r0, [sp, #8]
    strb r1, [r0]
_020547D2:
    mov r0, #0
    pop {r3, pc}
}
// clang-format on

static BOOL sub_020547D8(FieldSystem *fieldSystem, int x, int z, u16 *out) {
    FieldSystemUnkSub2C *unk2C = fieldSystem->unk2C;
    u8 tileIdx;
    if (!ov01_021F654C(unk2C, x, z, &tileIdx)) {
        *out = 0xFF;
        return FALSE;
    }
    const u16 *tileData = (const u16 *)ov01_021F65E4(unk2C, tileIdx);
    int col = x % 32;
    int row = z % 32;
    int idx = col + row * 32;
    *out = tileData[idx];
    return TRUE;
}

static BOOL sub_02054824(FieldSystem *fieldSystem, int x, int z, u16 *out) {
    u8 mapWidth = MapMatrix_GetWidth(fieldSystem->mapMatrix);
    int block_col = x / 32;
    int block_row = z / 32;
    int matrix_idx = block_col + block_row * mapWidth;
    const u16 *tileData = TerrainAttributes_Get(matrix_idx, fieldSystem->terrainAttributes);
    int col = x % 32;
    int row = z % 32;
    int idx = col + row * 32;
    *out = tileData[idx];
    return TRUE;
}

void *sub_02054874(FieldSystem *fieldSystem, int x, int z) {
    FieldSystemUnkSub2C *unk2C = fieldSystem->unk2C;
    u8 tileIdx;
    if (ov01_021F654C(unk2C, x, z, &tileIdx)) {
        return ov01_021F6600(unk2C, tileIdx);
    }
    return NULL;
}

void sub_0205489C(u32 *a0, int a1) {
    if (a1 == 0) {
        *a0 = (u32)&sProvider0;
    } else if (a1 == 1) {
        *a0 = (u32)&sProvider1;
    } else {
        GF_ASSERT(FALSE);
    }
}

BOOL sub_020548C0(FieldSystem *fieldSystem, int x, int z) {
    u16 attr;
    if (!((FieldTileProvider *)fieldSystem->unk60)->unk4(fieldSystem, x, z, &attr)) {
        return FALSE;
    }
    u8 v = attr >> 15;
    u8 flag = v & 1;
    if (flag == 1) {
        return TRUE;
    }
    return FALSE;
}

u8 sub_020548EC(FieldSystem *fieldSystem, int x, int z) {
    u16 attr;
    if (!((FieldTileProvider *)fieldSystem->unk60)->unk4(fieldSystem, x, z, &attr)) {
        return 0;
    }
    u8 v = attr >> 8;
    return v & 0x7F;
}

u8 GetMetatileBehavior(FieldSystem *fieldSystem, int x, int z) {
    u16 attr;
    if (!((FieldTileProvider *)fieldSystem->unk60)->unk4(fieldSystem, x, z, &attr)) {
        return 0xFF;
    }
    int v = (u8)attr;
    return v;
}

fx32 sub_02054940(FieldSystem *fieldSystem, fx32 y, fx32 x, fx32 z, u8 *outSelector) {
    return ((FieldTileProvider *)fieldSystem->unk60)->unk0(fieldSystem, y, x, z, outSelector);
}

static int sub_02054954(FieldSystem *fieldSystem, VecFx32 *playerPos, int xInFront, int yInFront, u8 *outSelector) {
    fx32 height = sub_02054940(fieldSystem, playerPos->y, (fx32)((xInFront << 16) + (2 << 14)), (fx32)((yInFront << 16) + (2 << 14)), outSelector);
    fx32 playerY = playerPos->y;
    int result;
    fx32 high, low;
    if (height >= playerY) {
        if (height <= playerY) {
            return 0;
        }
        high = height;
        low = playerY;
        result = 1;
    } else {
        high = playerY;
        low = height;
        result = -1;
    }
    if (high - low < 0x14000) {
        result = 0;
    } else {
        GF_ASSERT(result != 0);
    }
    return result;
}

BOOL sub_020549A8(FieldSystem *fieldSystem, VecFx32 *playerPos, int xInFront, int yInFront, int a4) {
    u8 selector;
    int elev = sub_02054954(fieldSystem, playerPos, xInFront, yInFront, &selector);
    if (a4 != 0) {
        *(u8 *)a4 = (u8)elev;
    }
    if (elev == 0) {
        BOOL attr = sub_020548C0(fieldSystem, xInFront, yInFront);
        if (!attr && selector == 2) {
            GetMetatileBehavior(fieldSystem, xInFront, yInFront);
        }
        return attr;
    }
    return 1;
}

u32 sub_020549F4(FieldSystem *fieldSystem, VecFx32 *playerPos, u32 x, u32 y, u32 *a4) {
    u8 selector;
    int elev = sub_02054954(fieldSystem, playerPos, (int)x, (int)y, &selector);
    if (a4 != NULL) {
        *(u8 *)a4 = (u8)elev;
    }
    if (elev == 0) {
        u32 result;
        if (!sub_02064938(fieldSystem, x, y, (u32)playerPos->y, (u32)&result)) {
            result = sub_020548C0(fieldSystem, (int)x, (int)y);
            if (!result && selector == 2) {
                GetMetatileBehavior(fieldSystem, (int)x, (int)y);
            }
            return result;
        }
        return result;
    }
    return 1;
}

void sub_02054A60(int x, int z, int dx, int dz, int hw, int hh, s32 *out) {
    int xMin = x + dx;
    int zMin = z + dz;
    int xMax = xMin + hw;
    int zMax = zMin + hh;
    GF_ASSERT(xMin >= 0 && zMin >= 0 && xMax >= 0 && zMax >= 0);
    out[0] = xMin << 16;
    out[1] = zMin << 16;
    out[2] = xMax << 16;
    out[3] = zMax << 16;
}

static BOOL sub_02054A9C(void *obj, s32 *bounds, VecFx32 *delta) {
    VecFx32 local;
    ov01_021F3B0C(&local, obj);
    local.x += delta->x;
    local.z += delta->z;
    if (bounds[0] <= local.x && local.x <= bounds[2] && bounds[1] <= local.z && local.z <= bounds[3]) {
        return TRUE;
    }
    return FALSE;
}

BOOL sub_02054AE4(FieldSystem *fieldSystem, int targetType, s32 *bounds, int *outObj) {
    u8 outerI;
    for (outerI = 0; outerI < 4; outerI++) {
        s32 count;
        ov01_021F630C(outerI, fieldSystem->unk2C, &count);
        if (count != 0) {
            void *tileHandle = ov01_021F652C(fieldSystem->unk2C, outerI);
            u8 mapWidth = MapMatrix_GetWidth(fieldSystem->mapMatrix);
            VecFx32 tileCenter;
            sub_02054DC8((int)tileHandle, mapWidth, &tileCenter);
            u8 innerJ;
            for (innerJ = 0; innerJ < 32; innerJ++) {
                int obj = ov01_021F3B44(count, innerJ);
                if (sub_02054A9C((void *)obj, bounds, &tileCenter)) {
                    int type = ov01_021F3B34(obj);
                    if (type == targetType) {
                        if (outObj != NULL) {
                            *outObj = obj;
                        }
                        return TRUE;
                    }
                }
            }
        }
    }
    return FALSE;
}

BOOL sub_02054B74(FieldSystem *fieldSystem, u32 *values, u32 count, s32 *bounds, int *outObj, int *outVal) {
    u8 outerI;
    for (outerI = 0; outerI < 4; outerI++) {
        s32 slotCount;
        ov01_021F630C(outerI, fieldSystem->unk2C, &slotCount);
        if (slotCount != 0) {
            void *tileHandle = ov01_021F652C(fieldSystem->unk2C, outerI);
            u8 mapWidth = MapMatrix_GetWidth(fieldSystem->mapMatrix);
            VecFx32 tileCenter;
            sub_02054DC8((int)tileHandle, mapWidth, &tileCenter);
            u8 innerJ;
            for (innerJ = 0; innerJ < 32; innerJ++) {
                int obj = ov01_021F3B44(slotCount, innerJ);
                if (sub_02054A9C((void *)obj, bounds, &tileCenter)) {
                    int val = ov01_021F3B34(obj);
                    u8 k;
                    for (k = 0; k < count; k++) {
                        if (val == (int)values[k]) {
                            if (outObj != NULL) {
                                *outObj = obj;
                            }
                            if (outVal != NULL) {
                                *outVal = val;
                            }
                            return TRUE;
                        }
                    }
                }
            }
        }
    }
    return FALSE;
}

BOOL sub_02054C20(FieldSystem *fieldSystem, int targetType, int *outObj, void **outHandle) {
    u8 outerI;
    for (outerI = 0; outerI < 4; outerI++) {
        s32 slotCount;
        ov01_021F630C(outerI, fieldSystem->unk2C, &slotCount);
        if (slotCount != 0) {
            u8 innerJ;
            for (innerJ = 0; innerJ < 32; innerJ++) {
                int obj = ov01_021F3B44(slotCount, innerJ);
                int type = ov01_021F3B34(obj);
                if (type == targetType) {
                    if (outObj != NULL) {
                        *outObj = obj;
                    }
                    if (outHandle != NULL) {
                        *outHandle = ov01_021F652C(fieldSystem->unk2C, outerI);
                    }
                    return TRUE;
                }
            }
        }
    }
    return FALSE;
}

BOOL sub_02054C90(FieldSystem *fieldSystem, u32 *values, u32 count, int *outObj, int *outVal) {
    u8 outerI;
    for (outerI = 0; outerI < 4; outerI++) {
        s32 slotCount;
        ov01_021F630C(outerI, fieldSystem->unk2C, &slotCount);
        if (slotCount != 0) {
            u8 innerJ;
            for (innerJ = 0; innerJ < 32; innerJ++) {
                int obj = ov01_021F3B44(slotCount, innerJ);
                int val = ov01_021F3B34(obj);
                u8 k;
                for (k = 0; k < count; k++) {
                    if (val == (int)values[k]) {
                        if (outObj != NULL) {
                            *outObj = obj;
                        }
                        if (outVal != NULL) {
                            *outVal = val;
                        }
                        return TRUE;
                    }
                }
            }
        }
    }
    return FALSE;
}

int *sub_02054D10(FieldSystem *fieldSystem, enum HeapID heapId, int capacity, s32 *bounds, u32 fillValue) {
    u8 outerI;
    int *arr = (int *)Heap_AllocAtEnd(heapId, capacity * 4);
    int i;
    u8 count = 0;
    for (i = 0; i < capacity; i++) {
        arr[i] = (int)fillValue;
    }
    for (outerI = 0; outerI < 4; outerI++) {
        s32 slotCount;
        ov01_021F630C(outerI, fieldSystem->unk2C, &slotCount);
        if (slotCount != 0) {
            void *tileHandle = ov01_021F652C(fieldSystem->unk2C, outerI);
            u8 mapWidth = MapMatrix_GetWidth(fieldSystem->mapMatrix);
            VecFx32 tileCenter;
            sub_02054DC8((int)tileHandle, mapWidth, &tileCenter);
            u8 innerJ;
            for (innerJ = 0; innerJ < 32; innerJ++) {
                int obj = ov01_021F3B44(slotCount, innerJ);
                if (sub_02054A9C((void *)obj, bounds, &tileCenter)) {
                    int val = ov01_021F3B34(obj);
                    if (val != 0) {
                        if ((int)count >= capacity) {
                            GF_ASSERT(FALSE);
                            return arr;
                        }
                        arr[count] = val;
                        count = (u8)(count + 1);
                    }
                }
            }
        }
    }
    return arr;
}

// clang-format off
asm void sub_02054DC8(int idx, int width, VecFx32 *out) {
    push {r4, r5, r6, lr}
    add r4, r2, #0
    mov r2, #1
    lsl r2, r2, #0x14
    str r2, [r4, #0]
    add r5, r0, #0
    add r6, r1, #0
    str r2, [r4, #8]
    bl _s32_div_f
    lsl r1, r1, #0x10
    lsr r1, r1, #0x10
    ldr r0, [r4, #0]
    lsl r1, r1, #0x15
    add r0, r0, r1
    str r0, [r4, #0]
    add r0, r5, #0
    add r1, r6, #0
    bl _s32_div_f
    lsl r0, r0, #0x10
    lsr r0, r0, #0x10
    ldr r1, [r4, #8]
    lsl r0, r0, #0x15
    add r0, r1, r0
    str r0, [r4, #8]
    pop {r4, r5, r6, pc}
}
// clang-format on

static BOOL sub_02054E00(u16 behavior) {
    int i;
    const u16 *p = sBehaviors1;
    for (i = 0; i < 4; i++, p++) {
        if (behavior == *p) {
            return TRUE;
        }
    }
    return FALSE;
}

BOOL sub_02054E20(u16 behavior) {
    int i;
    const u16 *p;
    if (!sub_02054E00(behavior)) {
        return FALSE;
    }
    p = sBehaviors0;
    for (i = 0; i < 3; i++, p++) {
        if (behavior == *p) {
            return TRUE;
        }
    }
    return FALSE;
}
