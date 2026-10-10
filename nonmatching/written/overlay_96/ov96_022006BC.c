#include "global.h"

typedef struct UnkStruct_ov96_022006BC {
    u8 filler0[0x150];
    void *unk150[4]; // [idx] and [idx + 2]
    u16 unk160[2];
    s32 unk164;
    s32 unk168;
} UnkStruct_ov96_022006BC;

extern VecFx32 *ov96_021EB594(void *obj);
extern void ov96_021EB588(void *obj, VecFx32 *vec);
extern void ov96_02200454(UnkStruct_ov96_022006BC *data, u8 idx, s32 param);
extern void ov96_02200BD8(UnkStruct_ov96_022006BC *data, u8 param);
extern s32 _s32_div_f(s32 a, s32 b);

BOOL ov96_022006BC(UnkStruct_ov96_022006BC *data, s32 param1)
{
    VecFx32 pos;

    switch (data->unk164) {
    case 0:
        pos = *ov96_021EB594(data->unk150[data->unk168]);
        pos.y += 0x20000;
        ov96_021EB588(data->unk150[data->unk168], &pos);
        ov96_021EB588(data->unk150[data->unk168 + 2], &pos);
        if (pos.y >= 0x2e0000) {
            pos.y = 0x1d8000;
            ov96_021EB588(data->unk150[data->unk168], &pos);
            ov96_021EB588(data->unk150[data->unk168 + 2], &pos);
            data->unk164++;
        }
        break;
    case 1:
        ov96_02200454(data, (u8)data->unk168, param1);
        if (data->unk160[data->unk168] == 0) {
            data->unk160[data->unk168] = 2;
        } else {
            data->unk160[data->unk168]--;
        }
        data->unk168 = (data->unk168 + 1) % 2;
        data->unk164++;
        break;
    case 2:
        pos = *ov96_021EB594(data->unk150[data->unk168]);
        pos.y += 0x20000;
        ov96_021EB588(data->unk150[data->unk168], &pos);
        ov96_021EB588(data->unk150[data->unk168 + 2], &pos);
        if (pos.y >= 0x288000) {
            pos.y = 0x288000;
            ov96_021EB588(data->unk150[data->unk168], &pos);
            ov96_021EB588(data->unk150[data->unk168 + 2], &pos);
            data->unk168 = (data->unk168 + 1) % 2;
            data->unk164++;
        }
        break;
    case 3:
        pos = *ov96_021EB594(data->unk150[data->unk168]);
        pos.y += 0x20000;
        ov96_021EB588(data->unk150[data->unk168], &pos);
        ov96_021EB588(data->unk150[data->unk168 + 2], &pos);
        if (pos.y >= 0x230000) {
            pos.y = 0x230000;
            ov96_021EB588(data->unk150[data->unk168], &pos);
            ov96_021EB588(data->unk150[data->unk168 + 2], &pos);
            data->unk168 = (data->unk168 + 1) % 2;
            ov96_02200BD8(data, (u8)((param1 + 2) % 3));
            data->unk164 = 0;
            return TRUE;
        }
        break;
    }
    return FALSE;
}
