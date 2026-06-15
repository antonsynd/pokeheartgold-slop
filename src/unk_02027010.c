#include "unk_02027010.h"

#include "global.h"

// sub_02027098 is .public but intentionally NOT declared in the (frozen,
// 1-prototype) unk_02027010.h, which system.c is byte-matched against. A local
// forward declaration avoids IPA-cascading system.c.
void sub_02027098(const char *path);

static const char _020F6458[] = "rom";

void sub_02027010(void) {
    FSArchive *arc;
    u8 *header;

    if (!FS_IsAvailable()) {
        OS_Terminate();
        return;
    }

    if (*(u32 *)0x027FF00C == 0) {
        CARD_Init();
        MI_CpuCopy8((const void *)HW_ROM_HEADER_BUF, (void *)0x027FF000, HW_CARD_ROM_HEADER_SIZE);
        MI_CpuCopy8((const void *)HW_ROM_HEADER_BUF, (void *)HW_CARD_ROM_HEADER, HW_CARD_ROM_HEADER_SIZE);
        *(u32 *)0x027FF00C = 0x4A414441;
    }

    arc = FS_FindArchive(_020F6458, 3);
    header = (u8 *)0x027FF000;
    arc->fat = *(u32 *)(header + 0x48);
    arc->fat_size = *(u32 *)(header + 0x4C);
    arc->fnt = *(u32 *)(header + 0x40);
    arc->fnt_size = *(u32 *)(header + 0x44);
    if (*(u32 *)(header + 0xC) != 0x4A414441 || *(u16 *)(header + 0x10) != 0x3130) {
        OS_Terminate();
    }
}

void sub_02027098(const char *path) {
    FSFile file;

    FS_InitFile(&file);
    if (FS_OpenFile(&file, path)) {
        *(u32 *)0x027FFC2C = *(u32 *)((u8 *)&file + 0x24);
        OS_ResetSystem(0);
    }
}
