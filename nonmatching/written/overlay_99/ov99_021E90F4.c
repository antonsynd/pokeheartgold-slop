#include "global.h"
#include "system.h"

extern int TouchscreenHitbox_FindHitboxAtTouchNew(const void *hitboxes);
extern void ManagedSprite_SetAnim(void *managedSprite, int anim);
extern u16 ManagedSprite_GetActiveAnim(void *managedSprite);
extern void ManagedSprite_SetAnimateFlag(void *managedSprite, int flag);
extern void ManagedSprite_SetPositionXY(void *managedSprite, s16 x, s16 y);
extern void PlaySE(u16 sndseq);
extern void ov99_021E8FEC(u8 *data, int a);
extern const u8 ov99_021EA3C4[];

#define SYS_U32(off) (*(u32 *)((u8 *)&gSystem + (off)))
#define SYS_U16(off) (*(u16 *)((u8 *)&gSystem + (off)))
#define CURSOR(d) (*(s8 *)((d) + 0xac))
#define COLUMN(d) (*(s8 *)((d) + 0xad))
#define SPRITE(d) (*(void **)((d) + 0x18))

BOOL ov99_021E90F4(u8 *data) {
    s8 prev = CURSOR(data);
    s8 cur;

    if (SYS_U16(0x64) != 0) {
        int hit = TouchscreenHitbox_FindHitboxAtTouchNew(ov99_021EA3C4);
        if (hit != -1) {
            CURSOR(data) = hit - 1;
            ManagedSprite_SetAnim(SPRITE(data), 0xb);
            PlaySE(0x5dc);
            if (CURSOR(data) == -1) {
                *(u32 *)(data + 0xb4) = 1;
                ManagedSprite_SetAnim(SPRITE(data), 0xd);
                PlaySE(0x5dc);
            }
            ManagedSprite_SetAnimateFlag(SPRITE(data), 1);
        }
    } else {
        if (SYS_U32(0x48) & 1) {
            if (prev == 10) {
                return TRUE;
            }
            if (prev == -1) {
                *(u32 *)(data + 0xb4) = 1;
                PlaySE(0x5dc);
            }
        }
        cur = CURSOR(data);
        if (cur == -1) {
            if (SYS_U32(0x40) & 0x80) {
                CURSOR(data) = COLUMN(data);
            }
        } else if (cur == 10) {
            if (SYS_U32(0x40) & 0x40) {
                CURSOR(data) = COLUMN(data) + 5;
            }
        } else {
            u32 keys = SYS_U32(0x40);
            if (keys & 0x10) {
                CURSOR(data) = cur + 1;
            } else if (keys & 0x20) {
                CURSOR(data) = cur - 1;
            } else if (keys & 0x80) {
                CURSOR(data) = cur + 5;
            } else if (keys & 0x40) {
                int step = (cur == 10) ? 1 : 5;
                CURSOR(data) = CURSOR(data) - step;
            }
            cur = CURSOR(data);
            if (cur > 10) {
                cur = 10;
            } else if (cur < -1) {
                cur = -1;
            }
            CURSOR(data) = cur;
            cur = CURSOR(data);
            if (cur != -1 && cur != 10) {
                COLUMN(data) = cur % 5;
            }
        }
    }
    if (prev != CURSOR(data)) {
        int pos;
        PlaySE(0x5dc);
        pos = CURSOR(data);
        if (pos == -1) {
            ManagedSprite_SetPositionXY(SPRITE(data), 0xe0, 0x10);
            ManagedSprite_SetAnim(SPRITE(data), 0xc);
        } else if (pos == 10) {
            ManagedSprite_SetPositionXY(SPRITE(data), 0xe0, 0xb0);
            ManagedSprite_SetAnim(SPRITE(data), 0xc);
        } else {
            int row = pos >= 5 ? 1 : 0;
            if (row) {
                pos = (s8)(pos - 5);
            }
            ManagedSprite_SetPositionXY(SPRITE(data), (s16)(pos * 0x30 + 0x20), (s16)(row * 0x40 + 0x48));
            if (ManagedSprite_GetActiveAnim(SPRITE(data)) != 0xb) {
                ManagedSprite_SetAnim(SPRITE(data), 10);
            }
            if (prev != 10 || CURSOR(data) != 9) {
                ov99_021E8FEC(data, 0);
                *(u32 *)(data + 0xb8) = 1;
            }
        }
    }
    return FALSE;
}
