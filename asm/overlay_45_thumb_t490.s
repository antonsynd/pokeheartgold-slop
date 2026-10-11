#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_02230498
	.extern ov45_0222D740
	.extern ov45_022309E8
	.extern ov45_02230AB4
	.extern ov45_02254C38
	.extern ov45_02254C48

	.text

	.text
	thumb_func_start ov45_02230498
ov45_02230498: ; 0x02230498
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r7, r2, #0
	str r0, [sp, #4]
	str r1, [sp, #8]
	add r0, r7, #0
	mov r1, #0x30
	str r3, [sp, #0xc]
	bl Heap_Alloc
	mov r1, #0
	mov r2, #0x30
	add r4, r0, #0
	bl memset
	ldr r2, [sp, #4]
	mov r1, #0x90
	add r0, r7, #0
	mul r1, r2
	bl Heap_Alloc
	str r0, [r4, #0x10]
	ldr r0, [sp, #4]
	mov r6, #0
	str r0, [r4, #0x14]
	cmp r0, #0
	bls _022304E2
	add r5, r6, #0
_022304D0:
	ldr r0, [r4, #0x10]
	add r0, r0, r5
	bl ov45_02230AB4
	ldr r0, [r4, #0x14]
	add r6, r6, #1
	add r5, #0x90
	cmp r6, r0
	blo _022304D0
_022304E2:
	mov r0, #1
	add r1, r7, #0
	bl GF2dGfxRawResMan_Create
	str r0, [r4]
	mov r0, #2
	add r1, r7, #0
	bl GF2dGfxRawResMan_Create
	str r0, [r4, #4]
	mov r0, #0x14
	add r1, r7, #0
	bl GF3dGfxRawResMan_Create
	str r0, [r4, #8]
	mov r0, #1
	add r1, r7, #0
	bl BillboardLists_Create
	ldr r0, [sp, #4]
	str r7, [sp, #0x24]
	str r0, [sp, #0x20]
	add r0, sp, #0x20
	bl sub_020237EC
	str r0, [r4, #0xc]
	mov r0, #0x51
	add r1, r7, #0
	bl NARC_New
	str r0, [sp, #0x18]
	mov r0, #0xd1
	add r1, r7, #0
	bl NARC_New
	mov r2, #0
	ldr r3, [sp, #0xc]
	str r2, [sp]
	mov r1, #0x7f
	str r0, [sp, #0x14]
	bl GfGfxLoader_LoadFromOpenNarc
	add r5, r0, #0
	ldr r0, [r4]
	add r1, r5, #0
	mov r2, #0x7f
	bl GF2dGfxRawResMan_AllocObj
	add r0, r5, #0
	bl ov45_0222D740
	add r0, r5, #0
	bl NNS_G3dGetMdlSet
	cmp r0, #0
	beq _02230572
	add r2, r0, #0
	add r2, #8
	beq _02230566
	ldrb r1, [r0, #9]
	cmp r1, #0
	bls _02230566
	ldrh r1, [r0, #0xe]
	add r1, r2, r1
	add r1, r1, #4
	b _02230568
_02230566:
	mov r1, #0
_02230568:
	cmp r1, #0
	beq _02230572
	ldr r1, [r1]
	add r0, r0, r1
	b _02230574
_02230572:
	mov r0, #0
_02230574:
	mov r1, #0
	bl NNS_G3dMdlGetMdlLightEnableFlag
	mov r6, #0
	ldr r5, _02230630 ; =ov45_02254C38
	str r0, [r4, #0x2c]
	add r7, r6, #0
_02230582:
	str r7, [sp]
	ldrh r1, [r5]
	ldr r0, [sp, #0x18]
	ldr r3, [sp, #0xc]
	add r2, r7, #0
	bl GfGfxLoader_LoadFromOpenNarc
	add r1, r0, #0
	ldrh r2, [r5]
	ldr r0, [r4, #4]
	bl GF2dGfxRawResMan_AllocObj
	add r6, r6, #1
	add r5, r5, #2
	cmp r6, #2
	blt _02230582
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _022305AE
	mov r0, #1
	str r0, [sp, #0x10]
	b _022305B2
_022305AE:
	mov r0, #0
	str r0, [sp, #0x10]
_022305B2:
	ldr r5, _02230634 ; =ov45_02254C48
	mov r7, #0
_022305B6:
	ldr r0, [sp, #0x10]
	cmp r0, r7
	beq _02230608
	ldrh r0, [r5, #2]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x1f
	bne _022305C8
	mov r6, #1
	b _022305CA
_022305C8:
	mov r6, #0
_022305CA:
	mov r0, #0
	str r0, [sp]
	ldrh r1, [r5, #2]
	ldr r0, [sp, #0x18]
	ldr r3, [sp, #0xc]
	lsl r1, r1, #0x11
	lsr r1, r1, #0x11
	mov r2, #0
	bl GfGfxLoader_LoadFromOpenNarc
	add r1, r0, #0
	ldr r0, [sp, #0xc]
	add r3, r6, #0
	str r0, [sp]
	ldrh r2, [r5, #2]
	ldr r0, [r4, #8]
	lsl r2, r2, #0x11
	lsr r2, r2, #0x11
	bl GF3dGfxRawResMan_AllocObj
	str r0, [sp, #0x1c]
	cmp r6, #1
	bne _02230608
	bl GF3dGfxRawResObj_AllocVramAndGetKeys
	ldr r0, [sp, #0x1c]
	bl GF3dGfxRawResObj_LoadTex
	ldr r0, [sp, #0x1c]
	bl GF3dGfxRawResObj_FreeVramAndSecondaryHeader
_02230608:
	add r7, r7, #1
	add r5, r5, #4
	cmp r7, #0x14
	blt _022305B6
	add r0, r4, #0
	ldr r1, [sp, #0x14]
	ldr r3, [sp, #0xc]
	add r0, #0x18
	mov r2, #0x80
	bl ov45_022309E8
	ldr r0, [sp, #0x18]
	bl NARC_Delete
	ldr r0, [sp, #0x14]
	bl NARC_Delete
	add r0, r4, #0
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02230630: .word ov45_02254C38
_02230634: .word ov45_02254C48
	thumb_func_end ov45_02230498

