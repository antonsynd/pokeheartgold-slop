#include "global.h"

#include "bg_window.h"
#include "font.h"
#include "heap.h"
#include "player_data.h"
#include "text.h"
#include "unk_02035900.h"

typedef struct Ov93Session {
    u8 filler_00[0x2C];
    u8 ids[4];
    u8 count;
} Ov93Session;

typedef struct Ov93_0225D4EC {
    Ov93Session *session;
    u8 filler_04[0x2C];
    Window windows[4];
} Ov93_0225D4EC;

extern const u8 ov93_02262A68[][4];

#pragma optimization_level 2
#pragma opt_common_subs off

PlayerProfile *ov90_022588CC(Ov93Session *session, u8 id);
BOOL ov90_022588A4(Ov93Session *session, u8 id);
int ov93_0225E3C4(Ov93_0225D4EC *a0, u8 id);

void ov93_0225D4EC(Ov93_0225D4EC *a0) {
    int i, slot;
    PlayerProfile *profile;
    String *name;
    int myId;
    u32 color;
    int width, x;

    myId = sub_0203769C();
    for (i = 0; i < a0->session->count; i++) {
        if (myId != a0->session->ids[i]) {
            profile = ov90_022588CC(a0->session, a0->session->ids[i]);
            name = PlayerProfile_GetPlayerName_NewString(profile, HEAP_ID_117);
            slot = ov93_0225E3C4(a0, a0->session->ids[i]);
            if (ov90_022588A4(a0->session, a0->session->ids[i]) == TRUE) {
                color = MAKE_TEXT_COLOR(7, 8, 15);
            } else {
                color = MAKE_TEXT_COLOR(1, 2, 15);
            }
            width = FontID_String_GetWidth(0, name, 0);
            x = 8 * 10 / 2 - width / 2;
            if (width & 1) {
                x--;
            }
            AddTextPrinterParameterizedWithColor(&a0->windows[ov93_02262A68[a0->session->count][slot]], 0, name, x, 0, TEXT_SPEED_INSTANT, color, NULL);
            Heap_Free(name);
        }
    }
}
