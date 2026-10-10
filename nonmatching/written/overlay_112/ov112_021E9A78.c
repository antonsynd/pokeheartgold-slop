#include "global.h"

#include "bg_window.h"

extern const WindowTemplate *const ov112_021FF5D0[];
extern const WindowTemplate *const ov112_021FF5D8[];
extern const WindowTemplate *const ov112_021FF5F0[];
extern const WindowTemplate *const ov112_021FF608[];
extern const WindowTemplate *const ov112_021FF624[];
extern const WindowTemplate *const ov112_021FF640[];
extern const WindowTemplate *const ov112_021FF660[];
extern const WindowTemplate *const ov112_021FF684[];
extern const u8 ov112_021FEC80[];

static u8 AddWindows(u8 *data, u32 offset, const WindowTemplate *const *templates, u32 count) {
    u32 i;
    for (i = 0; i < count; i++) {
        AddWindow(*(BgConfig **)(data + 0x18), (Window *)(data + offset + i * 0x10), templates[i]);
    }
    return count;
}

void ov112_021E9A78(u8 *data, int kind) {
    // For an out-of-range kind the asm stores whatever r4 held on entry (the caller's r4).
    u32 callerR4;
    __asm__ volatile("movs %0, r4" : "=l"(callerR4) : : "cc");
    u8 count = (u8)callerR4;

    if (kind >= 8) {
        GF_AssertFail();
    }
    switch ((u32)kind) {
    case 0:
        count = AddWindows(data, 0x1EBA8, ov112_021FF608, 7);
        data[0x1EC4B] = kind;
        break;
    case 1:
        count = AddWindows(data, 0x1EA68, ov112_021FF5D8, 6);
        data[0x1EC4A] = kind;
        break;
    case 2:
        count = AddWindows(data, 0x1EBA8, ov112_021FF5D0, 2);
        data[0x1EC4B] = kind;
        break;
    case 3:
        count = AddWindows(data, 0x1EA68, ov112_021FF640, 8);
        data[0x1EC4A] = kind;
        break;
    case 4:
        count = AddWindows(data, 0x1EA68, ov112_021FF660, 9);
        data[0x1EC4A] = kind;
        break;
    case 5:
        count = AddWindows(data, 0x1EA68, ov112_021FF624, 7);
        data[0x1EC4A] = kind;
        break;
    case 6:
        count = AddWindows(data, 0x1EA68, ov112_021FF684, 16);
        data[0x1EC4A] = kind;
        break;
    case 7:
        count = AddWindows(data, 0x1EA68, ov112_021FF5F0, 6);
        data[0x1EC4B] = kind;
        break;
    }
    data[0x1EC48 + ov112_021FEC80[kind]] = count;
}
