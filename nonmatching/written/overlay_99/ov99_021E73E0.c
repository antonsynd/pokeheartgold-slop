#include "global.h"

extern BOOL ov99_021E7198(u8 *data, u32 species);
extern void ov99_021E738C(u8 *data, s16 x, s16 y);
extern void BgCommitTilemapBufferToVram(void *bgConfig, u8 bgId);

void ov99_021E73E0(u8 *data, int idx, u32 species) {
    if (ov99_021E7198(data, species)) {
        ov99_021E738C(data, (s16)((idx % 6) * 4 + 6), (s16)((idx / 6) * 3 + 4));
        BgCommitTilemapBufferToVram(*(void **)data, 3);
    }
}
