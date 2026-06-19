#include "global.h"

#include "camera.h"
#include "gf_3d_vramman.h"
#include "heap.h"
#include "unk_02014DA0.h"

typedef struct UnkStruct_02077604 {
    int unk0;
    int unk4;
    int unk8;
    SPLEmitter *unkC;
} UnkStruct_02077604;

extern void GfGfx_DisableEngineAPlanes(void);
extern void GfGfx_DisableEngineBPlanes(void);
extern void GfGfx_EngineATogglePlanes(u8 planeMask, u8 enable);
extern void G2x_SetBlendAlpha_(u32 addr, int plane1, int plane2, int ev1, int ev2);
extern void G3X_SetFog(BOOL enable, GXFogBlend fogMode, GXFogSlope fogSlope, int fogOffset);
extern void G3X_SetClearColor(GXRgb rgb, int alpha, int depth, int polygonID, BOOL fog);
extern void NNS_G2dSetupSoftwareSpriteCamera(void);
extern void Camera_SetPerspectiveClippingPlane(fx32 near, fx32 far, Camera *camera);
extern void RequestSwap3DBuffers(GXSortMode sortMode, GXBufferMode bufferMode);
extern void Thunk_G3X_Reset(void);
extern u32 (*NNS_GfdDefaultFuncAllocTexVram)(u32, BOOL, u32);
extern u32 (*NNS_GfdDefaultFuncAllocPlttVram)(u32, BOOL, u32);

void sub_020773AC(void);
void sub_020773D4(void);
void sub_02077400(enum HeapID heapID);
static void sub_0207741C(void);
void sub_020774A0(void);
void sub_020774E0(void);
static u32 sub_02077504(u32 szByte, BOOL is4x4comp);
static u32 sub_02077520(u32 szByte, BOOL is4pltt);
static SPLEmitter *sub_0207753C(int heapID);
static SPLEmitter *sub_02077584(int heapID, int narcId, int fileId);
static void sub_020775AC(SPLEmitter *emitter);
static void sub_020775C4(SPLEmitter *emitter);
UnkStruct_02077604 *sub_02077604(UnkStruct_02077604 *a0);
void sub_02077634(UnkStruct_02077604 *a0, int res_no);
BOOL sub_02077650(UnkStruct_02077604 *a0);
void sub_02077664(UnkStruct_02077604 *a0);

void sub_020773AC(void) {
    GfGfx_DisableEngineAPlanes();
    GfGfx_DisableEngineBPlanes();
    reg_GX_DISPCNT &= 0xFFFFE0FF;
    reg_GXS_DB_DISPCNT &= 0xFFFFE0FF;
}

void sub_020773D4(void) {
    G2x_SetBlendAlpha_(0x04000050, 0, 0xe, 0xb, 7);
    G2x_SetBlendAlpha_(0x04001050, 0, 0xe, 7, 8);
}

void sub_02077400(enum HeapID heapID) {
    GF_3DVramMan_Create(heapID, 0, 2, 0, 2, sub_0207741C);
}

