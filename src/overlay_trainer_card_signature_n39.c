#include "global.h"

#include "system.h"

typedef struct Ov52_021E9364 {
    u8 filler_0000[0x5CA0];
    u8 unk5CA0[2];
    s8 dirX;
    s8 dirY;
    u8 filler_5CA4[4];
    int lastX;
    int lastY;
} Ov52_021E9364;

void ov52_021E9424(u8 *a0);

void ov52_021E9364(Ov52_021E9364 *a0) {
    int dx;
    int dy;

    if (gSystem.touchX != 0xFFFF && gSystem.touchY != 0xFFFF && a0->lastX != 0xFFFF && a0->lastY != 0xFFFF) {
        if (a0->lastX > gSystem.touchX) {
            dx = a0->lastX - gSystem.touchX;
            a0->dirX = -1;
        } else {
            dx = gSystem.touchX - a0->lastX;
            a0->dirX = 1;
        }
        if (dx >= 3 && dx <= 40) {
            if (a0->lastY > gSystem.touchY) {
                dy = a0->lastY - gSystem.touchY;
                a0->dirY = -1;
            } else {
                dy = gSystem.touchY - a0->lastY;
                a0->dirY = 1;
            }
            if (dy <= 40) {
                ov52_021E9424(a0->unk5CA0);
            }
        } else if (dx <= 40) {
            if (a0->lastY > gSystem.touchY) {
                dy = a0->lastY - gSystem.touchY;
                a0->dirY = -1;
            } else {
                dy = gSystem.touchY - a0->lastY;
                a0->dirY = 1;
            }
            if (dy >= 3 && dy <= 40) {
                ov52_021E9424(a0->unk5CA0);
            }
        }
    }
    a0->lastX = gSystem.touchX;
    a0->lastY = gSystem.touchY;
}
