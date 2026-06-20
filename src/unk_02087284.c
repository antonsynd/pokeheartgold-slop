#include "global.h"

#include "filesystem.h"
#include "heap.h"
#include "math_util.h"
#include "sprite_system.h"
#include "sys_task_api.h"

// FX coprocessor helpers are not declared in a shared header in this tree.
fx32 FX_Sqrt(fx32 x);
u16 FX_Atan2Idx(fx32 y, fx32 x);

// Soft-float / division runtime intrinsics referenced from the inline asm below.
void _fflt(void);
void _fsub(void);
void _fmul(void);
void _fadd(void);
void _fgr(void);
void _fls(void);
void _feq(void);
void _ffix(void);
void _fdiv(void);
void _s32_div_f(void);

typedef struct UnkStruct_02087284 UnkStruct_02087284;

// Manager (0x108 bytes, Heap_Alloc'd) accessed by raw offset; the per-sprite
// entries form an array with stride 0x10 starting at the manager base (entry[0]
// overlaps the header), so field access is done through offset casts.
#define M_NARC(m)   (*(NARC **)((u8 *)(m) + 0x00))
#define M_SPRSYS(m) (*(SpriteSystem **)((u8 *)(m) + 0x04))
#define M_SPRMAN(m) (*(SpriteManager **)((u8 *)(m) + 0x08))
#define M_PLTT(m)   (*(PaletteData **)((u8 *)(m) + 0x0c))
#define M_COUNT(m)  (*(s32 *)((u8 *)(m) + 0x10))
#define M_HEAPID(m) (*(s32 *)((u8 *)(m) + 0x14))
#define M_18(m)     (*(s32 *)((u8 *)(m) + 0x18))
#define M_1C(m)     (*(s32 *)((u8 *)(m) + 0x1c))
#define M_YOFF(m)   (*(fx32 *)((u8 *)(m) + 0x20))
#define M_HOMEX(m)  (*(s16 *)((u8 *)(m) + 0x28))
#define M_HOMEY(m)  (*(s16 *)((u8 *)(m) + 0x2a))
#define M_E4(m)     (*(s32 *)((u8 *)(m) + 0xe4))
#define M_E8(m)     (*(s32 *)((u8 *)(m) + 0xe8))
#define M_EC(m)     (*(s32 *)((u8 *)(m) + 0xec))
#define M_F0(m)     (*(s32 *)((u8 *)(m) + 0xf0))
#define M_F4(m)     (*(SysTask **)((u8 *)(m) + 0xf4))
#define M_FC(m)     (*(s32 *)((u8 *)(m) + 0xfc))
#define M_100(m)    (*(s32 *)((u8 *)(m) + 0x100))

typedef struct SpriteSlot {
    u8 pad[0x10];
} SpriteSlot;

#define ENTRY(m, i) ((u8 *)&((SpriteSlot *)(m))[i])
#define E_SPRITE(e) (*(ManagedSprite **)((u8 *)(e) + 0x24))
#define E_STATE(e)  (*(s32 *)((u8 *)(e) + 0x2c))

UnkStruct_02087284 *sub_02087284(int count, enum HeapID heapID, int a2, int a3, fx32 yOffset, SpriteSystem *spriteSystem, SpriteManager *spriteManager, PaletteData *plttData);
void sub_0208763C(UnkStruct_02087284 *mgr, int index);
int sub_02087878(UnkStruct_02087284 *mgr, int index);
int sub_020878B0(UnkStruct_02087284 *mgr, int a1);
int sub_020878B8(UnkStruct_02087284 *mgr, s16 x, s16 y);
int sub_020878EC(UnkStruct_02087284 *mgr, s16 x, s16 y);
int sub_02087948(UnkStruct_02087284 *mgr, s16 x, s16 y);
int sub_02087988(UnkStruct_02087284 *mgr);
int sub_020879E0(UnkStruct_02087284 *mgr, int flag);
void sub_02087A08(UnkStruct_02087284 *mgr, int a1, int a2);
void sub_02087A30(UnkStruct_02087284 *mgr);
void sub_02087A54(UnkStruct_02087284 *mgr);

