#include "global.h"
#include "bg_window.h"
#include "message_format.h"
#include "screen_fade.h"

extern void ov112_021E9C10(u8 *work, int a1);
extern void ov112_021E9A78(u8 *work, int a1);
extern BOOL ov112_021EFAD4(void *a0, void *a1);
extern void ov112_021EA688(u8 *work, int a1);
extern void ov112_021E7CA4(u8 *work, int a1, int a2);
extern void ov112_021E9FD8(u8 *work, int a1, u32 a2, int a3);
extern void ov112_021EA6B8(u8 *work, int a1, int a2, int a3);
extern void ov112_021EA670(u8 *work, int a1);
extern void ov112_021E9F5C(u8 *work, int a1, int a2, u32 a3);
extern void ov112_021EAB78(u8 *work, int a1, u32 a2, u32 a3);

int ov112_021EFB14(u8 *work) {
    int i;
    u8 *entry;
    u16 *walker;

    ov112_021E9C10(work, 4);
    ov112_021E9A78(work, 5);
    FillBgTilemapRect(*(BgConfig **)(work + 0x18), 1, 0, 0, 0, 0x20, 0x18, 0x10);
    if (!ov112_021EFAD4(work + 0x9D70, work + 0xAABC)) {
        ov112_021EA688(work, 9);
        return 0x11;
    }
    ov112_021E7CA4(work, 2, 0xF);
    ov112_021E9FD8(work, 1, *(u32 *)(work + 0x1E4A0), 0);
    ov112_021E9FD8(work, 1, *(u32 *)(work + 0x1E4A0), 0);
    for (i = 0; i < 4; i++) {
        ov112_021EA688(work, i + 9);
    }
    ov112_021EA6B8(work, 9, 0x28, 0x40);
    ov112_021EA6B8(work, 10, 0x90, 0x40);
    ov112_021EA6B8(work, 11, 0x28, 0x60);
    ov112_021EA6B8(work, 12, 0x90, 0x60);
    entry = work;
    for (i = 0; i < 3; i++, entry += 0x10) {
        if (*(u16 *)(entry + 0x9D7C) != 0) {
            ov112_021EA670(work, i + 9);
            BufferSpeciesName(*(MessageFormat **)(work + 0x1E448), i + 8, *(u16 *)(entry + 0x9D7C));
            ov112_021E9F5C(work, i + 3, i + 0x43, 0x30400);
            ov112_021EAB78(work, i, *(u16 *)(entry + 0x9D7C), entry[0x9D89] & 0x1F);
        }
    }
    if ((work[0xAABC] >> 5) & 1) {
        walker = (u16 *)(work + 0xAD00);
        if (*walker != 0) {
            ov112_021EA670(work, 12);
            BufferSpeciesName(*(MessageFormat **)(work + 0x1E448), 11, *walker);
            ov112_021E9F5C(work, 6, 0x46, 0x30400);
            ov112_021EAB78(work, 3, *walker, ((u8 *)walker)[0xD] & 0x1F);
        }
    }
    BeginNormalPaletteFade((enum FadeMode)0, (enum FadeType)1, (enum FadeType)1, 0, 6, 1, (enum HeapID)0x9A);
    return 0xD;
}
