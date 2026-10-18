#include "global.h"

#include "bg_window.h"

typedef struct Ov96LaneGfx {
    u8 filler_0[4];
    BgConfig *bgConfig;
} Ov96LaneGfx;

typedef struct Ov96LaneFlash {
    u8 state;
    u8 lane;
    u8 timer;
    s8 unk3;
    u8 filler_4[4];
    Ov96LaneGfx *gfx;
    u8 delay;
    u8 frame;
    u8 isBonus;
    u8 isBig;
} Ov96LaneFlash;

typedef struct Ov96_02214258 {
    u8 filler_000[0x7D4];
    Ov96LaneFlash flashes[1];
} Ov96_02214258;

typedef struct Ov96FlashPalettes {
    u8 palette[2];
} Ov96FlashPalettes;

extern u8 ov96_0221D1F4[];

void ov96_02214044(Ov96LaneGfx *gfx, u8 lane, int type);

void ov96_02214258(Ov96_02214258 *a0, int index, u8 isBonus, u8 isBig) {
    a0->flashes[index].state = 1;
    a0->flashes[index].isBonus = isBonus;
    a0->flashes[index].isBig = isBig;
}

void ov96_02214278(void *a0, Ov96LaneFlash *flash) {
    switch (flash->state) {
    case 0:
        return;
    case 1:
        if (flash->isBonus) {
            if (flash->isBig) {
                ov96_02214044(flash->gfx, flash->lane, 1);
            } else {
                ov96_02214044(flash->gfx, flash->lane, 2);
            }
        } else {
            ov96_02214044(flash->gfx, flash->lane, 3);
        }
        flash->timer = 0;
        flash->frame = 0;
        flash->delay = 0;
        flash->state = 2;
        return;
    case 2:
        flash->timer++;
        if (flash->timer > 30) {
            BgTilemapRectChangePalette(flash->gfx->bgConfig, GF_BG_LYR_MAIN_1, flash->lane * 8, 0, 8, 2, 1);
            ScheduleBgTilemapBufferTransfer(flash->gfx->bgConfig, GF_BG_LYR_MAIN_1);
            ov96_02214044(flash->gfx, flash->lane, 0);
            flash->unk3 = -1;
            flash->state = 0;
            return;
        }
        if (flash->delay == 0) {
            u8 palette;
            Ov96FlashPalettes bonus = *(Ov96FlashPalettes *)(ov96_0221D1F4 + 2);
            Ov96FlashPalettes normal = *(Ov96FlashPalettes *)ov96_0221D1F4;

            flash->frame = (flash->frame + 1) % 2;
            flash->delay = 5;
            if (flash->isBonus) {
                palette = bonus.palette[flash->frame];
            } else {
                palette = normal.palette[flash->frame];
            }
            BgTilemapRectChangePalette(flash->gfx->bgConfig, GF_BG_LYR_MAIN_1, flash->lane * 8, 0, 8, 2, palette);
            ScheduleBgTilemapBufferTransfer(flash->gfx->bgConfig, GF_BG_LYR_MAIN_1);
            return;
        }
        flash->delay--;
        return;
    default:
        return;
    }
}

u8 ov96_02214394(int lane, u32 index) {
    u8 base;

    switch (lane) {
    case 0:
        base = 216;
        break;
    case 1:
        base = 220;
        break;
    case 2:
        base = 224;
        break;
    case 3:
        base = 228;
        break;
    default:
        GF_ASSERT(FALSE);
        return 0;
    }
    if (index >= 4) {
        GF_ASSERT(FALSE);
        return 0;
    }
    return base + index;
}
