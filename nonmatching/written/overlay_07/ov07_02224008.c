#include "global.h"

typedef struct UnkStruct_ov07_02224008 {
    void *system;
    void *sprite;
    u32 unk_08;
    u32 unk_0c;
    u32 unk_10;
    u32 unk_14;
    u32 unk_18;
    u32 unk_1c;
} UnkStruct_ov07_02224008;

extern UnkStruct_ov07_02224008 *ov07_022324D8(void *system, int size);
extern int ov07_0221C4A8(void *system, int index);
extern int ov07_0221C468(void *system);
extern int ov07_0221C470(void *system);
extern void *ov07_0221FA48(void *system, int battler);
extern int ov07_0221FAB0(void *system);
extern int ov07_0223197C(void *system, int battler);
extern int ov07_0221FA04(void *system, int battler);
extern void ov07_02223F5C(void);
extern void ov07_0221C410(void *system, void (*func)(void), void *ctx);

void ov07_02224008(void *system) {
    UnkStruct_ov07_02224008 *ctx = ov07_022324D8(system, 0x20);
    int target;
    int battler;
    int i;
    int type;

    ctx->system = system;
    ctx->sprite = NULL;

    switch (ov07_0221C4A8(system, 0)) {
    case 2:
        ctx->sprite = ov07_0221FA48(ctx->system, ov07_0221C468(system));
        break;
    case 4:
        if (ov07_0221FAB0(system) == 1) {
            ctx->sprite = ov07_0221FA48(ctx->system, ov07_0223197C(ctx->system, ov07_0221C468(ctx->system)));
        }
        break;
    case 8:
        ctx->sprite = ov07_0221FA48(ctx->system, ov07_0221C470(system));
        break;
    case 0x10:
        if (ov07_0221FAB0(system) == 1) {
            ctx->sprite = ov07_0221FA48(ctx->system, ov07_0223197C(ctx->system, ov07_0221C470(ctx->system)));
        }
        break;
    case 0x802:
        target = 0xff;
        for (i = 0; i < 4; i++) {
            type = ov07_0221FA04(system, i);
            if (type == 0 || type == 2) {
                target = i;
                break;
            }
        }
        if (target == 0xff) {
            target = 0;
        }
        ctx->sprite = ov07_0221FA48(ctx->system, target);
        break;
    case 0x804:
        target = 0xff;
        for (i = 0; i < 4; i++) {
            type = ov07_0221FA04(system, i);
            if (type == 4) {
                target = i;
                break;
            }
        }
        if (target == 0xff) {
            target = 0;
        }
        ctx->sprite = ov07_0221FA48(ctx->system, target);
        break;
    case 0x808:
        target = 0xff;
        for (i = 0; i < 4; i++) {
            type = ov07_0221FA04(system, i);
            if (type == 1 || type == 3) {
                target = i;
                break;
            }
        }
        if (target == 0xff) {
            target = 0;
        }
        ctx->sprite = ov07_0221FA48(ctx->system, target);
        break;
    case 0x810:
        target = 0xff;
        for (i = 0; i < 4; i++) {
            type = ov07_0221FA04(system, i);
            if (type == 5) {
                target = i;
                break;
            }
        }
        if (target == 0xff) {
            target = 0;
        }
        ctx->sprite = ov07_0221FA48(ctx->system, target);
        break;
    default:
        GF_AssertFail();
        break;
    }

    if (ctx->sprite == NULL) {
        Heap_Free(ctx);
        return;
    }

    ctx->unk_10 = ov07_0221C4A8(system, 1);
    ctx->unk_0c = ov07_0221C4A8(system, 2);
    ctx->unk_14 = ov07_0221C4A8(system, 3);
    ctx->unk_18 = ov07_0221C4A8(system, 4);
    ctx->unk_1c = ov07_0221C4A8(system, 5);
    ov07_0221C410(ctx->system, ov07_02223F5C, ctx);
}
