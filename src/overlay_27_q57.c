#include "global.h"

#include "field_system.h"
#include "start_menu.h"

typedef struct Ov27MenuIcon {
    u16 unk0;
    u16 unk2_0 : 15;
    u16 hidden : 1;
} Ov27MenuIcon;

typedef struct Ov27Entry {
    u8 visible;
    u8 filler_1[7];
} Ov27Entry;

typedef struct Ov27_0225C10C {
    u8 filler_000[0x10];
    FieldSystem *fieldSystem;
    u8 filler_014[0x45C];
    Ov27Entry entries[7];
    u8 filler_4A8[0x6C];
    u8 iconVisible[8];
    u32 unk51C_0 : 1;
    u32 layout : 4;
    u32 unk51C_5 : 27;
} Ov27_0225C10C;

extern const Ov27MenuIcon ov27_0225CF94[];
extern const u8 ov27_0225CFC8[][8];

void ov27_0225C10C(Ov27_0225C10C *a0) {
    int i;

    for (i = 0; i < 7; i++) {
        int icon = ov27_0225CFC8[a0->layout][i];

        if (icon != 13) {
            if (icon < 7) {
                a0->iconVisible[i] = FieldSystem_ShouldDrawStartMenuIcon(a0->fieldSystem, icon);
            } else {
                a0->iconVisible[i] = ov27_0225CF94[icon].hidden;
            }
        }
        a0->entries[i].visible = a0->iconVisible[i];
    }
}
