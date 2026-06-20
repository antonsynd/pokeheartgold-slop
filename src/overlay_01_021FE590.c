#include "overlay_01_021FE590.h"

#include "global.h"

#include "assert.h"
#include "map_object.h"

struct UnkOv01_021FE590 {
    int unk0;
    int unk4;
    void *unk8;
};

typedef struct {
    FieldSystem *unk0;
    UnkOv01_021FE590 *unk4;
    void *unk8;
} UnkOv01_021FE590_Data;

typedef struct {
    int unk0;
    int unk4;
    int unk8;
    UnkOv01_021FE590_Data unkc;
    void *unk18;
} UnkOv01_021FE590_Work;

typedef BOOL (*UnkOv01_021FE590_Cb1)(void *, UnkOv01_021FE590_Work *);
typedef void (*UnkOv01_021FE590_Cb2)(void *, UnkOv01_021FE590_Work *);

typedef struct {
    u32 unk0;
    UnkOv01_021FE590_Cb1 unk4;
    UnkOv01_021FE590_Cb1 unk8;
    UnkOv01_021FE590_Cb2 unkc;
    UnkOv01_021FE590_Cb2 unk10;
} UnkOv01_021FE590_Template;

extern UnkOv01_021FE590 *ov01_021F1430(void *a0, int a1, int a2, int a3);
extern void ov01_021F1448(void *a0);
extern FieldSystem *ov01_021F146C(LocalMapObject *mapObject);
extern UnkOv01_021FE590 *ov01_021F1450(FieldSystem *fieldSystem, int a1);
extern void *ov01_021F1620(FieldSystem *fieldSystem, const UnkOv01_021FE590_Template *a1, VecFx32 *a2, int a3, UnkOv01_021FE590_Data *a4, int a5);
extern void ov01_021F1640(void *a0);
extern void *ov01_021F1740(FieldSystem *fieldSystem, int a1, VecFx32 *a2);
extern void ov01_021F1758(void *a0, int a1, int a2, int a3, int a4, int a5, const void *a6);
extern void ov01_021F18C8(void *a0, int a1);
extern void ov01_021F18D4(void *a0, int a1, int a2);
extern void ov01_021F18FC(void *a0, int a1);
extern void ov01_021F1908(void *a0, int a1, int a2);
extern void ov01_021F1924(void *a0, int a1);
extern void ov01_021F1930(void *a0, int a1, int a2, int a3);
extern void ov01_021F1970(void *a0, int a1);
extern void ov01_021F93AC(LocalMapObject *mapObject, VecFx32 *out);

extern UnkOv01_021FE590_Data *sub_02068D98(void *a0);
extern void sub_02068DB8(void *a0, VecFx32 *a1);
extern void sub_02023DA4(void *a0);
extern void sub_02023E50(void *a0, VecFx32 *a1);
extern BOOL sub_02023F04(void *a0, int a1);
extern void sub_02023F1C(void *a0);

static void ov01_021FE5CC(UnkOv01_021FE590 *manager);
static void ov01_021FE61C(UnkOv01_021FE590 *manager);
static void ov01_021FE5B4(UnkOv01_021FE590 *manager);
static void ov01_021FE5BC(UnkOv01_021FE590 *manager);
static void ov01_021FE64C(UnkOv01_021FE590 *manager);
static void ov01_021FE65C(UnkOv01_021FE590 *manager);
static BOOL ov01_021FE6B4(void *param0, UnkOv01_021FE590_Work *work);
static BOOL ov01_021FE6F4(void *param0, UnkOv01_021FE590_Work *work);
static void ov01_021FE70C(void *param0, UnkOv01_021FE590_Work *work);
static void ov01_021FE768(void *param0, UnkOv01_021FE590_Work *work);

typedef struct {
    u32 unk0[5];
} UnkOv01_02209098;

static const UnkOv01_02209098 ov01_02209098 = {
    { 0x1000, 0x1000, 0x2000, 0x2000, 0x1000 }
};

static const UnkOv01_021FE590_Template ov01_02209084 = {
    sizeof(UnkOv01_021FE590_Work), ov01_021FE6B4, ov01_021FE6F4, ov01_021FE70C, ov01_021FE768
};

static const u32 ov01_022090AC[] = { 0, 9, 1, 0, 0, 2 };

UnkOv01_021FE590 *ov01_021FE590(void *a0) {
    UnkOv01_021FE590 *manager = ov01_021F1430(a0, sizeof(UnkOv01_021FE590), 0, 0);
    manager->unk8 = a0;
    return manager;
}

void ov01_021FE5A4(UnkOv01_021FE590 *manager) {
    ov01_021FE61C(manager);
    ov01_021F1448(manager);
}

static void ov01_021FE5B4(UnkOv01_021FE590 *manager) {
    manager->unk0++;
}

static void ov01_021FE5BC(UnkOv01_021FE590 *manager) {
    GF_ASSERT(--manager->unk0 >= 0);
}

