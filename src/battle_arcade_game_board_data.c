#include "global.h"

#include "bg_window.h"
#include "gf_gfx_planes.h"
#include "obj_char_transfer.h"
#include "touchscreen.h"

typedef struct _0223F99C {
    u8 flag0 : 1;
    u8 flag1 : 1;
    u8 flag2 : 1;
    u8 flag3 : 1;
    u8 flag4 : 1;
    u8 flag5 : 1;
    u8 flag6 : 1;
    u8 flag7 : 1;
} STRUCT_0223F99C;

const u8 _0223F900[4] = { 0x15, 0x10, 0x0A, 0x05 };

const STRUCT_0223F99C ov84_0223F904[7] = {
    { 1, 1, 1, 1, 1, 1, 0, 0 },
    { 1, 1, 1, 1, 1, 1, 0, 0 },
    { 1, 1, 1, 1, 1, 1, 0, 0 },
    { 1, 1, 1, 1, 1, 1, 0, 0 },
    { 1, 0, 1, 0, 1, 0, 0, 0 },
    { 0, 1, 0, 1, 0, 1, 0, 0 },
    { 0, 1, 0, 1, 0, 1, 0, 0 }
};

const TouchscreenHitbox ov84_0223F90B[2] = {
    { { 0xFE, 0x80, 0x60, 0x20 } },
    { { 0xFF, 0x00, 0x00, 0x00 } }
};

const u8 ov84_0223F913[8][2] = {
    { 0x14, 0x00 },
    { 0x10, 0x00 },
    { 0x08, 0x00 },
    { 0x04, 0x00 },
    { 0x03, 0x00 },
    { 0x02, 0x00 },
    { 0x01, 0x00 },
    { 0x00, 0x00 }
};

const GraphicsModes ov84_0223F924 = { (GXDispMode)1, (GXBGMode)0, (GXBGMode)0, (GXBG0As)0 };

const u8 ov84_0223F934[5][4] = {
    { 0x0F, 0x0F, 0x28, 0x1E },
    { 0x23, 0x14, 0x1E, 0x0F },
    { 0x1E, 0x1E, 0x23, 0x05 },
    { 0x19, 0x28, 0x1E, 0x05 },
    { 0x0A, 0x4B, 0x0A, 0x05 }
};

const BgTemplate ov84_0223F948 = { 0, 0, 0x800, 0, 1, 0, 6, 4, 0, 0, 0, 0, 0 };
const BgTemplate ov84_0223F964 = { 0, 0, 0x800, 0, 1, 0, 0, 1, 0, 0, 0, 0, 0 };
const BgTemplate ov84_0223F980 = { 0, 0, 0x800, 0, 1, 0, 4, 3, 0, 2, 0, 0, 0 };

const STRUCT_0223F99C ov84_0223F99C[32] = {
    { 0, 1, 1, 1, 1, 1, 1, 0 },
    { 1, 0, 1, 0, 0, 0, 1, 0 },
    { 1, 0, 1, 0, 0, 0, 1, 0 },
    { 1, 0, 1, 0, 0, 0, 1, 0 },
    { 0, 0, 0, 0, 1, 1, 1, 0 },
    { 0, 0, 0, 0, 1, 1, 1, 0 },
    { 1, 1, 1, 0, 0, 0, 1, 0 },
    { 0, 0, 0, 1, 1, 1, 1, 0 },
    { 0, 1, 1, 1, 1, 1, 1, 0 },
    { 0, 1, 1, 1, 1, 1, 1, 0 },
    { 1, 0, 1, 0, 0, 0, 1, 0 },
    { 1, 0, 1, 0, 0, 0, 1, 0 },
    { 1, 0, 1, 0, 0, 0, 1, 0 },
    { 0, 0, 0, 0, 1, 1, 1, 0 },
    { 0, 0, 0, 0, 1, 1, 1, 0 },
    { 1, 1, 1, 0, 0, 0, 1, 0 },
    { 0, 0, 0, 1, 1, 1, 1, 0 },
    { 0, 1, 1, 1, 1, 1, 1, 0 },
    { 0, 1, 1, 0, 0, 0, 1, 0 },
    { 0, 1, 1, 0, 0, 0, 1, 0 },
    { 0, 1, 1, 0, 0, 0, 1, 0 },
    { 0, 1, 1, 0, 0, 0, 1, 0 },
    { 0, 0, 0, 1, 0, 1, 1, 0 },
    { 0, 0, 0, 1, 0, 1, 1, 0 },
    { 1, 1, 1, 1, 1, 1, 1, 0 },
    { 1, 1, 1, 0, 0, 0, 1, 0 },
    { 1, 1, 1, 1, 1, 1, 1, 0 },
    { 0, 0, 0, 0, 1, 1, 1, 0 },
    { 0, 0, 0, 1, 1, 1, 1, 0 },
    { 0, 0, 0, 0, 1, 1, 1, 0 },
    { 1, 1, 1, 1, 1, 1, 1, 0 },
    { 0, 0, 0, 0, 0, 0, 1, 0 }
};

const GraphicsBanks ov84_0223F9BC = { (GXVRamBG)4, (GXVRamBGExtPltt)0, (GXVRamSubBG)0x80, (GXVRamSubBGExtPltt)0, (GXVRamOBJ)0x10, (GXVRamOBJExtPltt)0, (GXVRamSubOBJ)0x100, (GXVRamSubOBJExtPltt)0, (GXVRamTex)3, (GXVRamTexPltt)0x60 };

const u8 ov84_0223F9E4[4] = { 0x0B, 0x0B, 0x0B, 0x0B };

const ObjCharTransferTemplate ov84_0223F9E8 = { 0x20, 0x400, 0x400, (enum HeapID)0x6E };

const WindowTemplate ov84_0223F9F8[2] = {
    { 1, 2,    0x13, 0x1B, 4, 0x0C, 1    },
    { 1, 0x18, 0x0D, 7,    4, 0x0D, 0x6D }
};

u8 _0223FA20[0x20];
