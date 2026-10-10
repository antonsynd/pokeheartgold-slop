#include "global.h"
#include "sprite.h"
#include "task.h"

typedef int (*UnkFn_ov27_0225C434)(void *ctx, void *self, u32 offset, u32 callerR3);

extern UnkFn_ov27_0225C434 ov27_0225D4D4[];

void ov01_021F6A9C(void *fieldSystem, int a1, void *a2);

void ov27_0225C434(void *task, u8 *ctx) {
    u32 r3AfterCall;
    u8 *fieldSystem;
    UnkFn_ov27_0225C434 fn;
    BOOL running;

    running = FieldSystem_TaskIsRunning(*(FieldSystem **)(ctx + 0x24));
    // r3 is whatever the call above left in it; the asm hands it on to the state function untouched.
    __asm__ volatile("movs %0, r3" : "=l"(r3AfterCall) : : "cc");
    if (running == 0) {
        fieldSystem = *(u8 **)(ctx + 0x24);
        if ((fieldSystem[0xd2] & 0x3f) == 2) {
            fieldSystem = *(u8 **)(ctx + 0x24);
            fieldSystem[0xd2] = (fieldSystem[0xd2] & ~0x3f) | 3;
        }
        *(volatile u16 *)0x04001050 = 0;
    } else {
        u32 state = *(u32 *)ctx;
        fn = ov27_0225D4D4[state];
        if (fn(ctx, (void *)fn, state << 2, r3AfterCall) == 1) {
            fieldSystem = *(u8 **)(ctx + 0x24);
            fieldSystem[0xd2] = fieldSystem[0xd2] & ~0x3f;
            ov01_021F6A9C(*(void **)(ctx + 0x24), 0, 0);
        }
    }
    SpriteList_RenderAndAnimateSprites(*(SpriteList **)(ctx + 0x218));
}