static void ov01_021FE5CC(UnkOv01_021FE590 *manager) {
    if (manager->unk4 == 0) {
        manager->unk4 = 1;
        ov01_021F18D4(manager->unk8, 0xb, 0x80);
        ov01_021F1908(manager->unk8, 0xb, 0x95);
        ov01_021F1930(manager->unk8, 0xc, 0x1a, 1);
        ov01_021F1758(manager->unk8, 0xd, 0xb, 0xb, 0xc, 0, ov01_022090AC);
    }
}

static void ov01_021FE61C(UnkOv01_021FE590 *manager) {
    if (manager->unk4 == 1) {
        manager->unk4 = 0;
        ov01_021F18FC(manager->unk8, 0xb);
        ov01_021F1924(manager->unk8, 0xb);
        ov01_021F1970(manager->unk8, 0xc);
        ov01_021F18C8(manager->unk8, 0xd);
    }
}

static void ov01_021FE64C(UnkOv01_021FE590 *manager) {
    if (manager->unk0 == 0) {
        ov01_021FE5CC(manager);
    }
}

static void ov01_021FE65C(UnkOv01_021FE590 *manager) {
    if (manager->unk0 == 0) {
        ov01_021FE61C(manager);
    }
}

void *ov01_021FE66C(LocalMapObject *mapObject) {
    VecFx32 vec;
    UnkOv01_021FE590_Data data;
    FieldSystem *fieldSystem = ov01_021F146C(mapObject);
    ov01_021F93AC(mapObject, &vec);
    vec.z += 2 << 0xe;
    data.unk0 = fieldSystem;
    data.unk4 = ov01_021F1450(fieldSystem, 0x10);
    return ov01_021F1620(fieldSystem, &ov01_02209084, &vec, 0, &data, 0xff);
}

static BOOL ov01_021FE6B4(void *param0, UnkOv01_021FE590_Work *work) {
    VecFx32 vec;
    work->unkc = *sub_02068D98(param0);
    ov01_021FE64C(work->unkc.unk4);
    sub_02068DB8(param0, &vec);
    work->unk18 = ov01_021F1740(work->unkc.unk0, 0xd, &vec);
    ov01_021FE5B4(work->unkc.unk4);
    return TRUE;
}

static BOOL ov01_021FE6F4(void *param0, UnkOv01_021FE590_Work *work) {
    sub_02023DA4(work->unk18);
    ov01_021FE5BC(work->unkc.unk4);
    ov01_021FE65C(work->unkc.unk4);
}

#ifdef NONMATCHING
static void ov01_021FE70C(void *param0, UnkOv01_021FE590_Work *work) {
    UnkOv01_02209098 frames = ov01_02209098;
    if (work->unk8 == 1) {
        work->unk8 = 0;
        if (++work->unk4 >= 5) {
            ov01_021F1640(param0);
            return;
        }
        sub_02023F1C(work->unk18);
    }
    if (sub_02023F04(work->unk18, frames.unk0[work->unk4]) == 1) {
        work->unk8 = 1;
    }
}
#else
// clang-format off
// MWCC allocates r0 for the `work->unk8 = 0` constant; retail uses r1 (a free
// register left by the frames struct copy). This is an uncoercible allocator
// tie-break, so the function is transcribed verbatim.
static asm void ov01_021FE70C(void *param0, UnkOv01_021FE590_Work *work) {
    push {r4, r5, lr}
    sub sp, #0x14
    ldr r5, =ov01_02209098
    add r2, r0, #0
    add r4, r1, #0
    ldmia r5!, {r0, r1}
    add r3, sp, #0
    stmia r3!, {r0, r1}
    ldmia r5!, {r0, r1}
    stmia r3!, {r0, r1}
    ldr r0, [r5, #0]
    str r0, [r3, #0]
    ldr r0, [r4, #8]
    cmp r0, #1
    bne _1FE7B8
    mov r1, #0
    str r1, [r4, #8]
    ldr r0, [r4, #4]
    add r0, r0, #1
    str r0, [r4, #4]
    cmp r0, #5
    blt _1FE7B2
    add r0, r2, #0
    bl ov01_021F1640
    add sp, #0x14
    pop {r4, r5, pc}
_1FE7B2:
    ldr r0, [r4, #0x18]
    bl sub_02023F1C
_1FE7B8:
    ldr r1, [r4, #4]
    ldr r0, [r4, #0x18]
    lsl r2, r1, #2
    add r1, sp, #0
    ldr r1, [r1, r2]
    bl sub_02023F04
    cmp r0, #1
    bne _1FE7CE
    mov r0, #1
    str r0, [r4, #8]
_1FE7CE:
    add sp, #0x14
    pop {r4, r5, pc}
}
// clang-format on
#endif

static void ov01_021FE768(void *param0, UnkOv01_021FE590_Work *work) {
    VecFx32 vec;
    sub_02068DB8(param0, &vec);
    sub_02023E50(work->unk18, &vec);
}
