#include "global.h"
#include "pokemon.h"

void ov18_021F3CA8(void *app, int a1, u8 *form, u8 *gender);
void ov18_021F11C0(void *app, int a1, int a2);
void ov18_021F1294(void *app, int a1, int x, int y, BOOL a4);
void ov18_021F1A7C(void *app, u16 species, u8 form, u8 gender, u8 facing, int a5, int a6);

void ov18_021F684C(u8 *app, int a1, int a2, int a3) {
    u32 callerR7 = *(u32 *)__builtin_frame_address(0);
    u8 formGender[2];
    u32 height;
    u32 facing;
    u32 x;
    u32 y;
    u32 flags;

    // x is never written when a1 is neither 1 nor 2: the asm then passes an uninitialised stack slot.
    y = callerR7;

    ov18_021F3CA8(app, a2, &formGender[0], &formGender[1]);
    if ((app[0x18c7] >> 7 & 1) == 0) {
        facing = 2;
        height = 0;
    } else {
        facing = 0;
        height = GetMonPicHeightBySpeciesGenderForm(*(u16 *)(app + 0x18a2), formGender[1], 0, formGender[0], 0);
    }
    if (a1 == 1) {
        y = (u8)(height + 0x78);
        x = 0x40;
        if ((app[0x18c7] >> 5 & 1) == 1) {
            a1 = 3;
            ov18_021F11C0(app, 1, 0);
            ov18_021F11C0(app, a1, 1);
        } else {
            ov18_021F11C0(app, 1, 1);
            ov18_021F11C0(app, 3, 0);
        }
        flags = app[0x18c7];
        app[0x18c7] = (flags & ~0x20) | (((1 ^ (flags >> 5 & 1)) & 1) << 5);
    } else if (a1 == 2) {
        y = (u8)(height + 0x78);
        x = 0xc0;
        if ((app[0x18c7] >> 6 & 1) == 1) {
            a1 = 4;
            ov18_021F11C0(app, 2, 0);
            ov18_021F11C0(app, a1, 1);
        } else {
            ov18_021F11C0(app, 2, 1);
            ov18_021F11C0(app, 4, 0);
        }
        flags = app[0x18c7];
        app[0x18c7] = (flags & ~0x40) | (((1 ^ (flags >> 6 & 1)) & 1) << 6);
    }
    ov18_021F1A7C(app, *(u16 *)(app + 0x18a2), formGender[0], formGender[1], facing, a1, a3);
    ov18_021F1294(app, a1, x, y, TRUE);
}
