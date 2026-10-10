#include "global.h"

#include "overlay_manager.h"
#include "screen_fade.h"
#include "sprite.h"
#include "system.h"
#include "touchscreen.h"
#include "unk_02032844.h"
#include "unk_02035900.h"

typedef int (*ov85_021E8A08_Fn)(void *, int, void *, u32);

extern const ov85_021E8A08_Fn ov85_021EA9E0[];

extern int ov85_021E9FD0(void);
extern void sub_02096D4C(void *a, int b, void *c, int d);
extern int ov85_021E9EC0(void *a, int b, u32 c, void *d);
extern void ov85_021EA1AC(void *p);
extern int ov85_021EA3F0(void *p, int a);

BOOL ov85_021E8A08(OverlayManager *manager, int *state) {
    u8 *v4 = OverlayManager_GetData(manager);
    u32 lastR3;
    u16 t;
    int st;
    ov85_021E8A08_Fn fn;

    if (System_GetTouchNew() != 0) {
        *(int *)((u8 *)&gSystem + 0x5c) = 1;
    }

    t = sub_0203769C();
    __asm__ volatile("movs %0, r3" : "=l"(lastR3) : : "cc");
    if (t == 0 && *(u32 *)(*(u8 **)(v4 + 0x10) + 0x30) != 0) {
        u16 mask = sub_02033250();
        __asm__ volatile("movs %0, r3" : "=l"(lastR3) : : "cc");
        *(u32 *)(*(u8 **)(v4 + 0x10) + 0x30) = mask & *(u32 *)(*(u8 **)(v4 + 0x10) + 0x30);
    }

    st = *(int *)v4;
    switch (st) {
    case 0:
        if (IsPaletteFadeFinished() != 0) {
            *(int *)v4 = 1;
            if (sub_0203769C() != 0) {
                if (ov85_021E9FD0() > 2) {
                    sub_02096D4C(*(void **)(v4 + 0x10), 4, NULL, 0);
                }
            }
        }
        break;
    case 1:
        fn = ov85_021EA9E0[*(int *)(v4 + 0x354)];
        if (fn != NULL) {
            *(int *)v4 = fn(v4, st, (void *)fn, lastR3);
        }
        if (*(int *)(*(u8 **)(v4 + 0x10) + 0x24) == 0) {
            ov85_021E9EC0(v4 + 0x2a8, 0, 0x10300, v4);
        }
        ov85_021EA1AC(v4);
        if (sub_0203769C() == 0) {
            int v1 = ov85_021EA3F0(v4, 1);

            if (*(int *)v4 == 1) {
                *(int *)v4 = v1;
            }
        }
        break;
    case 2:
        fn = ov85_021EA9E0[*(int *)(v4 + 0x354)];
        if (fn != NULL) {
            *(int *)v4 = fn(v4, st, (void *)fn, lastR3);
        }
        break;
    case 3:
        if (IsPaletteFadeFinished() != 0) {
            return 1;
        }
        break;
    }

    SpriteList_RenderAndAnimateSprites(*(SpriteList **)(v4 + 0x60));
    return 0;
}
