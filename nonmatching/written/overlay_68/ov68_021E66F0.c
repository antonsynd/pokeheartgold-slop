#include "global.h"
#include "bg_window.h"
#include "message_format.h"
#include "move.h"
#include "pm_string.h"
#include "text.h"

typedef struct UnkStruct_ov68_021E66F0_Entry {
    String *name;
    u32 move;
} UnkStruct_ov68_021E66F0_Entry;

typedef struct UnkStruct_ov68_021E66F0 {
    /* 0x000 */ u8 filler_000[0xA8];
    /* 0x0A8 */ Window window;
    /* 0x0B8 */ u8 filler_0B8[0xFC - 0xB8];
    /* 0x0FC */ MessageFormat *msgFmt;
    /* 0x100 */ String *str100;
    /* 0x104 */ String *str104;
    /* 0x108 */ String *str108;
    /* 0x10C */ u8 filler_10C[4];
    /* 0x110 */ UnkStruct_ov68_021E66F0_Entry *entries;
    /* 0x114 */ u8 filler_114[0x1B8 - 0x114];
    /* 0x1B8 */ u8 entryCount;
} UnkStruct_ov68_021E66F0;

u8 ov68_021E66A0(UnkStruct_ov68_021E66F0 *ctl, int a1, u8 a2, int a3, int a4, int a5, int a6);

u8 ov68_021E66F0(UnkStruct_ov68_021E66F0 *ctl, int base, int row) {
    int idx = base + row;
    int y = row << 5;
    u8 pp;
    u32 move;

    if (idx >= ctl->entryCount) {
        return ov68_021E66A0(ctl, 0, row * 4 + 4, 0x10, 4, 0, 4);
    }
    AddTextPrinterParameterizedWithColor(&ctl->window, 0, ctl->entries[idx].name, 0, y, 0xFF, 0xF0E00, NULL);
    AddTextPrinterParameterizedWithColor(&ctl->window, 0, ctl->str104, 0x10, y + 0x10, 0xFF, 0x10200, NULL);
    move = ctl->entries[idx].move;
    pp = GetMoveMaxPP(move, 0);
    BufferIntegerAsString(ctl->msgFmt, 0, pp, 2, 1, 1);
    BufferIntegerAsString(ctl->msgFmt, 1, pp, 2, 0, 1);
    StringExpandPlaceholders(ctl->msgFmt, ctl->str100, ctl->str108);
    return AddTextPrinterParameterizedWithColor(&ctl->window, 0, ctl->str100, 0x2D, y + 0x10, 0xFF, 0x10200, NULL);
}
