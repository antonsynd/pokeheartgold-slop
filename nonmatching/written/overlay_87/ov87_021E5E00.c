#include "global.h"

#include "bg_window.h"
#include "gf_gfx_planes.h"
#include "unk_02005D10.h"

extern const s16 ov87_021E82E4[];

extern void ov87_021E7A2C(void *app);
extern void ov87_021E7334(void *app);
extern void ov87_021E7324(void *app, u8 a);
extern void ov87_021E734C(void *app, u8 a);
extern void ov87_021E74B8(void *app);
extern void ov87_021E74D4(void *app);
extern void ov87_021E7FEC(void *sprite, int x, int y);
extern void ov87_021E7FD4(void *sprite, int a);
extern void ov87_021E8078(void *sprite, int a);
extern void ov87_021E803C(void *sprite, int a);
extern void ov87_021E7460(void *app, int a, u8 b, int c, int d);

BOOL ov87_021E5E00(u8 *p) {
    int i;

    switch (p[8]) {
    case 0:
        ov87_021E7A2C(p);
        BG_LoadCharTilesData(*(BgConfig **)(p + 0x58), 0, *(void **)(p + 0x38c), *(u32 *)(*(u8 **)(p + 0x388) + 0x10), 0);
        BgCommitTilemapBufferToVram(*(BgConfig **)(p + 0x58), 0);
        *(s16 *)(p + 0x12) = 0x100;
        BgSetPosTextAndCommit(*(BgConfig **)(p + 0x58), 6, 0, *(s16 *)(p + 0x12));
        BgSetPosTextAndCommit(*(BgConfig **)(p + 0x58), 0, 0, *(s16 *)(p + 0x12));
        BgSetPosTextAndCommit(*(BgConfig **)(p + 0x58), 1, 0, *(s16 *)(p + 0x12));
        GfGfx_EngineATogglePlanes(1, 1);
        GfGfx_EngineATogglePlanes(2, 1);
        GfGfx_EngineBTogglePlanes(4, 1);
        *(s16 *)(p + 0x10) = -256;
        p[p[0xe] + 0x19] = 0;
        /* a byte-clearing loop of 0x9600 iterations, unrolled so it stays inside the sandbox's cycle budget */
        for (i = 0; i < 0x9600; i += 8) {
            u8 *q = p + 0x3fa + i;

            q[0] = 0;
            q[1] = 0;
            q[2] = 0;
            q[3] = 0;
            q[4] = 0;
            q[5] = 0;
            q[6] = 0;
            q[7] = 0;
        }
        p[0x3a1] = 0;
        ov87_021E7334(p);
        ov87_021E7324(p, p[p[0xe] + 0x19]);
        ov87_021E734C(p, p[p[0xe] + 0x19]);
        ov87_021E74B8(p);
        ov87_021E74D4(p);
        p[8] = 1;
        break;
    case 1:
        for (i = 0; i < 4; i++) {
            ov87_021E7FEC(*(void **)(p + 0x2f8 + i * 4), *(s16 *)(p + 0x10) + 0x3c, 0x1a + i * 0x2a);
            ov87_021E7FD4(*(void **)(p + 0x2f8 + i * 4), 1);
        }
        for (i = 0; i < 3; i++) {
            ov87_021E8078(*(void **)(p + 0x344 + i * 4), 1);
        }
        p[0x39d] = 0;
        p[0x3a0] = p[0x3a0] & ~1;
        p[0x3a2] = 0xb1;
        p[0x3a3] = 0xb2;
        p[0x3a4] = 0xb3;
        for (i = 0; i < 9; i++) {
            ov87_021E7FEC(*(void **)(p + 0x308 + i * 4), *(s16 *)(p + 0x10) + ov87_021E82E4[i * 2], ov87_021E82E4[i * 2 + 1]);
            ov87_021E7FD4(*(void **)(p + 0x308 + i * 4), 1);
            ov87_021E803C(*(void **)(p + 0x308 + i * 4), p[i + 0x360]);
        }
        ov87_021E7460(p, 1, p[p[0xe] + 0x15] + 4, 0x20, 0x18);
        ov87_021E7460(p, 6, p[p[0xe] + 0x15] + 1, 0x20, 0x18);
        PlaySE(0x560);
        p[8] = 2;
        break;
    case 2:
        BgSetPosTextAndCommit(*(BgConfig **)(p + 0x58), 6, 0, *(s16 *)(p + 0x12));
        BgSetPosTextAndCommit(*(BgConfig **)(p + 0x58), 0, 0, *(s16 *)(p + 0x12));
        BgSetPosTextAndCommit(*(BgConfig **)(p + 0x58), 1, 0, *(s16 *)(p + 0x12));
        *(s16 *)(p + 0x12) = *(s16 *)(p + 0x12) - 0x10;
        if (*(s16 *)(p + 0x10) >= 0) {
            p[8] = 3;
        } else {
            for (i = 0; i < 4; i++) {
                ov87_021E7FEC(*(void **)(p + 0x2f8 + i * 4), *(s16 *)(p + 0x10) + 0x3c, 0x1a + i * 0x2a);
            }
            for (i = 0; i < 9; i++) {
                ov87_021E7FEC(*(void **)(p + 0x308 + i * 4), *(s16 *)(p + 0x10) + ov87_021E82E4[i * 2], ov87_021E82E4[i * 2 + 1]);
            }
        }
        *(s16 *)(p + 0x10) = *(s16 *)(p + 0x10) + 0x10;
        break;
    case 3:
        *(s16 *)(p + 0x10) = 0;
        *(s16 *)(p + 0x12) = 0;
        return 1;
    }
    return 0;
}
