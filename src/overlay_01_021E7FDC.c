#include "global.h"

#include "field/ov01_021E7FDC.h"

#include "assert.h"
#include "filesystem.h"
#include "gf_gfx_loader.h"
#include "heap.h"
#include "sprite.h"
#include "unk_02009D48.h"
#include "unk_0200A090.h"
#include "unk_0200ACF0.h"

typedef struct UnkTemplate_ov01_021E851C {
    s16 unk_0;
    s16 unk_2;
    s16 unk_4;
    u16 unk_6;
    int unk_8;
    int unk_C;
    int unk_10;
    int unk_14[GF_GFX_RES_TYPE_MAX];
    int unk_2C;
    int unk_30;
} UnkTemplate_ov01_021E851C;

typedef struct UnkRet_ov01_021E851C {
    Sprite *unk_0;
    SpriteResourcesHeader *unk_4;
    SpriteResourcesHeader **unk_8;
    void *unk_C;
} UnkRet_ov01_021E851C;

void ov01_021E8298(UnkStruct_ov01_021E7FDC *a0, const int *a1, int a2, enum HeapID a3);
int ov01_021E8378(UnkStruct_ov01_021E7FDC *a0, NarcId narcId, int fileId, BOOL compressed, int a4, int a5, int a6);
void ov01_021E83F0(UnkStruct_ov01_021E7FDC *a0, NarcId narcId, int fileId, BOOL compressed, int a4);
void ov01_021E8404(UnkStruct_ov01_021E7FDC *a0, NarcId narcId, int fileId, BOOL compressed, int a4);
void ov01_021E8418(UnkStruct_ov01_021E7FDC *a0, NarcId narcId, int fileId, BOOL compressed, int a4, int a5);
UnkRet_ov01_021E851C *ov01_021E851C(UnkStruct_ov01_021E7FDC *a0, const UnkTemplate_ov01_021E851C *a1);
void ov01_021E86F4(UnkStruct_ov01_021E7FDC *a0);

static BOOL ov01_021E847C(GF_2DGfxResObjList *list, SpriteResource *obj);
static void ov01_021E84B0(UnkStruct_ov01_021E7FDC *a0, NarcId narcId, int fileId, BOOL compressed, int type, int id);

static const VecFx32 ov01_022063FC = { FX32_CONST(1), FX32_CONST(1), FX32_CONST(1) };