// clang-format off
static asm void sub_0207741C(void) {
	push {r3, lr}
	mov r0, #1
	add r1, r0, #0
	bl GfGfx_EngineATogglePlanes
	ldr r0, =0x04000008
	mov r1, #3
	ldrh r2, [r0, #0]
	bic r2, r1
	mov r1, #1
	orr r1, r2
	strh r1, [r0, #0]
	add r0, #0x58
	ldrh r2, [r0, #0]
	ldr r1, =0xFFFFCFFD
	and r2, r1
	strh r2, [r0, #0]
	add r2, r1, #2
	ldrh r3, [r0, #0]
	add r1, r1, #2
	and r3, r2
	mov r2, #0x10
	orr r2, r3
	strh r2, [r0, #0]
	ldrh r3, [r0, #0]
	ldr r2, =0x0000CFFB
	and r3, r2
	strh r3, [r0, #0]
	ldrh r3, [r0, #0]
	sub r2, #0x1c
	and r3, r1
	mov r1, #8
	orr r1, r3
	strh r1, [r0, #0]
	ldrh r1, [r0, #0]
	and r1, r2
	strh r1, [r0, #0]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl G3X_SetFog
	mov r0, #0
	ldr r2, =0x00007FFF
	add r1, r0, #0
	mov r3, #0x3f
	str r0, [sp, #0]
	bl G3X_SetClearColor
	ldr r1, =0xBFFF0000
	ldr r0, =0x04000580
	str r1, [r0, #0]
	pop {r3, pc}
}
// clang-format on

void sub_020774A0(void) {
    u32 tex = NNS_GfdDefaultFuncAllocTexVram(2 << 14, 0, 0);
    u32 pltt = NNS_GfdDefaultFuncAllocPlttVram(0xa0, 0, 0);
    GF_ASSERT(tex != 0);
    GF_ASSERT(pltt != 0);
    sub_02014DA0();
}

void sub_020774E0(void) {
    Thunk_G3X_Reset();
    if (sub_0201543C() > 0) {
        Thunk_G3X_Reset();
        NNS_G2dSetupSoftwareSpriteCamera();
    }
    sub_02015460();
    RequestSwap3DBuffers((GXSortMode)1, (GXBufferMode)0);
}

static u32 sub_02077504(u32 szByte, BOOL is4x4comp) {
    NNSGfdTexKey key = NNS_GfdDefaultFuncAllocTexVram(szByte, is4x4comp, 0);
    sub_02015354(key);
    return (key << 16) >> 13;
}

static u32 sub_02077520(u32 szByte, BOOL is4pltt) {
    NNSGfdPlttKey key = NNS_GfdDefaultFuncAllocPlttVram(szByte, is4pltt, 0);
    sub_02015394(key);
    return (key << 16) >> 13;
}

static SPLEmitter *sub_0207753C(int heapID) {
    void *particleHeap = Heap_Alloc((enum HeapID)heapID, 0x12 << 10);
    SPLEmitter *emitter = sub_02014DB4(sub_02077504, sub_02077520, particleHeap, 0x12 << 10, 1, (enum HeapID)heapID);
    Camera *camera = sub_02015524(emitter);
    if (camera != NULL) {
        Camera_SetPerspectiveClippingPlane(1 << 12, 0xe1 << 14, camera);
    }
    return emitter;
}

static SPLEmitter *sub_02077584(int heapID, int narcId, int fileId) {
    SPLEmitter *emitter = sub_0207753C(heapID);
    void *data = sub_02015264((NarcId)narcId, fileId, (enum HeapID)heapID);
    sub_0201526C(emitter, data, 0xa, 1);
    return emitter;
}

static void sub_020775AC(SPLEmitter *emitter) {
    void *particleHeap = sub_020154D0(emitter);
    sub_02014EBC(emitter);
    Heap_Free(particleHeap);
}

// clang-format off
static asm void sub_020775C4(SPLEmitter *emitter) {
	push {r3}
	sub sp, #0xc
	add r1, sp, #0
	mov r2, #0
	str r2, [r1, #0]
	str r2, [r1, #4]
	str r2, [r1, #8]
	mov r1, #0x56
	lsl r1, r1, #4
	str r2, [sp, #0]
	str r2, [sp, #8]
	str r1, [sp, #4]
	ldr r1, [r0, #0x20]
	ldr r1, [r1, #0]
	ldr r1, [r1, #4]
	add r1, r2, r1
	str r1, [r0, #0x28]
	ldr r1, [r0, #0x20]
	ldr r2, [sp, #4]
	ldr r1, [r1, #0]
	ldr r1, [r1, #8]
	add r1, r2, r1
	str r1, [r0, #0x2c]
	ldr r1, [r0, #0x20]
	ldr r2, [sp, #8]
	ldr r1, [r1, #0]
	ldr r1, [r1, #0xc]
	add r1, r2, r1
	str r1, [r0, #0x30]
	add sp, #0xc
	pop {r3}
	bx lr
}
// clang-format on

#ifdef NONMATCHING
UnkStruct_02077604 *sub_02077604(UnkStruct_02077604 *a0) {
    UnkStruct_02077604 *s = Heap_Alloc((enum HeapID)a0->unk0, 0x10);
    GF_ASSERT(s != NULL);
    s->unk0 = a0->unk0;
    s->unk4 = a0->unk4;
    s->unkC = sub_02077584(s->unk0, 0x77, s->unk4);
    sub_02015528(s->unkC, 1);
    return s;
}
#else
// clang-format off
// MWCC won't CSE a0->unk4 (r2) across the s->unk4 store (it can't prove the
// Heap_Alloc'd s doesn't alias a0), so every C variant either double-loads
// a0->unk4 or schedules the two field loads in the wrong order. The asm keeps
// a0->unk4 live in r2 across the stores and reloads only s->unk0.
asm UnkStruct_02077604 *sub_02077604(UnkStruct_02077604 *a0) {
    push {r3, r4, r5, lr}
    add r5, r0, #0
    ldr r0, [r5, #0]
    mov r1, #0x10
    bl Heap_Alloc
    add r4, r0, #0
    bne _02077618
    bl GF_AssertFail
_02077618:
    ldr r0, [r5, #0]
    ldr r2, [r5, #4]
    mov r1, #0x77
    str r0, [r4, #0]
    str r2, [r4, #4]
    ldr r0, [r4, #0]
    bl sub_02077584
    mov r1, #1
    str r0, [r4, #0xc]
    bl sub_02015528
    add r0, r4, #0
    pop {r3, r4, r5, pc}
}
// clang-format on
#endif

void sub_02077634(UnkStruct_02077604 *a0, int res_no) {
    sub_02015494(a0->unkC, res_no, sub_020775C4, a0);
    sub_02015528(a0->unkC, 1);
}

BOOL sub_02077650(UnkStruct_02077604 *a0) {
    if (sub_020154B0(a0->unkC) != 0) {
        return TRUE;
    }
    return FALSE;
}

#ifdef NONMATCHING
void sub_02077664(UnkStruct_02077604 *a0) {
    sub_020775AC(a0->unkC);
    Heap_Free(a0);
}
#else
// clang-format off
// C body above matches byte-for-byte; this asm variant exists ONLY to carry the
// retail `.balign 4, 0` trailing pad. As the last (2-mod-4) function in the TU,
// MWCC's per-function .text section omits the pad and the linker slots the next
// object 2 bytes early. The trailing `lsl r0, r0, #0` encodes 0x0000 = the pad.
asm void sub_02077664(UnkStruct_02077604 *a0) {
    push {r4, lr}
    add r4, r0, #0
    ldr r0, [r4, #0xc]
    bl sub_020775AC
    add r0, r4, #0
    bl Heap_Free
    pop {r4, pc}
    lsl r0, r0, #0
}
// clang-format on
#endif
