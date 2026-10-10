#include "global.h"
#include "gf_gfx_planes.h"
#include "safari_zone.h"
#include "sprite_system.h"

#define U8AT(p, off)  (*(u8 *)((u8 *)(p) + (off)))
#define S32AT(p, off) (*(int *)((u8 *)(p) + (off)))
#define PTRAT(p, off) (*(void **)((u8 *)(p) + (off)))

extern BOOL ov108_021E82E0(void *data, int a1);
extern void ov108_021E84F8(void *a0, u8 a1, u8 a2);
extern void ov108_021E7BB4(void *data, u8 a1, u8 a2);
extern void ov108_021E6850(void *data);

#define SPRITE(p, idx) ((ManagedSprite *)PTRAT(p, 0x36C + (idx) * 4))

int ov108_021E6090(void *data) {
    int ofs = ((U8AT(data, 0x184E2) >> 2) & 1) * 6;
    u8 a, b;

    switch (S32AT(data, 8)) {
    case 0:
        ManagedSprite_SetPriority(SPRITE(data, U8AT(data, 0x184DF) + ofs), 0);
        ManagedSprite_SetPriority(SPRITE(data, U8AT(data, 0x184E0) + ofs), 0);
        GfGfx_EngineBTogglePlanes(0x10, 0);
        S32AT(data, 8)++;
        break;
    case 1:
        if (ov108_021E82E0(data, 0)) {
            S32AT(data, 0x184E8) = 1;
            SafariZone_SwapAreasInSet((SafariZoneAreaSet *)((u8 *)data + 0x1C), U8AT(data, 0x184DF), U8AT(data, 0x184E0));
            a = U8AT(data, 0x184DF);
            ov108_021E84F8(PTRAT(data, 0x348), (u8)(a + ofs), U8AT(data, a * 0x7A + 0x1C));
            a = U8AT(data, 0x184DF);
            ov108_021E7BB4(data, a, U8AT(data, a * 0x7A + 0x1C));
            b = U8AT(data, 0x184E0);
            ov108_021E84F8(PTRAT(data, 0x348), (u8)(b + ofs), U8AT(data, b * 0x7A + 0x1C));
            b = U8AT(data, 0x184E0);
            ov108_021E7BB4(data, b, U8AT(data, b * 0x7A + 0x1C));
            S32AT(data, 8)++;
        }
        break;
    case 2:
        if (ov108_021E82E0(data, 1)) {
            ManagedSprite_SetPriority(SPRITE(data, U8AT(data, 0x184DF) + ofs), 2);
            ManagedSprite_SetPriority(SPRITE(data, U8AT(data, 0x184E0) + ofs), 2);
            GfGfx_EngineBTogglePlanes(0x10, 1);
            S32AT(data, 8)++;
        }
        break;
    default:
        U8AT(data, 0x184DF) = U8AT(data, 0x184E0);
        ov108_021E6850(data);
        S32AT(data, 8) = 0;
        S32AT(data, 0xC) = 2;
        return 4;
    }
    return 3;
}