#ifdef NONMATCHING
void UnkFieldSpriteRenderer_ov01_021E7FDC_Init(UnkStruct_ov01_021E7FDC *a0, const u16 *a1, int a2, enum HeapID a3) {
    GF_2DGfxResHeader *headers;
    NARC *narc;
    u32 i;
    void *resdat;
    a0->spriteList = G2dRenderer_Init(a2, &a0->renderer, a3);
    a0->unk_162 = a3;
    a0->unk_160 = (a1[4] == 0xFFFF) ? 4 : 6;
    headers = Heap_Alloc(a3, a0->unk_160 * GF2DGfxResHeader_sizeof());
    narc = NARC_New(NARC_data_resdat, a3);
    for (i = 0; i < a0->unk_160; i++) {
        GF_2DGfxResHeader *header = GF2DGfxResHeader_GetByIndex(headers, i);
        void *file = GfGfxLoader_LoadFromOpenNarc(narc, a1[i], FALSE, a3, TRUE);
        GF2DGfxResHeader_Init(file, header, a3);
        Heap_Free(file);
    }
    for (i = 0; i < a0->unk_160; i++) {
        GF_2DGfxResHeader *header = GF2DGfxResHeader_GetByIndex(headers, i);
        a0->spriteResManagers[i] = Create2DGfxResObjMan(GF2dGfxResHeader_GetNumObjects(header), (GfGfxResType)i, a3);
    }
    for (i = 0; i < a0->unk_160; i++) {
        GF_2DGfxResHeader *header = GF2DGfxResHeader_GetByIndex(headers, i);
        a0->spriteResObjLists[i] = Create2DGfxResObjList(GF2dGfxResHeader_GetNumObjects(header), a3);
        LoadAll2DGfxResObjsFromHeader(a0->spriteResManagers[i], header, a0->spriteResObjLists[i], a3);
    }
    for (i = 0; i < a0->unk_160; i++) {
        GF2DGfxResHeader_Reset(GF2DGfxResHeader_GetByIndex(headers, i));
    }
    Heap_Free(headers);
    sub_0200ADE4(a0->spriteResObjLists[0]);
    sub_0200B050(a0->spriteResObjLists[1]);
    resdat = GfGfxLoader_LoadFromOpenNarc(narc, a1[6], FALSE, a3, TRUE);
    a0->spriteResourceHeaderList = SpriteResourceHeaderList_Create(resdat, a3, a0->spriteResManagers[0], a0->spriteResManagers[1], a0->spriteResManagers[2], a0->spriteResManagers[3], a0->spriteResManagers[4], a0->spriteResManagers[5]);
    Heap_Free(resdat);
    NARC_Delete(narc);
}
#else
// clang-format off
// NONMATCHING: correct C above; MWCC register-allocation/constant-reuse tie-break.
asm void UnkFieldSpriteRenderer_ov01_021E7FDC_Init(UnkStruct_ov01_021E7FDC *a0, const u16 *a1, int a2, enum HeapID a3) {
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r5, r0, #0
	str r1, [sp, #0x10]
	add r4, r3, #0
	add r0, r2, #0
	add r1, r5, #4
	add r2, r4, #0
	bl G2dRenderer_Init
	str r0, [r5, #0]
	ldr r1, =0x00000162
	ldr r0, [sp, #0x10]
	strh r4, [r5, r1]
	ldrh r2, [r0, #8]
	ldr r0, =0x0000FFFF
	cmp r2, r0
	bne _021E8004
	mov r2, #4
	b _021E8006
_021E8004:
	mov r2, #6
_021E8006:
	sub r0, r1, #2
	strh r2, [r5, r0]
	bl GF2DGfxResHeader_sizeof
	mov r1, #0x16
	lsl r1, r1, #4
	ldrh r2, [r5, r1]
	add r3, r0, #0
	add r0, r4, #0
	add r1, r2, #0
	mul r1, r3
	bl Heap_Alloc
	add r7, r0, #0
	mov r0, #0xaf
	add r1, r4, #0
	bl NARC_New
	str r0, [sp, #0x20]
	mov r0, #0
	str r0, [sp, #0x1c]
	mov r0, #0x16
	lsl r0, r0, #4
	ldrh r0, [r5, r0]
	cmp r0, #0
	bls _021E807A
	ldr r6, [sp, #0x10]
_021E803C:
	ldr r1, [sp, #0x1c]
	add r0, r7, #0
	bl GF2DGfxResHeader_GetByIndex
	str r0, [sp, #0x24]
	mov r0, #1
	str r0, [sp, #0]
	ldrh r1, [r6, #0]
	ldr r0, [sp, #0x20]
	mov r2, #0
	add r3, r4, #0
	bl GfGfxLoader_LoadFromOpenNarc
	ldr r1, [sp, #0x24]
	str r0, [sp, #0x28]
	add r2, r4, #0
	bl GF2DGfxResHeader_Init
	ldr r0, [sp, #0x28]
	bl Heap_Free
	ldr r0, [sp, #0x1c]
	add r6, r6, #2
	add r0, r0, #1
	str r0, [sp, #0x1c]
	mov r0, #0x16
	lsl r0, r0, #4
	ldrh r0, [r5, r0]
	ldr r1, [sp, #0x1c]
	cmp r1, r0
	blo _021E803C
_021E807A:
	mov r6, #0
	cmp r0, #0
	bls _021E80B0
	str r5, [sp, #0x18]
_021E8082:
	add r0, r7, #0
	add r1, r6, #0
	bl GF2DGfxResHeader_GetByIndex
	bl GF2dGfxResHeader_GetNumObjects
	add r1, r6, #0
	add r2, r4, #0
	bl Create2DGfxResObjMan
	mov r1, #0x13
	ldr r2, [sp, #0x18]
	lsl r1, r1, #4
	str r0, [r2, r1]
	add r0, r2, #0
	add r0, r0, #4
	str r0, [sp, #0x18]
	add r0, r1, #0
	add r0, #0x30
	ldrh r0, [r5, r0]
	add r6, r6, #1
	cmp r6, r0
	blo _021E8082
_021E80B0:
	mov r1, #0
	str r1, [sp, #0x14]
	cmp r0, #0
	bls _021E80FC
	add r6, r5, #0
_021E80BA:
	ldr r1, [sp, #0x14]
	add r0, r7, #0
	bl GF2DGfxResHeader_GetByIndex
	str r0, [sp, #0x2c]
	bl GF2dGfxResHeader_GetNumObjects
	add r1, r4, #0
	bl Create2DGfxResObjList
	mov r1, #0x52
	lsl r1, r1, #2
	str r0, [r6, r1]
	add r0, r1, #0
	mov r2, #0x52
	sub r0, #0x18
	lsl r2, r2, #2
	ldr r0, [r6, r0]
	ldr r1, [sp, #0x2c]
	ldr r2, [r6, r2]
	add r3, r4, #0
	bl LoadAll2DGfxResObjsFromHeader
	ldr r0, [sp, #0x14]
	add r6, r6, #4
	add r0, r0, #1
	str r0, [sp, #0x14]
	mov r0, #0x16
	lsl r0, r0, #4
	ldrh r0, [r5, r0]
	ldr r1, [sp, #0x14]
	cmp r1, r0
	blo _021E80BA
_021E80FC:
	mov r6, #0
	cmp r0, #0
	bls _021E811A
_021E8102:
	add r0, r7, #0
	add r1, r6, #0
	bl GF2DGfxResHeader_GetByIndex
	bl GF2DGfxResHeader_Reset
	mov r0, #0x16
	lsl r0, r0, #4
	ldrh r0, [r5, r0]
	add r6, r6, #1
	cmp r6, r0
	blo _021E8102
_021E811A:
	add r0, r7, #0
	bl Heap_Free
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200ADE4
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_0200B050
	mov r0, #1
	str r0, [sp, #0]
	ldr r1, [sp, #0x10]
	ldr r0, [sp, #0x20]
	ldrh r1, [r1, #0xc]
	mov r2, #0
	add r3, r4, #0
	bl GfGfxLoader_LoadFromOpenNarc
	mov r3, #0x4e
	lsl r3, r3, #2
	ldr r1, [r5, r3]
	add r2, r3, #0
	str r1, [sp, #0]
	add r1, r3, #4
	ldr r1, [r5, r1]
	sub r2, #8
	str r1, [sp, #4]
	add r1, r3, #0
	add r1, #8
	ldr r1, [r5, r1]
	add r6, r0, #0
	str r1, [sp, #8]
	add r1, r3, #0
	add r1, #0xc
	ldr r1, [r5, r1]
	sub r3, r3, #4
	str r1, [sp, #0xc]
	ldr r2, [r5, r2]
	ldr r3, [r5, r3]
	add r1, r4, #0
	bl SpriteResourceHeaderList_Create
	mov r1, #0x4b
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r6, #0
	bl Heap_Free
	ldr r0, [sp, #0x20]
	bl NARC_Delete
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
}
// clang-format on
#endif

void UnkFieldSpriteRenderer_ov01_021E7FDC_Release(UnkStruct_ov01_021E7FDC *a0) {
    u32 i;
    SpriteList_Delete(a0->spriteList);
    SpriteResourceHeaderList_Destroy(a0->spriteResourceHeaderList);
    sub_0200AED4(a0->spriteResObjLists[0]);
    sub_0200B0CC(a0->spriteResObjLists[1]);
    for (i = 0; i < a0->unk_160; i++) {
        Delete2DGfxResObjList(a0->spriteResObjLists[i]);
        Destroy2DGfxResObjMan(a0->spriteResManagers[i]);
    }
}

#ifdef NONMATCHING
Sprite *ov01_021E81F0(UnkStruct_ov01_021E7FDC *a0, const SpriteTemplate_ov01_021E81F0 *a1) {
    SpriteTemplate template;
    VecFx32 scale = ov01_022063FC;
    VecFx32 position;
    Sprite *sprite;
    position.x = a1->unk_4 << FX32_SHIFT;
    position.z = a1->unk_8 << FX32_SHIFT;
    position.y = a1->unk_6 << FX32_SHIFT;
    if (a1->unk_14 == 2) {
        position.y += GX_LCD_SIZE_Y << FX32_SHIFT;
    }
    template.spriteList = a0->spriteList;
    template.header = &a0->spriteResourceHeaderList->headers[a1->unk_0];
    template.position = position;
    template.scale = scale;
    template.rotation = 0;
    template.drawPriority = a1->unk_C;
    template.whichScreen = (NNS_G2D_VRAM_TYPE)a1->unk_14;
    template.heapID = (enum HeapID)a0->unk_162;
    sprite = Sprite_CreateAffine(&template);
    GF_ASSERT(sprite != NULL);
    Sprite_SetAnimCtrlSeq(sprite, a1->unk_A);
    if (a1->unk_18 != 1) {
        Sprite_SetPalIndexRespectVramOffset(sprite, a1->unk_10);
    }
    return sprite;
}
#else
// clang-format off
// NONMATCHING: correct C above; MWCC register-allocation/constant-reuse tie-break.
asm Sprite *ov01_021E81F0(UnkStruct_ov01_021E7FDC *a0, const SpriteTemplate_ov01_021E81F0 *a1) {
	push {r4, r5, r6, lr}
	sub sp, #0x48
	ldr r5, =ov01_022063FC
	add r2, r0, #0
	add r4, r1, #0
	ldmia r5!, {r0, r1}
	add r3, sp, #0xc
	stmia r3!, {r0, r1}
	ldr r0, [r5, #0]
	mov r1, #6
	str r0, [r3, #0]
	mov r0, #4
	ldrsh r0, [r4, r0]
	mov r3, #8
	ldrsh r3, [r4, r3]
	lsl r0, r0, #0xc
	str r0, [sp, #0]
	ldrsh r0, [r4, r1]
	lsl r3, r3, #0xc
	str r3, [sp, #8]
	lsl r0, r0, #0xc
	ldr r3, [r4, #0x14]
	str r0, [sp, #4]
	cmp r3, #2
	bne _021E8228
	lsl r1, r1, #0x11
	add r0, r0, r1
	str r0, [sp, #4]
_021E8228:
	ldr r0, [r2, #0]
	mov r3, #0x4b
	str r0, [sp, #0x18]
	lsl r3, r3, #2
	ldr r0, [r2, r3]
	ldr r1, [r4, #0]
	ldr r5, [r0, #0]
	mov r0, #0x24
	mul r0, r1
	add r0, r5, r0
	add r6, sp, #0
	str r0, [sp, #0x1c]
	ldmia r6!, {r0, r1}
	add r5, sp, #0x20
	stmia r5!, {r0, r1}
	ldr r0, [r6, #0]
	add r6, sp, #0xc
	str r0, [r5, #0]
	ldmia r6!, {r0, r1}
	add r5, sp, #0x2c
	stmia r5!, {r0, r1}
	ldr r0, [r6, #0]
	mov r1, #0
	str r0, [r5, #0]
	add r0, sp, #0
	strh r1, [r0, #0x38]
	ldr r0, [r4, #0xc]
	add r3, #0x36
	str r0, [sp, #0x3c]
	ldr r0, [r4, #0x14]
	str r0, [sp, #0x40]
	ldrh r0, [r2, r3]
	str r0, [sp, #0x44]
	add r0, sp, #0x18
	bl Sprite_CreateAffine
	add r5, r0, #0
	bne _021E8278
	bl GF_AssertFail
_021E8278:
	ldrh r1, [r4, #0xa]
	add r0, r5, #0
	bl Sprite_SetAnimCtrlSeq
	ldr r0, [r4, #0x18]
	cmp r0, #1
	beq _021E828E
	ldr r1, [r4, #0x10]
	add r0, r5, #0
	bl Sprite_SetPalIndexRespectVramOffset
_021E828E:
	add r0, r5, #0
	add sp, #0x48
	pop {r4, r5, r6, pc}
}
// clang-format on
#endif

#ifdef NONMATCHING
void ov01_021E8298(UnkStruct_ov01_021E7FDC *a0, const int *a1, int a2, enum HeapID a3) {
    int i;
    a0->spriteList = G2dRenderer_Init(a2, &a0->renderer, a3);
    a0->unk_162 = a3;
    if (a1[4] == 0 || a1[5] == 0) {
        a0->unk_160 = 4;
        a0->spriteResManagers[4] = NULL;
        a0->spriteResManagers[5] = NULL;
    } else {
        a0->unk_160 = 6;
    }
    for (i = 0; i < a0->unk_160; i++) {
        a0->spriteResManagers[i] = Create2DGfxResObjMan(a1[i], (GfGfxResType)i, a3);
    }
    for (i = 0; i < a0->unk_160; i++) {
        if (a1[i] != 0) {
            GF_2DGfxResObjList *list;
            int j;
            a0->spriteResObjLists[i] = Create2DGfxResObjList(a1[i], a3);
            list = a0->spriteResObjLists[i];
            for (j = 0; j < list->max; j++) {
                list->obj[j] = NULL;
            }
        }
    }
}
#else
// clang-format off
// NONMATCHING: correct C above; MWCC register-allocation/constant-reuse tie-break.
asm void ov01_021E8298(UnkStruct_ov01_021E7FDC *a0, const int *a1, int a2, enum HeapID a3) {
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	str r1, [sp, #0]
	add r0, r2, #0
	str r3, [sp, #4]
	add r1, r7, #4
	add r2, r3, #0
	bl G2dRenderer_Init
	str r0, [r7, #0]
	ldr r1, =0x00000162
	ldr r0, [sp, #4]
	strh r0, [r7, r1]
	ldr r0, [sp, #0]
	ldr r0, [r0, #0x10]
	cmp r0, #0
	beq _021E82C4
	ldr r0, [sp, #0]
	ldr r0, [r0, #0x14]
	cmp r0, #0
	bne _021E82DA
_021E82C4:
	mov r1, #0x16
	mov r0, #4
	lsl r1, r1, #4
	strh r0, [r7, r1]
	add r0, r1, #0
	mov r2, #0
	sub r0, #0x20
	str r2, [r7, r0]
	sub r1, #0x1c
	str r2, [r7, r1]
	b _021E82E0
_021E82DA:
	mov r2, #6
	sub r0, r1, #2
	strh r2, [r7, r0]
_021E82E0:
	mov r0, #0x16
	lsl r0, r0, #4
	ldrh r1, [r7, r0]
	mov r4, #0
	cmp r1, #0
	bls _021E8310
	ldr r5, [sp, #0]
	add r6, r7, #0
_021E82F0:
	ldr r0, [r5, #0]
	ldr r2, [sp, #4]
	add r1, r4, #0
	bl Create2DGfxResObjMan
	mov r1, #0x13
	lsl r1, r1, #4
	str r0, [r6, r1]
	add r0, r1, #0
	add r0, #0x30
	ldrh r1, [r7, r0]
	add r4, r4, #1
	add r5, r5, #4
	add r6, r6, #4
	cmp r4, r1
	blo _021E82F0
_021E8310:
	mov r0, #0
	str r0, [sp, #8]
	cmp r1, #0
	bls _021E836E
	mov r6, #0x52
	add r5, r7, #0
	add r4, r0, #0
	lsl r6, r6, #2
_021E8320:
	ldr r0, [sp, #0]
	ldr r0, [r0, #0]
	cmp r0, #0
	beq _021E8354
	ldr r1, [sp, #4]
	bl Create2DGfxResObjList
	mov r1, #0x52
	lsl r1, r1, #2
	str r0, [r5, r1]
	mov r0, #0x52
	lsl r0, r0, #2
	ldr r3, [r5, r0]
	mov r1, #0
	ldr r0, [r3, #4]
	cmp r0, #0
	bls _021E8354
	add r2, r1, #0
_021E8344:
	ldr r0, [r3, #0]
	add r1, r1, #1
	str r4, [r0, r2]
	ldr r3, [r5, r6]
	add r2, r2, #4
	ldr r0, [r3, #4]
	cmp r1, r0
	blo _021E8344
_021E8354:
	ldr r0, [sp, #0]
	add r5, r5, #4
	add r0, r0, #4
	str r0, [sp, #0]
	ldr r0, [sp, #8]
	add r0, r0, #1
	str r0, [sp, #8]
	mov r0, #0x16
	lsl r0, r0, #4
	ldrh r1, [r7, r0]
	ldr r0, [sp, #8]
	cmp r0, r1
	blo _021E8320
_021E836E:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
}
// clang-format on
#endif

int ov01_021E8378(UnkStruct_ov01_021E7FDC *a0, NarcId narcId, int fileId, BOOL compressed, int a4, int a5, int a6) {
    SpriteResource *res;
    if (!GF2DGfxResObjExistsById(a0->spriteResManagers[GF_GFX_RES_TYPE_PLTT], a6)) {
        GF_AssertFail();
        return;
    }
    res = AddPlttResObjFromNarc(a0->spriteResManagers[GF_GFX_RES_TYPE_PLTT], narcId, fileId, compressed, a6, a5, a4, (enum HeapID)a0->unk_162);
    if (res != NULL) {
        GF_ASSERT(sub_0200B00C(res) == 1);
        ov01_021E847C(a0->spriteResObjLists[GF_GFX_RES_TYPE_PLTT], res);
        return SpriteTransfer_GetPlttOffset(res, (NNS_G2D_VRAM_TYPE)a5);
    }
    GF_AssertFail();
}

void ov01_021E83F0(UnkStruct_ov01_021E7FDC *a0, NarcId narcId, int fileId, BOOL compressed, int a4) {
    ov01_021E84B0(a0, narcId, fileId, compressed, 2, a4);
}

void ov01_021E8404(UnkStruct_ov01_021E7FDC *a0, NarcId narcId, int fileId, BOOL compressed, int a4) {
    ov01_021E84B0(a0, narcId, fileId, compressed, 3, a4);
}

void ov01_021E8418(UnkStruct_ov01_021E7FDC *a0, NarcId narcId, int fileId, BOOL compressed, int a4, int a5) {
    SpriteResource *res;
    if (!GF2DGfxResObjExistsById(a0->spriteResManagers[GF_GFX_RES_TYPE_CHAR], a5)) {
        GF_AssertFail();
        return;
    }
    res = AddCharResObjFromNarc(a0->spriteResManagers[GF_GFX_RES_TYPE_CHAR], narcId, fileId, compressed, a5, a4, (enum HeapID)a0->unk_162);
    if (res != NULL) {
        sub_0200ADA4(res);
        ov01_021E847C(a0->spriteResObjLists[GF_GFX_RES_TYPE_CHAR], res);
        return;
    }
    GF_AssertFail();
}

static BOOL ov01_021E847C(GF_2DGfxResObjList *list, SpriteResource *obj) {
    int i = 0;
    if (list->max > 0) {
        SpriteResource **p = list->obj;
        do {
            if (*p == NULL) {
                list->obj[i] = obj;
                list->num++;
                return TRUE;
            }
            i++;
            p++;
        } while (i < list->max);
    }
    return FALSE;
}

static void ov01_021E84B0(UnkStruct_ov01_021E7FDC *a0, NarcId narcId, int fileId, BOOL compressed, int type, int id) {
    SpriteResource *res;
    if (!GF2DGfxResObjExistsById(a0->spriteResManagers[type], id)) {
        GF_AssertFail();
        return;
    }
    res = AddCellOrAnimResObjFromNarc(a0->spriteResManagers[type], narcId, fileId, compressed, id, (GfGfxResType)type, (enum HeapID)a0->unk_162);
    if (res != NULL) {
        if (ov01_021E847C(a0->spriteResObjLists[type], res) != 1) {
            GF_AssertFail();
        }
    } else {
        GF_AssertFail();
    }
}

UnkRet_ov01_021E851C *ov01_021E851C(UnkStruct_ov01_021E7FDC *a0, const UnkTemplate_ov01_021E851C *a1) {
    SpriteTemplate template;
    int resIds[GF_GFX_RES_TYPE_MAX];
    UnkRet_ov01_021E851C *ret;
    int i;
    ret = Heap_Alloc((enum HeapID)a0->unk_162, sizeof(UnkRet_ov01_021E851C));
    ret->unk_8 = Heap_Alloc((enum HeapID)a0->unk_162, 8);
    ret->unk_8[0] = Heap_Alloc((enum HeapID)a0->unk_162, sizeof(SpriteResourcesHeader));
    ret->unk_4 = ret->unk_8[0];
    for (i = 0; i < GF_GFX_RES_TYPE_MAX; i++) {
        resIds[i] = a1->unk_14[i];
    }
    if (a0->spriteResManagers[GF_GFX_RES_TYPE_MCEL] == NULL || a0->spriteResManagers[GF_GFX_RES_TYPE_MANM] == NULL) {
        resIds[GF_GFX_RES_TYPE_MCEL] = -1;
        resIds[GF_GFX_RES_TYPE_MANM] = -1;
    } else {
        if (resIds[GF_GFX_RES_TYPE_MCEL] != -1 && !GF2DGfxResObjExistsById(a0->spriteResManagers[GF_GFX_RES_TYPE_MCEL], resIds[GF_GFX_RES_TYPE_MCEL])) {
            resIds[GF_GFX_RES_TYPE_MCEL] = -1;
        }
        if (resIds[GF_GFX_RES_TYPE_MANM] != -1 && !GF2DGfxResObjExistsById(a0->spriteResManagers[GF_GFX_RES_TYPE_MANM], resIds[GF_GFX_RES_TYPE_MANM])) {
            resIds[GF_GFX_RES_TYPE_MANM] = -1;
        }
    }
    CreateSpriteResourcesHeader(ret->unk_4, resIds[0], resIds[1], resIds[2], resIds[3], resIds[4], resIds[5], a1->unk_30, a1->unk_2C, a0->spriteResManagers[0], a0->spriteResManagers[1], a0->spriteResManagers[2], a0->spriteResManagers[3], a0->spriteResManagers[4], a0->spriteResManagers[5]);
    template.spriteList = a0->spriteList;
    template.header = ret->unk_4;
    template.position.x = FX32_CONST(a1->unk_0);
    template.position.y = FX32_CONST(a1->unk_2);
    template.position.z = FX32_CONST(a1->unk_4);
    if (a1->unk_10 == 2) {
        template.position.y += FX32_CONST(GX_LCD_SIZE_Y);
    }
    template.scale.x = FX32_CONST(1);
    template.scale.y = FX32_CONST(1);
    template.scale.z = FX32_CONST(1);
    template.rotation = 0;
    template.drawPriority = a1->unk_8;
    template.whichScreen = (NNS_G2D_VRAM_TYPE)a1->unk_10;
    template.heapID = (enum HeapID)a0->unk_162;
    ret->unk_0 = Sprite_CreateAffine(&template);
    if (ret->unk_0 != NULL) {
        int palIndex = Sprite_GetPalIndex(ret->unk_0);
        Sprite_SetAnimCtrlSeq(ret->unk_0, a1->unk_6);
        Sprite_SetPaletteOverride(ret->unk_0, palIndex + a1->unk_C);
    } else {
        GF_AssertFail();
    }
    return ret;
}

void ov01_021E86F4(UnkStruct_ov01_021E7FDC *a0) {
    u32 i;
    SpriteList_Delete(a0->spriteList);
    sub_0200AED4(a0->spriteResObjLists[0]);
    sub_0200B0CC(a0->spriteResObjLists[1]);
    for (i = 0; i < a0->unk_160; i++) {
        Delete2DGfxResObjList(a0->spriteResObjLists[i]);
        Destroy2DGfxResObjMan(a0->spriteResManagers[i]);
    }
}