static int sub_020872DC(int posX, int posY, fx32 targetX, fx32 targetY, fx32 *outX, fx32 *outY, fx32 step, fx32 threshold);
static void sub_020873D4(SysTask *task, void *data);
static void sub_020876B0(UnkStruct_02087284 *mgr, int index);
static void sub_020877B4(UnkStruct_02087284 *mgr);
static void sub_02087830(UnkStruct_02087284 *mgr);
static int sub_02087930(UnkStruct_02087284 *mgr, s16 x, s16 y);

static const u32 sResourceFileIds[] = {
    0x61,
    0x62,
    0x63,
    0x64,
    0x65,
    0x80,
    0x85,
};

// The retail build homes all four register args (push {r0-r3}) and materialises
// the 0xf constant one scheduling-slot later than MWCC will emit from clean C;
// the address-of-arg homing reproduces, but the constant-hoist position does not,
// so this is kept as asm. The C below documents the behaviour.
#ifdef NONMATCHING
UnkStruct_02087284 *sub_02087284(int count, enum HeapID heapID, int a2, int a3, fx32 yOffset, SpriteSystem *spriteSystem, SpriteManager *spriteManager, PaletteData *plttData) {
    UnkStruct_02087284 *mgr = Heap_Alloc(heapID, 0x108);
    M_COUNT(mgr) = count;
    M_HEAPID(mgr) = heapID;
    M_18(mgr) = a2;
    M_1C(mgr) = a3;
    M_YOFF(mgr) = yOffset;
    M_SPRSYS(mgr) = spriteSystem;
    M_SPRMAN(mgr) = spriteManager;
    M_PLTT(mgr) = plttData;
    M_E4(mgr) = 0;
    M_FC(mgr) = 0xf;
    M_100(mgr) = 0xf;
    M_F4(mgr) = 0;
    M_F0(mgr) = 0;
    return mgr;
}
#else
// clang-format off
asm UnkStruct_02087284 *sub_02087284(int count, enum HeapID heapID, int a2, int a3, fx32 yOffset, SpriteSystem *spriteSystem, SpriteManager *spriteManager, PaletteData *plttData) {
    push {r0, r1, r2, r3}
    push {r4, lr}
    ldr r4, [sp, #0xc]
    mov r1, #0x42
    add r0, r4, #0
    lsl r1, r1, #2
    bl Heap_Alloc
    ldr r1, [sp, #8]
    mov r3, #0
    str r1, [r0, #0x10]
    ldr r1, [sp, #0x10]
    str r4, [r0, #0x14]
    str r1, [r0, #0x18]
    ldr r1, [sp, #0x14]
    mov r2, #0xf
    str r1, [r0, #0x1c]
    ldr r1, [sp, #0x18]
    str r1, [r0, #0x20]
    ldr r1, [sp, #0x1c]
    str r1, [r0, #4]
    ldr r1, [sp, #0x20]
    str r1, [r0, #8]
    ldr r1, [sp, #0x24]
    str r1, [r0, #0xc]
    add r1, r0, #0
    add r1, #0xe4
    str r3, [r1, #0]
    add r1, r0, #0
    add r1, #0xfc
    str r2, [r1, #0]
    add r1, r2, #0
    add r1, #0xf1
    str r2, [r0, r1]
    add r1, r0, #0
    add r1, #0xf4
    str r3, [r1, #0]
    add r1, r0, #0
    add r1, #0xf0
    str r3, [r1, #0]
    pop {r4}
    pop {r3}
    add sp, #0x10
    bx r3
}
// clang-format on
#endif

static int sub_020872DC(int posX, int posY, fx32 targetX, fx32 targetY, fx32 *outX, fx32 *outY, fx32 step, fx32 threshold);
#ifdef NONMATCHING
static int sub_020872DC(int posX, int posY, fx32 targetX, fx32 targetY, fx32 *outX, fx32 *outY, fx32 step, fx32 threshold) {
    return 0;
}
#else
// clang-format off
static asm int sub_020872DC(int posX, int posY, fx32 targetX, fx32 targetY, fx32 *outX, fx32 *outY, fx32 step, fx32 threshold) {
    push {r4, r5, r6, lr}
    sub sp, #0x18
    add r5, r1, #0
    mov r1, #0
    add r4, r2, #0
    add r6, r3, #0
    str r1, [sp]
    str r1, [sp, #4]
    bl _fflt
    add r1, r4, #0
    bl _fsub
    str r0, [sp, #8]
    add r0, r5, #0
    bl _fflt
    add r1, r6, #0
    bl _fsub
    str r0, [sp, #0xc]
    mov r0, #0
    str r0, [sp, #0x10]
    str r0, [sp, #0x14]
    ldr r0, [sp, #8]
    add r1, r0, #0
    bl _fmul
    add r4, r0, #0
    ldr r0, [sp, #0xc]
    add r1, r0, #0
    bl _fmul
    add r1, r0, #0
    add r0, r4, #0
    bl _fadd
    mov r1, #0
    add r4, r0, #0
    bl _fgr
    ldr r0, =0x45800000
    bls _02087344
    add r1, r4, #0
    bl _fmul
    add r1, r0, #0
    mov r0, #0x3f
    lsl r0, r0, #0x18
    bl _fadd
    b _02087352
_02087344:
    add r1, r4, #0
    bl _fmul
    mov r1, #0x3f
    lsl r1, r1, #0x18
    bl _fsub
_02087352:
    bl _ffix
    bl FX_Sqrt
    bl _fflt
    ldr r1, =0x45800000
    bl _fdiv
    ldr r1, [sp, #0x30]
    add r4, r0, #0
    bl _fls
    blo _0208738A
    add r1, sp, #0x18
    mov r0, #0x1c
    ldrsh r0, [r1, r0]
    bl _fflt
    add r1, r4, #0
    bl _fgr
    bhi _0208738A
    mov r0, #0
    add r1, r4, #0
    bl _feq
    bne _02087390
_0208738A:
    add sp, #0x18
    mov r0, #0
    pop {r4, r5, r6, pc}
_02087390:
    ldr r0, [sp, #8]
    ldr r1, [sp, #0x30]
    bl _fmul
    add r1, r4, #0
    bl _fdiv
    str r0, [sp, #0x10]
    ldr r0, [sp, #0xc]
    ldr r1, [sp, #0x30]
    bl _fmul
    add r1, r4, #0
    bl _fdiv
    str r0, [sp, #0x14]
    ldr r0, [sp, #0x10]
    ldr r1, [sp]
    bl _fadd
    ldr r1, [sp, #0x28]
    str r0, [r1]
    ldr r0, [sp, #0x14]
    ldr r1, [sp, #4]
    bl _fadd
    ldr r1, [sp, #0x2c]
    str r0, [r1]
    mov r0, #1
    add sp, #0x18
    pop {r4, r5, r6, pc}
}
// clang-format on
#endif

#ifdef NONMATCHING
static void sub_020873D4(SysTask *task, void *data) {
}
#else
// clang-format off
static asm void sub_020873D4(SysTask *task, void *data) {
    push {r3, r4, r5, r6, r7, lr}
    sub sp, #0x50
    add r6, r1, #0
    add r0, r6, #0
    add r0, #0xf0
    ldr r0, [r0, #0]
    cmp r0, #0
    bne _020873E6
    b _02087632
_020873E6:
    ldr r0, [r6, #0x10]
    mov r4, #0
    str r4, [sp, #0x1c]
    cmp r0, #0
    bgt _020873F2
    b _02087632
_020873F2:
    add r0, r6, #0
    mov r7, #0x3f
    str r0, [sp, #0x30]
    add r0, #0xec
    add r5, r6, #0
    lsl r7, r7, #0x18
    str r0, [sp, #0x30]
_02087400:
    cmp r4, #0
    beq _02087410
    mov r0, #0x18
    ldrsh r0, [r5, r0]
    strh r0, [r5, #0x28]
    mov r0, #0x1a
    ldrsh r0, [r5, r0]
    strh r0, [r5, #0x2a]
_02087410:
    ldr r0, [r5, #0x24]
    ldr r3, [r6, #0x20]
    add r1, sp, #0x4c
    add r2, sp, #0x48
    bl ManagedSprite_GetPositionFxXYWithSubscreenOffset
    ldr r0, [sp, #0x4c]
    bl _fflt
    ldr r1, =0x45800000
    bl _fdiv
    str r0, [sp, #0x20]
    ldr r0, [sp, #0x48]
    bl _fflt
    ldr r1, =0x45800000
    bl _fdiv
    str r0, [sp, #0x24]
    ldr r0, [sp, #0x1c]
    sub r0, r4, r0
    bl _fflt
    add r1, r0, #0
    add r0, r7, #0
    bl _fmul
    add r1, r0, #0
    mov r0, #0x41
    lsl r0, r0, #0x18
    bl _fsub
    mov r1, #1
    lsl r1, r1, #0x1e
    bl _fdiv
    add r1, sp, #0x44
    str r1, [sp]
    add r1, sp, #0x40
    str r1, [sp, #4]
    str r0, [sp, #8]
    mov r0, #0x10
    str r0, [sp, #0xc]
    mov r0, #0x28
    mov r1, #0x2a
    ldrsh r0, [r5, r0]
    ldrsh r1, [r5, r1]
    ldr r2, [sp, #0x20]
    ldr r3, [sp, #0x24]
    bl sub_020872DC
    cmp r0, #0
    beq _020874EE
    ldr r0, [r5, #0x2c]
    cmp r0, #0
    bne _020874EE
    ldr r0, [sp, #0x40]
    mov r1, #0
    bl _fgr
    ldr r0, =0x45800000
    bls _020874A0
    ldr r1, [sp, #0x40]
    bl _fmul
    add r1, r0, #0
    add r0, r7, #0
    bl _fadd
    str r0, [sp, #0x14]
    b _020874AE
_020874A0:
    ldr r1, [sp, #0x40]
    bl _fmul
    add r1, r7, #0
    bl _fsub
    str r0, [sp, #0x14]
_020874AE:
    ldr r0, [sp, #0x44]
    mov r1, #0
    bl _fgr
    ldr r0, =0x45800000
    bls _020874CA
    ldr r1, [sp, #0x44]
    bl _fmul
    add r1, r0, #0
    add r0, r7, #0
    bl _fadd
    b _020874D6
_020874CA:
    ldr r1, [sp, #0x44]
    bl _fmul
    add r1, r7, #0
    bl _fsub
_020874D6:
    bl _ffix
    str r0, [sp, #0x28]
    ldr r0, [sp, #0x14]
    bl _ffix
    add r2, r0, #0
    ldr r0, [r5, #0x24]
    ldr r1, [sp, #0x28]
    bl ManagedSprite_AddSpritePrecisePositionXY
    b _02087626
_020874EE:
    ldr r0, [r5, #0x2c]
    cmp r0, #0
    beq _020874FA
    cmp r0, #1
    beq _020875CA
    b _02087620
_020874FA:
    add r1, sp, #0x3c
    ldr r0, [r5, #0x24]
    ldr r3, [r6, #0x20]
    add r1, #2
    add r2, sp, #0x3c
    bl ManagedSprite_GetPositionXYWithSubscreenOffset
    add r0, r6, #0
    add r0, #0xe8
    ldr r0, [r0, #0]
    str r0, [sp, #0x18]
    cmp r0, #0xff
    bne _0208758E
    add r0, r6, #0
    add r0, #0xe8
    str r4, [r0]
    mov r0, #0x28
    add r2, sp, #0x3c
    mov r1, #2
    ldrsh r0, [r6, r0]
    ldrsh r1, [r2, r1]
    sub r0, r0, r1
    cmp r0, #0
    ble _0208753C
    lsl r0, r0, #0xc
    bl _fflt
    add r1, r0, #0
    add r0, r7, #0
    bl _fadd
    str r0, [sp, #0x10]
    b _0208754A
_0208753C:
    lsl r0, r0, #0xc
    bl _fflt
    add r1, r7, #0
    bl _fsub
    str r0, [sp, #0x10]
_0208754A:
    mov r0, #0x2a
    add r2, sp, #0x3c
    mov r1, #0
    ldrsh r0, [r6, r0]
    ldrsh r1, [r2, r1]
    sub r0, r0, r1
    cmp r0, #0
    ble _0208756A
    lsl r0, r0, #0xc
    bl _fflt
    add r1, r0, #0
    add r0, r7, #0
    bl _fadd
    b _02087576
_0208756A:
    lsl r0, r0, #0xc
    bl _fflt
    add r1, r7, #0
    bl _fsub
_02087576:
    bl _ffix
    str r0, [sp, #0x2c]
    ldr r0, [sp, #0x10]
    bl _ffix
    add r1, r0, #0
    ldr r0, [sp, #0x2c]
    bl FX_Atan2Idx
    str r0, [r5, #0x30]
    b _020875AC
_0208758E:
    mov r0, #0x2d
    ldr r1, [r6, #0x10]
    lsl r0, r0, #4
    bl _s32_div_f
    ldr r1, [sp, #0x18]
    add r2, r6, #0
    lsl r1, r1, #4
    add r2, #0xec
    add r1, r6, r1
    ldr r2, [r2, #0]
    ldr r1, [r1, #0x30]
    mul r2, r0
    sub r0, r1, r2
    str r0, [r5, #0x30]
_020875AC:
    mov r1, #0x2d
    ldr r0, [r5, #0x30]
    lsl r1, r1, #4
    bl _s32_div_f
    ldr r0, [sp, #0x30]
    str r1, [r5, #0x30]
    ldr r0, [r0, #0]
    add r1, r0, #1
    ldr r0, [sp, #0x30]
    str r1, [r0]
    ldr r0, [r5, #0x2c]
    add r0, r0, #1
    str r0, [r5, #0x2c]
    b _02087620
_020875CA:
    ldr r0, [r5, #0x30]
    mov r1, #0x2d
    add r0, r0, #4
    lsl r1, r1, #4
    str r0, [r5, #0x30]
    bl _s32_div_f
    lsl r0, r1, #0x10
    lsr r0, r0, #0x10
    str r1, [r5, #0x30]
    bl GF_SinDeg
    mov r1, #0x28
    ldrsh r1, [r6, r1]
    lsl r1, r1, #0xc
    str r1, [sp, #0x34]
    add r1, r6, #0
    add r1, #0xfc
    ldr r1, [r1, #0]
    mul r0, r1
    str r0, [sp, #0x38]
    ldr r0, [r5, #0x30]
    lsl r0, r0, #0x10
    lsr r0, r0, #0x10
    bl GF_CosDeg
    mov r1, #0x2a
    ldrsh r1, [r6, r1]
    ldr r2, [sp, #0x34]
    lsl r3, r1, #0xc
    mov r1, #1
    lsl r1, r1, #8
    ldr r1, [r6, r1]
    mul r0, r1
    ldr r1, [sp, #0x38]
    mov ip, r0
    add r1, r2, r1
    mov r2, ip
    add r2, r3, r2
    ldr r0, [r5, #0x24]
    ldr r3, [r6, #0x20]
    bl ManagedSprite_SetPositionFxXYWithSubscreenOffset
_02087620:
    ldr r0, [sp, #0x1c]
    add r0, r0, #1
    str r0, [sp, #0x1c]
_02087626:
    ldr r0, [r6, #0x10]
    add r4, r4, #1
    add r5, #0x10
    cmp r4, r0
    bge _02087632
    b _02087400
_02087632:
    add sp, #0x50
    pop {r3, r4, r5, r6, r7, pc}
}
// clang-format on
#endif

void sub_0208763C(UnkStruct_02087284 *mgr, int index) {
    NARC *narc;
    SpriteSystem *spriteSystem = M_SPRSYS(mgr);
    SpriteManager *spriteManager = M_SPRMAN(mgr);
    PaletteData *plttData = M_PLTT(mgr);
    int fileId;

    narc = M_NARC(mgr);

    SpriteManager_UnloadPlttObjById(spriteManager, 0x56cf);
    SpriteManager_UnloadPlttObjById(spriteManager, 0x56d0);
    fileId = sResourceFileIds[index];
    SpriteSystem_LoadPaletteBufferFromOpenNarc(plttData, (PaletteBufferId)2, spriteSystem, spriteManager, narc, fileId, 0, 1, 1, 0x56cf);
    SpriteSystem_LoadPaletteBufferFromOpenNarc(plttData, (PaletteBufferId)3, spriteSystem, spriteManager, narc, fileId, 0, 1, 2, 0x56d0);
}

static void sub_020876B0(UnkStruct_02087284 *mgr, int index) {
    int mode = M_18(mgr);
    NARC *narc;
    int resId = mode + 0x56ce;
    SpriteSystem *spriteSystem = M_SPRSYS(mgr);
    SpriteManager *spriteManager = M_SPRMAN(mgr);
    PaletteData *plttData = M_PLTT(mgr);
    narc = M_NARC(mgr);

    if (mode == 1) {
        if (M_1C(mgr) == 0) {
            SpriteSystem_LoadPaletteBufferFromOpenNarc(plttData, (PaletteBufferId)2, spriteSystem, spriteManager, narc, sResourceFileIds[index], 0, 1, 1, resId);
        } else {
            SpriteSystem_LoadPaletteBufferFromOpenNarc(plttData, (PaletteBufferId)2, spriteSystem, spriteManager, narc, 0x60, 0, 1, 1, resId);
        }
        SpriteSystem_LoadCharResObjFromOpenNarc(spriteSystem, spriteManager, narc, 0x5f, 0, 1, resId);
    } else {
        if (M_1C(mgr) == 0) {
            SpriteSystem_LoadPaletteBufferFromOpenNarc(plttData, (PaletteBufferId)3, spriteSystem, spriteManager, narc, sResourceFileIds[index], 0, 1, 2, resId);
        } else {
            SpriteSystem_LoadPaletteBufferFromOpenNarc(plttData, (PaletteBufferId)3, spriteSystem, spriteManager, narc, 0x60, 0, 1, 2, resId);
        }
        SpriteSystem_LoadCharResObjFromOpenNarc(spriteSystem, spriteManager, narc, 0x5f, 0, 2, resId);
    }
    SpriteSystem_LoadCellResObjFromOpenNarc(spriteSystem, spriteManager, narc, 0x5d, 0, resId);
    SpriteSystem_LoadAnimResObjFromOpenNarc(spriteSystem, spriteManager, narc, 0x5e, 0, resId);
}

static void sub_020877B4(UnkStruct_02087284 *mgr) {
    ManagedSpriteTemplate template;
    SpriteSystem *spriteSystem = M_SPRSYS(mgr);
    SpriteManager *spriteManager = M_SPRMAN(mgr);
    int i;

    template.x = 0x80;
    template.y = 0x60;
    template.z = 0;
    template.animation = 0;
    template.drawPriority = 0;
    template.vram = (NNS_G2D_VRAM_TYPE)M_18(mgr);
    template.bgPriority = 0;
    template.vramTransfer = 0;
    template.pal = 0;
    template.resIdList[0] = M_18(mgr) + 0x56ce;
    template.resIdList[1] = M_18(mgr) + 0x56ce;
    template.resIdList[2] = M_18(mgr) + 0x56ce;
    template.resIdList[3] = M_18(mgr) + 0x56ce;
    template.resIdList[4] = -1;
    template.resIdList[5] = -1;

    for (i = 0; i < M_COUNT(mgr); i++) {
        u8 *entry = ENTRY(mgr, i);
        E_SPRITE(entry) = SpriteSystem_NewSprite(spriteSystem, spriteManager, &template);
        ManagedSprite_TickFrame(E_SPRITE(entry));
        ManagedSprite_SetPositionXY(E_SPRITE(entry), 0x80, 0x60);
    }
}

static void sub_02087830(UnkStruct_02087284 *mgr) {
    int i;

    for (i = 0; i < M_COUNT(mgr); i++) {
        u8 *entry = ENTRY(mgr, i);
        SpriteManager_UnloadCharObjById(M_SPRMAN(mgr), M_18(mgr) + 0x56ce);
        SpriteManager_UnloadCellObjById(M_SPRMAN(mgr), M_18(mgr) + 0x56ce);
        SpriteManager_UnloadAnimObjById(M_SPRMAN(mgr), M_18(mgr) + 0x56ce);
        Sprite_DeleteAndFreeResources(E_SPRITE(entry));
    }
}

int sub_02087878(UnkStruct_02087284 *mgr, int index) {
    M_NARC(mgr) = NARC_New((NarcId)0xbf, (enum HeapID)M_HEAPID(mgr));
    sub_020876B0(mgr, index);
    sub_020877B4(mgr);
    M_F4(mgr) = SysTask_CreateOnVBlankQueue(sub_020873D4, mgr, 0x1000);
    return 1;
}

int sub_020878B0(UnkStruct_02087284 *mgr, int a1) {
    M_F0(mgr) = a1;
    return 1;
}

int sub_020878B8(UnkStruct_02087284 *mgr, s16 x, s16 y) {
    int i;

    M_HOMEX(mgr) = x;
    M_HOMEY(mgr) = y;
    M_E8(mgr) = 0xff;
    M_EC(mgr) = 0;
    for (i = 0; i < M_COUNT(mgr); i++) {
        u8 *entry = ENTRY(mgr, i);
        E_STATE(entry) = 0;
    }
    return 1;
}

int sub_020878EC(UnkStruct_02087284 *mgr, s16 x, s16 y) {
    int i;

    if (sub_02087930(mgr, x, y) == 0) {
        return 0;
    }
    M_HOMEX(mgr) = x;
    M_HOMEY(mgr) = y;
    M_E8(mgr) = 0xff;
    M_EC(mgr) = 0;
    for (i = 0; i < M_COUNT(mgr); i++) {
        u8 *entry = ENTRY(mgr, i);
        E_STATE(entry) = 0;
    }
    return 1;
}

static int sub_02087930(UnkStruct_02087284 *mgr, s16 x, s16 y) {
    if (M_HOMEX(mgr) == x && M_HOMEY(mgr) == y) {
        return 0;
    }
    return 1;
}

int sub_02087948(UnkStruct_02087284 *mgr, s16 x, s16 y) {
    int i;

    M_E8(mgr) = 0xff;
    M_EC(mgr) = 0;
    for (i = 0; i < M_COUNT(mgr); i++) {
        u8 *entry = ENTRY(mgr, i);
        *(s16 *)((u8 *)entry + 0x28) = x;
        *(s16 *)((u8 *)entry + 0x2a) = y;
        ManagedSprite_SetPositionXYWithSubscreenOffset(E_SPRITE(entry), x, y, M_YOFF(mgr));
    }
    return 1;
}

int sub_02087988(UnkStruct_02087284 *mgr) {
    switch (M_E4(mgr)) {
    case 0:
        sub_020878B0(mgr, 0);
        M_E4(mgr) = M_E4(mgr) + 1;
        break;
    case 1:
        SysTask_Destroy(M_F4(mgr));
        M_E4(mgr) = M_E4(mgr) + 1;
        break;
    default:
        sub_02087830(mgr);
        NARC_Delete(M_NARC(mgr));
        Heap_Free(mgr);
        return 0;
    }
    return 1;
}

int sub_020879E0(UnkStruct_02087284 *mgr, int flag) {
    int i;

    for (i = 0; i < M_COUNT(mgr); i++) {
        ManagedSprite_SetDrawFlag(E_SPRITE(ENTRY(mgr, i)), flag);
    }
    return 1;
}

void sub_02087A08(UnkStruct_02087284 *mgr, int a1, int a2) {
    if (a1 != 0 && a2 != 0) {
        M_FC(mgr) = a1;
        M_100(mgr) = a2;
    } else {
        M_FC(mgr) = 0xf;
        M_100(mgr) = 0xf;
    }
}

void sub_02087A30(UnkStruct_02087284 *mgr) {
    int i;

    for (i = 0; i < M_COUNT(mgr); i++) {
        u8 *entry = ENTRY(mgr, i);
        ManagedSprite_SetAnim(E_SPRITE(entry), 1);
    }
}

void sub_02087A54(UnkStruct_02087284 *mgr) {
    int i;

    for (i = 0; i < M_COUNT(mgr); i++) {
        u8 *entry = ENTRY(mgr, i);
        ManagedSprite_SetAnim(E_SPRITE(entry), 0);
    }
}
