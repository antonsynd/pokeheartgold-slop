#include "global.h"

#include "message_printer.h"
#include "party.h"
#include "pokemon.h"

typedef struct Ov83_022400BC {
    u8 filler_000[9];
    u8 unk9;
    u8 filler_00A[0x4FA];
    MessagePrinter *printer;
    u8 filler_508[0x29C];
    Party *party;
} Ov83_022400BC;

BOOL ov80_02237D8C(u8 a0);

void ov83_022400BC(Ov83_022400BC *a0, Window *window, int slot, int single) {
    u16 maxHpX;
    u16 slashX;
    u16 hpX;
    u32 y;
    Pokemon *mon = Party_GetMonByIndex(a0->party, slot);
    int baseX = ov80_02237D8C(a0->unk9) == FALSE ? 36 : 4;

    if (single == 0) {
        hpX = baseX + slot * 64;
        slashX = baseX + 24 + slot * 64;
        y = 1;
        maxHpX = baseX + 32 + slot * 64;
    } else {
        slashX = 28;
        hpX = 4;
        y = 0;
        maxHpX = 36;
    }
    PrintUIntOnWindow(a0->printer, GetMonData(mon, MON_DATA_HP, NULL), 3, PRINTING_MODE_RIGHT_ALIGN, window, hpX, y);
    sub_0200CDAC(a0->printer, 0, window, slashX, y);
    PrintUIntOnWindow(a0->printer, GetMonData(mon, MON_DATA_MAX_HP, NULL), 3, PRINTING_MODE_LEFT_ALIGN, window, maxHpX, y);
}
