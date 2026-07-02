#include <nitro/section.h>

#include "global.h"

#include "bg_window.h"
#include "obj_char_transfer.h"

// Tail of the battle_arcade_game_board_data rodata run (0x0223F9E4..0x0223FA08)
// plus the file's 0x20-byte .bss. Split from battle_arcade_game_board_data.c
// because MWCC emits file-scope consts size-sorted and this tail is where the
// retail layout breaks size-ascending order (see that file's header comment).

#pragma section PARENT begin

const u8 ov84_0223F9E4[4] = { 0x0B, 0x0B, 0x0B, 0x0B };

const ObjCharTransferTemplate ov84_0223F9E8 = { 0x20, 0x400, 0x400, (enum HeapID)0x6E };

const WindowTemplate ov84_0223F9F8[2] = {
    { 1, 2,    0x13, 0x1B, 4, 0x0C, 1    },
    { 1, 0x18, 0x0D, 7,    4, 0x0D, 0x6D }
};

#pragma section PARENT end

// NOTE: the asm file's "_0223FA20: .space 0x20" .bss does NOT exist in the
// linked retail output — mwldarm dead-strips the unreferenced section even
// from the asm object, and the OVT bss_size=0x20 it was reconstructed from is
// just battle_arcade_game_board.o's 2-byte bss rounded up to 32-byte overlay
// alignment. Defining it here would inflate the OVT bss size to 0x40.
