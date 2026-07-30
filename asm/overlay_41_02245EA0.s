	.include "asm/macros.inc"
	.include "overlay_41_02245EA0.inc"
	.include "global.inc"

    .text

	thumb_func_start ov41_02245EA0
ov41_02245EA0: ; 0x02245EA0
	push {r3, r4, r5, r6, r7, lr}
	add r7, r1, #0
	add r5, r0, #0
	add r0, r7, #0
	mov r1, #8
	bl Heap_Alloc
	lsl r6, r5, #3
	add r4, r0, #0
	add r0, r7, #0
	add r1, r6, #0
	bl Heap_Alloc
	mov r1, #0
	add r2, r6, #0
	str r0, [r4]
	bl memset
	str r5, [r4, #4]
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov41_02245EA0

	thumb_func_start ov41_02245ECC
ov41_02245ECC: ; 0x02245ECC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	bl Heap_Free
	add r0, r4, #0
	bl Heap_Free
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov41_02245ECC

	thumb_func_start ov41_02245EE0
ov41_02245EE0: ; 0x02245EE0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5]
	bl ov41_0224607C
	add r4, r0, #0
	bne _02245EF2
	bl GF_AssertFail
_02245EF2:
	ldr r0, [r5, #0x18]
	str r0, [r4]
	add r0, r5, #0
	bl ov41_022460A8
	str r0, [r4, #4]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov41_02245EE0

	thumb_func_start ov41_02245F04
ov41_02245F04: ; 0x02245F04
	push {r3, lr}
	add r1, sp, #0
	bl ov41_022460DC
	add r0, sp, #0
	bl TouchscreenHitbox_TouchHeldIsIn
	pop {r3, pc}
	thumb_func_end ov41_02245F04

	thumb_func_start ov41_02245F14
ov41_02245F14: ; 0x02245F14
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r6, r1, #0
	str r2, [sp]
	add r7, r3, #0
	bl ov41_02245F04
	cmp r0, #0
	bne _02245F2E
	add sp, #0xc
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02245F2E:
	add r0, r4, #0
	add r1, sp, #8
	add r2, sp, #4
	bl ov41_02245FA8
	ldr r0, _02245F98 ; =gSystem + 0x40
	ldr r1, [sp, #8]
	ldrh r2, [r0, #0x20]
	sub r1, r2, r1
	str r1, [r6]
	ldrh r1, [r0, #0x22]
	ldr r0, [sp, #4]
	sub r1, r1, r0
	ldr r0, [sp]
	sub r4, r1, #4
	str r1, [r0]
	add r0, r1, #4
	cmp r4, r0
	bge _02245F92
_02245F54:
	cmp r4, #0
	blt _02245F86
	ldr r0, [r6]
	sub r5, r0, #4
	add r0, r0, #4
	cmp r5, r0
	bge _02245F86
_02245F62:
	cmp r5, #0
	blt _02245F7C
	add r0, r7, #0
	add r1, r5, #0
	add r2, r4, #0
	mov r3, #0
	bl ov41_022464BC
	cmp r0, #0
	bne _02245F7C
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02245F7C:
	ldr r0, [r6]
	add r5, r5, #1
	add r0, r0, #4
	cmp r5, r0
	blt _02245F62
_02245F86:
	ldr r0, [sp]
	add r4, r4, #1
	ldr r0, [r0]
	add r0, r0, #4
	cmp r4, r0
	blt _02245F54
_02245F92:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_02245F98: .word gSystem + 0x40
	thumb_func_end ov41_02245F14

	thumb_func_start ov41_02245F9C
ov41_02245F9C: ; 0x02245F9C
	ldr r3, _02245FA4 ; =sub_02015FC4
	ldr r0, [r0, #4]
	bx r3
	nop
_02245FA4: .word sub_02015FC4
	thumb_func_end ov41_02245F9C

	thumb_func_start ov41_02245FA8
ov41_02245FA8: ; 0x02245FA8
	push {r3, r4, r5, lr}
	sub sp, #8
	ldr r0, [r0, #4]
	add r5, r1, #0
	add r4, r2, #0
	bl sub_02015FCC
	add r1, sp, #0
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
	mov r0, #4
	ldrsh r0, [r1, r0]
	str r0, [r5]
	mov r0, #6
	ldrsh r0, [r1, r0]
	str r0, [r4]
	add sp, #8
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov41_02245FA8

	thumb_func_start ov41_02245FD8
ov41_02245FD8: ; 0x02245FD8
	push {r3, r4, r5, lr}
	sub sp, #8
	ldr r0, [r0, #4]
	add r5, r1, #0
	add r4, r2, #0
	bl sub_02015FE8
	add r1, sp, #0
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
	mov r0, #4
	ldrsh r0, [r1, r0]
	str r0, [r5]
	mov r0, #6
	ldrsh r0, [r1, r0]
	str r0, [r4]
	add sp, #8
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov41_02245FD8

	thumb_func_start ov41_02246008
ov41_02246008: ; 0x02246008
	ldr r3, _02246010 ; =sub_02015FB0
	ldr r0, [r0, #4]
	bx r3
	nop
_02246010: .word sub_02015FB0
	thumb_func_end ov41_02246008

	thumb_func_start ov41_02246014
ov41_02246014: ; 0x02246014
	ldr r3, _0224601C ; =sub_02015FF4
	ldr r0, [r0, #4]
	bx r3
	nop
_0224601C: .word sub_02015FF4
	thumb_func_end ov41_02246014

	thumb_func_start ov41_02246020
ov41_02246020: ; 0x02246020
	push {r3, r4, r5, lr}
	sub sp, #8
	add r5, r1, #0
	add r4, r2, #0
	add r1, sp, #4
	add r2, sp, #0
	bl ov41_02245FD8
	ldr r0, [sp, #4]
	cmp r0, #0x10
	beq _02246040
	cmp r0, #0x20
	beq _02246046
	cmp r0, #0x40
	beq _0224604C
	b _02246050
_02246040:
	mov r0, #0
	str r0, [r5]
	b _02246050
_02246046:
	mov r0, #0xa
	str r0, [r5]
	b _02246050
_0224604C:
	mov r0, #0x14
	str r0, [r5]
_02246050:
	ldr r0, [sp]
	cmp r0, #0x10
	beq _02246062
	cmp r0, #0x20
	beq _0224606A
	cmp r0, #0x40
	beq _02246072
	add sp, #8
	pop {r3, r4, r5, pc}
_02246062:
	mov r0, #0
	add sp, #8
	str r0, [r4]
	pop {r3, r4, r5, pc}
_0224606A:
	mov r0, #0xa
	add sp, #8
	str r0, [r4]
	pop {r3, r4, r5, pc}
_02246072:
	mov r0, #0x14
	str r0, [r4]
	add sp, #8
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov41_02246020

	thumb_func_start ov41_0224607C
ov41_0224607C: ; 0x0224607C
	push {r3, r4}
	ldr r4, [r0, #4]
	mov r1, #0
	cmp r4, #0
	ble _022460A0
	ldr r3, [r0]
	add r2, r3, #0
_0224608A:
	ldr r0, [r2, #4]
	cmp r0, #0
	bne _02246098
	lsl r0, r1, #3
	add r0, r3, r0
	pop {r3, r4}
	bx lr
_02246098:
	add r1, r1, #1
	add r2, #8
	cmp r1, r4
	blt _0224608A
_022460A0:
	mov r0, #0
	pop {r3, r4}
	bx lr
	.balign 4, 0
	thumb_func_end ov41_0224607C

	thumb_func_start ov41_022460A8
ov41_022460A8: ; 0x022460A8
	push {r3, lr}
	sub sp, #0x20
	ldr r1, [r0, #4]
	mov r3, #0
	str r1, [sp]
	ldr r1, [r0, #8]
	str r1, [sp, #4]
	ldr r1, [r0, #0xc]
	str r1, [sp, #8]
	ldr r2, [r0, #0x10]
	add r1, sp, #0
	strh r2, [r1, #0xc]
	ldr r2, [r0, #0x14]
	strh r2, [r1, #0xe]
	strh r3, [r1, #0x10]
	mov r2, #0x1f
	str r2, [sp, #0x14]
	str r3, [sp, #0x18]
	ldr r0, [r0, #0x1c]
	strh r0, [r1, #0x1c]
	add r0, sp, #0
	bl sub_02015F8C
	add sp, #0x20
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov41_022460A8

	thumb_func_start ov41_022460DC
ov41_022460DC: ; 0x022460DC
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldr r0, [r5, #4]
	add r4, r1, #0
	bl sub_02015FCC
	add r1, sp, #0
	strh r0, [r1, #4]
	lsr r0, r0, #0x10
	strh r0, [r1, #6]
	ldrh r0, [r1, #4]
	strh r0, [r1, #0xc]
	ldrh r0, [r1, #6]
	strh r0, [r1, #0xe]
	ldr r0, [r5, #4]
	bl sub_02015FE8
	add r1, sp, #0
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	strh r0, [r1, #8]
	ldrh r0, [r1, #2]
	strh r0, [r1, #0xa]
	mov r0, #0xe
	ldrsh r2, [r1, r0]
	mov r0, #0xa
	strb r2, [r4]
	ldrsh r0, [r1, r0]
	add r0, r2, r0
	strb r0, [r4, #1]
	mov r0, #0xc
	ldrsh r2, [r1, r0]
	mov r0, #8
	strb r2, [r4, #2]
	ldrsh r0, [r1, r0]
	add r0, r2, r0
	strb r0, [r4, #3]
	add sp, #0x10
	pop {r3, r4, r5, pc}
	thumb_func_end ov41_022460DC

	thumb_func_start ov41_02246130
ov41_02246130: ; 0x02246130
	push {r3, lr}
	bl ov41_022466D0
	bl ov41_022466F0
	bl ov41_02246778
	ldr r0, _0224614C ; =gSystem + 0x60
	mov r1, #1
	strb r1, [r0, #9]
	bl GfGfx_SwapDisplay
	pop {r3, pc}
	nop
_0224614C: .word gSystem + 0x60
	thumb_func_end ov41_02246130

	thumb_func_start ov41_02246150
ov41_02246150: ; 0x02246150
	push {r3, lr}
	ldr r0, _0224616C ; =gSystem + 0x60
	mov r1, #0
	strb r1, [r0, #9]
	bl GfGfx_SwapDisplay
	bl ov41_022467D4
	bl ov41_022467C8
	bl GX_ResetBankForTex
	pop {r3, pc}
	nop
_0224616C: .word gSystem + 0x60
	thumb_func_end ov41_02246150

	thumb_func_start ov41_02246170
ov41_02246170: ; 0x02246170
	push {r4, lr}
	sub sp, #0x10
	ldr r3, _022461CC ; =ov41_0224BFB4
	add r2, sp, #0
	add r4, r0, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	mov r0, #0x1a
	mov r1, #0xe
	bl NARC_New
	mov r1, #6
	lsl r1, r1, #6
	str r0, [r4, r1]
	add r0, r4, #0
	add r1, sp, #0
	bl ov41_022467E4
	mov r2, #0xa
	add r0, r4, #0
	mov r1, #0xe
	lsl r2, r2, #0xa
	mov r3, #0x20
	bl ov41_02246CC0
	add r0, r4, #0
	bl ov41_02246A50
	add r0, r4, #0
	mov r1, #0xd
	bl ov41_02246C90
	add r0, r4, #0
	bl ov41_02246A94
	mov r0, #0xe
	bl BgConfig_Alloc
	str r0, [r4, #0x40]
	add r0, r4, #0
	bl ov41_022468FC
	add sp, #0x10
	pop {r4, pc}
	.balign 4, 0
_022461CC: .word ov41_0224BFB4
	thumb_func_end ov41_02246170

	thumb_func_start ov41_022461D0
ov41_022461D0: ; 0x022461D0
	push {r4, lr}
	add r4, r0, #0
	bl ov41_02246CB0
	add r0, r4, #0
	bl ov41_02246820
	add r0, r4, #0
	bl ov41_02246A20
	ldr r0, [r4, #0x40]
	bl Heap_Free
	add r0, r4, #0
	bl ov41_02246D2C
	add r0, r4, #0
	bl ov41_02246B34
	add r0, r4, #0
	bl ov41_02246A7C
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	bl NARC_Delete
	ldr r0, [r4, #4]
	bl Heap_Free
	mov r0, #0
	str r0, [r4, #4]
	ldr r0, [r4, #0x10]
	bl Heap_Free
	mov r0, #0
	str r0, [r4, #0x10]
	pop {r4, pc}
	thumb_func_end ov41_022461D0

	thumb_func_start ov41_0224621C
ov41_0224621C: ; 0x0224621C
	push {r4, lr}
	add r4, r0, #0
	bl Thunk_G3X_Reset
	bl NNS_G2dSetupSoftwareSpriteCamera
	ldr r0, [r4, #0x1c]
	cmp r0, #0
	beq _02246234
	add r0, r4, #0
	bl ov41_02246830
_02246234:
	ldr r0, [r4, #0x2c]
	cmp r0, #0
	beq _02246240
	ldr r0, [r4, #0x20]
	bl PokepicManager_DrawAll
_02246240:
	mov r0, #0
	add r1, r0, #0
	bl RequestSwap3DBuffers
	add r0, r4, #0
	bl ov41_02246B5C
	pop {r4, pc}
	thumb_func_end ov41_0224621C

	thumb_func_start ov41_02246250
ov41_02246250: ; 0x02246250
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r1, [r4]
	ldr r2, [r4, #4]
	add r5, r0, #0
	bl ov41_0224683C
	ldr r1, [r4, #8]
	ldr r2, [r4, #0xc]
	add r0, r5, #0
	bl ov41_0224689C
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov41_02246250

	thumb_func_start ov41_0224626C
ov41_0224626C: ; 0x0224626C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	bl sub_02015EF4
	ldr r0, [r4]
	bl sub_02015F64
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov41_0224626C

	thumb_func_start ov41_02246280
ov41_02246280: ; 0x02246280
	push {r4, r5, r6, lr}
	sub sp, #0x70
	add r5, r0, #0
	mov r0, #0
	str r1, [sp]
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	add r4, r2, #0
	ldr r2, [r5, #0x48]
	add r6, r3, #0
	str r2, [sp, #0x14]
	ldr r2, [r5, #0x4c]
	add r3, r1, #0
	str r2, [sp, #0x18]
	ldr r2, [r5, #0x50]
	str r2, [sp, #0x1c]
	ldr r2, [r5, #0x54]
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, sp, #0x4c
	add r2, r1, #0
	bl CreateSpriteResourcesHeader
	ldr r0, [r5, #0x44]
	str r0, [sp, #0x2c]
	add r0, sp, #0x4c
	str r0, [sp, #0x30]
	lsl r0, r4, #0xc
	str r0, [sp, #0x34]
	lsl r0, r6, #0xc
	str r0, [sp, #0x38]
	mov r0, #0
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x80]
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x84]
	str r0, [sp, #0x44]
	mov r0, #0xe
	str r0, [sp, #0x48]
	add r0, sp, #0x2c
	bl Sprite_Create
	add sp, #0x70
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov41_02246280

	thumb_func_start ov41_022462E4
ov41_022462E4: ; 0x022462E4
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r4, [sp, #0x1c]
	str r4, [sp]
	ldr r4, [sp, #0x18]
	str r4, [sp, #4]
	mov r4, #0xe
	str r4, [sp, #8]
	ldr r0, [r0, #0x48]
	bl AddCharResObjFromOpenNarc
	bl SpriteTransfer_CreateCharTransferTask_AllocAtEnd
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov41_022462E4

	thumb_func_start ov41_02246304
ov41_02246304: ; 0x02246304
	push {r4, lr}
	sub sp, #0x10
	ldr r4, [sp, #0x20]
	str r4, [sp]
	ldr r4, [sp, #0x18]
	str r4, [sp, #4]
	ldr r4, [sp, #0x1c]
	str r4, [sp, #8]
	mov r4, #0xe
	str r4, [sp, #0xc]
	ldr r0, [r0, #0x4c]
	bl AddPlttResObjFromOpenNarc
	bl SpriteTransfer_CreatePlttTransferTask
	add sp, #0x10
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov41_02246304

	thumb_func_start ov41_02246328
ov41_02246328: ; 0x02246328
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r4, [sp, #0x18]
	str r4, [sp]
	mov r4, #2
	str r4, [sp, #4]
	mov r4, #0xe
	str r4, [sp, #8]
	ldr r0, [r0, #0x50]
	bl AddCellOrAnimResObjFromOpenNarc
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov41_02246328

	thumb_func_start ov41_02246344
ov41_02246344: ; 0x02246344
	push {r3, r4, lr}
	sub sp, #0xc
	ldr r4, [sp, #0x18]
	str r4, [sp]
	mov r4, #3
	str r4, [sp, #4]
	mov r4, #0xe
	str r4, [sp, #8]
	ldr r0, [r0, #0x54]
	bl AddCellOrAnimResObjFromOpenNarc
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov41_02246344

	thumb_func_start ov41_02246360
ov41_02246360: ; 0x02246360
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x48]
	bl SpriteResourceCollection_Find
	add r1, r0, #0
	ldr r0, [r4, #0x48]
	bl DestroySingle2DGfxResObj
	pop {r4, pc}
	thumb_func_end ov41_02246360

	thumb_func_start ov41_02246374
ov41_02246374: ; 0x02246374
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x4c]
	bl SpriteResourceCollection_Find
	add r1, r0, #0
	ldr r0, [r4, #0x4c]
	bl DestroySingle2DGfxResObj
	pop {r4, pc}
	thumb_func_end ov41_02246374

	thumb_func_start ov41_02246388
ov41_02246388: ; 0x02246388
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x50]
	bl SpriteResourceCollection_Find
	add r1, r0, #0
	ldr r0, [r4, #0x50]
	bl DestroySingle2DGfxResObj
	pop {r4, pc}
	thumb_func_end ov41_02246388

	thumb_func_start ov41_0224639C
ov41_0224639C: ; 0x0224639C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x54]
	bl SpriteResourceCollection_Find
	add r1, r0, #0
	ldr r0, [r4, #0x54]
	bl DestroySingle2DGfxResObj
	pop {r4, pc}
	thumb_func_end ov41_0224639C

	thumb_func_start ov41_022463B0
ov41_022463B0: ; 0x022463B0
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0x76
	mov r2, #0x13
	mov r3, #0xe
	bl ov41_02246D54
	add r0, r5, #0
	add r1, r4, #0
	bl ov41_02246B68
	add r0, r5, #0
	add r1, r4, #0
	bl ov41_02246BEC
	pop {r3, r4, r5, pc}
	thumb_func_end ov41_022463B0

	thumb_func_start ov41_022463D4
ov41_022463D4: ; 0x022463D4
	ldr r3, _022463D8 ; =ov41_02246DA8
	bx r3
	.balign 4, 0
_022463D8: .word ov41_02246DA8
	thumb_func_end ov41_022463D4

	thumb_func_start ov41_022463DC
ov41_022463DC: ; 0x022463DC
	push {r4, r5, r6, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	add r6, r1, #0
	add r5, r2, #0
	bl GF2dGfxRawResMan_AllocObj
	ldr r1, [r4, #0x38]
	lsl r5, r5, #2
	add r0, r6, #0
	add r1, r1, r5
	bl NNS_G2dGetUnpackedCharacterData
	ldr r0, [r4, #0x38]
	ldr r0, [r0, r5]
	pop {r4, r5, r6, pc}
	thumb_func_end ov41_022463DC

	thumb_func_start ov41_022463FC
ov41_022463FC: ; 0x022463FC
	push {r3, r4}
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r2, [r0]
	ldr r1, _02246428 ; =0xFFFF1FFF
	add r3, r0, #0
	and r1, r2
	str r1, [r0]
	add r3, #8
	ldrh r4, [r3]
	mov r2, #3
	mov r1, #1
	bic r4, r2
	orr r1, r4
	add r0, #0xa
	strh r1, [r3]
	ldrh r1, [r0]
	bic r1, r2
	strh r1, [r0]
	pop {r3, r4}
	bx lr
	nop
_02246428: .word 0xFFFF1FFF
	thumb_func_end ov41_022463FC

	thumb_func_start ov41_0224642C
ov41_0224642C: ; 0x0224642C
	push {r3, r4}
	mov r0, #1
	lsl r0, r0, #0x1a
	ldr r2, [r0]
	ldr r1, _02246488 ; =0xFFFF1FFF
	add r3, r0, #0
	and r2, r1
	lsr r1, r0, #0xd
	orr r1, r2
	str r1, [r0]
	add r3, #0x48
	ldrh r4, [r3]
	mov r2, #0x3f
	mov r1, #0x1f
	bic r4, r2
	orr r1, r4
	strh r1, [r3]
	add r3, r0, #0
	add r3, #0x4a
	ldrh r4, [r3]
	mov r1, #0x12
	bic r4, r2
	orr r1, r4
	strh r1, [r3]
	add r1, r0, #0
	ldr r2, _0224648C ; =0x00000AF6
	add r1, #0x40
	strh r2, [r1]
	add r1, r0, #0
	ldr r2, _02246490 ; =0x0000128F
	add r1, #0x44
	strh r2, [r1]
	add r2, r0, #0
	add r2, #8
	ldrh r3, [r2]
	mov r1, #3
	add r0, #0xa
	bic r3, r1
	strh r3, [r2]
	ldrh r2, [r0]
	bic r2, r1
	mov r1, #1
	orr r1, r2
	strh r1, [r0]
	pop {r3, r4}
	bx lr
	.balign 4, 0
_02246488: .word 0xFFFF1FFF
_0224648C: .word 0x00000AF6
_02246490: .word 0x0000128F
	thumb_func_end ov41_0224642C

	thumb_func_start ov41_02246494
ov41_02246494: ; 0x02246494
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x40]
	bl DoScheduledBgGpuUpdates
	ldr r0, [r4, #0x20]
	bl PokepicManager_HandleLoadImgAndOrPltt
	bl OamManager_ApplyAndResetBuffers
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov41_02246494

	thumb_func_start ov41_022464AC
ov41_022464AC: ; 0x022464AC
	push {r3, lr}
	add r3, r1, #0
	mov r1, #0x76
	mov r2, #0x13
	bl ov41_02246D54
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov41_022464AC

	thumb_func_start ov41_022464BC
ov41_022464BC: ; 0x022464BC
	push {r4, r5}
	ldrh r5, [r0, #2]
	ldrh r4, [r0]
	lsl r5, r5, #3
	cmp r1, #0
	blt _022464D6
	cmp r2, #0
	blt _022464D6
	cmp r1, r5
	bge _022464D6
	lsl r4, r4, #3
	cmp r2, r4
	blt _022464DC
_022464D6:
	mov r0, #2
	pop {r4, r5}
	bx lr
_022464DC:
	add r4, r2, #0
	mul r4, r5
	add r4, r1, r4
	lsr r5, r4, #0x1f
	lsl r2, r4, #0x1d
	sub r2, r2, r5
	mov r1, #0x1d
	ror r2, r1
	add r1, r5, r2
	lsl r2, r1, #2
	add r1, r3, #0
	ldr r3, [r0, #0x14]
	asr r0, r4, #2
	lsr r0, r0, #0x1d
	add r0, r4, r0
	asr r0, r0, #3
	lsl r0, r0, #2
	ldr r3, [r3, r0]
	mov r0, #0xf
	lsl r0, r2
	lsl r1, r2
	and r0, r3
	cmp r1, r0
	bne _02246512
	mov r0, #1
	pop {r4, r5}
	bx lr
_02246512:
	mov r0, #0
	pop {r4, r5}
	bx lr
	thumb_func_end ov41_022464BC

	thumb_func_start ov41_02246518
ov41_02246518: ; 0x02246518
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	bl ov41_022467E4
	mov r2, #0xa
	add r0, r5, #0
	add r1, r4, #0
	lsl r2, r2, #0xa
	mov r3, #0x20
	bl ov41_02246CC0
	ldr r0, [r5, #0x20]
	mov r1, #1
	bl PokepicManager_SetNeedG3IdentityFlag
	add r0, r5, #0
	add r1, r4, #0
	bl ov41_02246C90
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov41_02246518

	thumb_func_start ov41_02246544
ov41_02246544: ; 0x02246544
	push {r4, r5, lr}
	sub sp, #0x1c
	ldr r3, _02246590 ; =ov41_0224C018
	add r5, r0, #0
	str r1, [r5, #0x40]
	add r4, r2, #0
	ldmia r3!, {r0, r1}
	add r2, sp, #0
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r3]
	mov r1, #2
	str r0, [r2]
	ldr r0, [r5, #0x40]
	bl FreeBgTilemapBuffer
	ldr r0, [r5, #0x40]
	mov r1, #2
	add r2, sp, #0
	mov r3, #0
	bl InitBgFromTemplate
	mov r0, #2
	mov r1, #0x20
	mov r2, #0
	add r3, r4, #0
	bl BG_ClearCharDataRange
	ldr r0, [r5, #0x40]
	mov r1, #2
	bl BgClearTilemapBufferAndCommit
	add sp, #0x1c
	pop {r4, r5, pc}
	nop
_02246590: .word ov41_0224C018
	thumb_func_end ov41_02246544

	thumb_func_start ov41_02246594
ov41_02246594: ; 0x02246594
	push {r4, lr}
	add r4, r0, #0
	bl ov41_02246CB0
	add r0, r4, #0
	bl ov41_02246820
	add r0, r4, #0
	bl ov41_02246D2C
	ldr r0, [r4, #4]
	bl Heap_Free
	mov r0, #0
	str r0, [r4, #4]
	ldr r0, [r4, #0x10]
	bl Heap_Free
	mov r0, #0
	str r0, [r4, #0x10]
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov41_02246594

	thumb_func_start ov41_022465C0
ov41_022465C0: ; 0x022465C0
	ldr r3, _022465C8 ; =FreeBgTilemapBuffer
	ldr r0, [r0, #0x40]
	mov r1, #2
	bx r3
	.balign 4, 0
_022465C8: .word FreeBgTilemapBuffer
	thumb_func_end ov41_022465C0

	thumb_func_start ov41_022465CC
ov41_022465CC: ; 0x022465CC
	ldr r3, _022465D4 ; =PokepicManager_HandleLoadImgAndOrPltt
	ldr r0, [r0, #0x20]
	bx r3
	nop
_022465D4: .word PokepicManager_HandleLoadImgAndOrPltt
	thumb_func_end ov41_022465CC

	thumb_func_start ov41_022465D8
ov41_022465D8: ; 0x022465D8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r0, _0224665C ; =0x04000454
	str r3, [sp]
	mov r1, #0
	str r1, [r0]
	sub r0, #0x10
	add r6, r2, #0
	ldr r7, [sp, #0x18]
	str r1, [r0]
	bl NNS_G2dSetupSoftwareSpriteCamera
	ldr r1, _02246660 ; =0x04000470
	lsl r0, r4, #0xc
	str r0, [r1]
	lsl r0, r6, #0xc
	str r0, [r1]
	mov r0, #0
	str r0, [r1]
	ldr r0, [sp]
	ldr r1, _02246664 ; =FX_SinCosTable_
	asr r0, r0, #4
	lsl r2, r0, #1
	lsl r0, r2, #1
	add r2, r2, #1
	lsl r2, r2, #1
	ldrsh r0, [r1, r0]
	ldrsh r1, [r1, r2]
	bl G3_RotZ
	ldr r2, [r7, #8]
	ldr r1, [r7, #4]
	ldr r3, [r7]
	ldr r0, _02246668 ; =0x0400046C
	str r3, [r0]
	str r1, [r0]
	neg r1, r4
	str r2, [r0]
	lsl r1, r1, #0xc
	str r1, [r0, #4]
	neg r1, r6
	lsl r1, r1, #0xc
	str r1, [r0, #4]
	mov r1, #0
	str r1, [r0, #4]
	sub r0, #0x28
	str r1, [r0]
	ldr r0, [r5, #0x1c]
	cmp r0, #0
	beq _02246644
	add r0, r5, #0
	bl ov41_02246830
_02246644:
	ldr r0, [r5, #0x2c]
	cmp r0, #0
	beq _02246650
	ldr r0, [r5, #0x20]
	bl PokepicManager_DrawAll
_02246650:
	ldr r0, _0224666C ; =0x04000448
	mov r1, #1
	str r1, [r0]
	str r1, [r0]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0224665C: .word 0x04000454
_02246660: .word 0x04000470
_02246664: .word FX_SinCosTable_
_02246668: .word 0x0400046C
_0224666C: .word 0x04000448
	thumb_func_end ov41_022465D8

	thumb_func_start ov41_02246670
ov41_02246670: ; 0x02246670
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x1a
	mov r1, #0xe
	bl NARC_New
	mov r1, #6
	lsl r1, r1, #6
	str r0, [r4, r1]
	add r0, r4, #0
	bl ov41_02246A94
	mov r0, #0xe
	bl BgConfig_Alloc
	str r0, [r4, #0x40]
	add r0, r4, #0
	bl ov41_022468FC
	pop {r4, pc}
	thumb_func_end ov41_02246670

	thumb_func_start ov41_02246698
ov41_02246698: ; 0x02246698
	push {r4, lr}
	add r4, r0, #0
	bl ov41_02246A20
	ldr r0, [r4, #0x40]
	bl Heap_Free
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	bl NARC_Delete
	add r0, r4, #0
	bl ov41_02246B34
	pop {r4, pc}
	thumb_func_end ov41_02246698

	thumb_func_start ov41_022466B8
ov41_022466B8: ; 0x022466B8
	push {r3, lr}
	ldr r0, [r0, #0x40]
	bl DoScheduledBgGpuUpdates
	bl OamManager_ApplyAndResetBuffers
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov41_022466B8

	thumb_func_start ov41_022466C8
ov41_022466C8: ; 0x022466C8
	ldr r3, _022466CC ; =ov41_02246B5C
	bx r3
	.balign 4, 0
_022466CC: .word ov41_02246B5C
	thumb_func_end ov41_022466C8

	thumb_func_start ov41_022466D0
ov41_022466D0: ; 0x022466D0
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _022466EC ; =ov41_0224C06C
	add r3, sp, #0
	mov r2, #5
_022466DA:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _022466DA
	add r0, sp, #0
	bl GfGfx_SetBanks
	add sp, #0x28
	pop {r4, pc}
	.balign 4, 0
_022466EC: .word ov41_0224C06C
	thumb_func_end ov41_022466D0

	thumb_func_start ov41_022466F0
ov41_022466F0: ; 0x022466F0
	push {r3, lr}
	bl NNS_G3dInit
	bl G3X_InitMtxStack
	mov r0, #1
	add r1, r0, #0
	bl GfGfx_EngineATogglePlanes
	ldr r0, _02246764 ; =0x04000008
	mov r1, #3
	ldrh r2, [r0]
	bic r2, r1
	mov r1, #1
	orr r1, r2
	strh r1, [r0]
	add r0, #0x58
	ldrh r1, [r0]
	ldr r2, _02246768 ; =0xFFFFCFFD
	and r1, r2
	strh r1, [r0]
	ldrh r3, [r0]
	add r1, r2, #2
	and r3, r1
	mov r1, #0x10
	orr r1, r3
	strh r1, [r0]
	ldrh r3, [r0]
	ldr r1, _0224676C ; =0x0000CFFB
	and r1, r3
	strh r1, [r0]
	add r1, r2, #2
	ldrh r3, [r0]
	lsr r2, r2, #0x11
	and r3, r1
	mov r1, #8
	orr r1, r3
	strh r1, [r0]
	mov r0, #0
	add r1, r0, #0
	mov r3, #0x3f
	str r0, [sp]
	bl G3X_SetClearColor
	ldr r2, _02246770 ; =0x04000540
	mov r0, #2
	ldr r1, _02246774 ; =0xBFFF0000
	str r0, [r2]
	str r1, [r2, #0x40]
	mov r1, #1
	bl GF_3DVramMan_InitFrameTexVramManager
	mov r0, #1
	lsl r0, r0, #0xe
	mov r1, #1
	bl GF_3DVramMan_InitFramePlttVramManager
	pop {r3, pc}
	.balign 4, 0
_02246764: .word 0x04000008
_02246768: .word 0xFFFFCFFD
_0224676C: .word 0x0000CFFB
_02246770: .word 0x04000540
_02246774: .word 0xBFFF0000
	thumb_func_end ov41_022466F0

	thumb_func_start ov41_02246778
ov41_02246778: ; 0x02246778
	push {r4, lr}
	sub sp, #0x10
	ldr r4, _022467C0 ; =_0224BF94
	add r3, sp, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl SetBothScreensModesAndDisable
	mov r2, #1
	lsl r2, r2, #0x1a
	ldr r1, [r2]
	ldr r0, _022467C4 ; =0xFFCFFFEF
	and r1, r0
	mov r0, #0x10
	orr r0, r1
	str r0, [r2]
	bl NNS_G2dInitOamManagerModule
	bl GfGfx_DisableEngineAPlanes
	bl GfGfx_DisableEngineBPlanes
	mov r0, #0x1f
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	mov r0, #0x13
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	add sp, #0x10
	pop {r4, pc}
	.balign 4, 0
_022467C0: .word _0224BF94
_022467C4: .word 0xFFCFFFEF
	thumb_func_end ov41_02246778

	thumb_func_start ov41_022467C8
ov41_022467C8: ; 0x022467C8
	push {r3, lr}
	bl NNS_GfdResetFrmTexVramState
	bl NNS_GfdResetFrmPlttVramState
	pop {r3, pc}
	thumb_func_end ov41_022467C8

	thumb_func_start ov41_022467D4
ov41_022467D4: ; 0x022467D4
	push {r3, lr}
	bl GfGfx_DisableEngineAPlanes
	bl GfGfx_DisableEngineBPlanes
	bl NNS_G2dInitOamManagerModule
	pop {r3, pc}
	thumb_func_end ov41_022467D4

	thumb_func_start ov41_022467E4
ov41_022467E4: ; 0x022467E4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	bl sub_02015DDC
	str r0, [r5]
	mov r1, #0x76
	ldr r0, [r4, #0xc]
	lsl r1, r1, #2
	bl Heap_Alloc
	str r0, [r5, #4]
	mov r0, #0x76
	str r0, [r5, #8]
	mov r0, #0
	str r0, [r5, #0xc]
	ldr r0, [r4, #0xc]
	mov r1, #0x4c
	bl Heap_Alloc
	str r0, [r5, #0x10]
	mov r0, #0x13
	str r0, [r5, #0x14]
	mov r0, #0
	str r0, [r5, #0x18]
	mov r0, #1
	str r0, [r5, #0x1c]
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov41_022467E4

	thumb_func_start ov41_02246820
ov41_02246820: ; 0x02246820
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	bl sub_02015E20
	mov r0, #0
	str r0, [r4]
	pop {r4, pc}
	thumb_func_end ov41_02246820

	thumb_func_start ov41_02246830
ov41_02246830: ; 0x02246830
	ldr r3, _02246838 ; =sub_02015E64
	ldr r0, [r0]
	bx r3
	nop
_02246838: .word sub_02015E64
	thumb_func_end ov41_02246830

	thumb_func_start ov41_0224683C
ov41_0224683C: ; 0x0224683C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0
	str r0, [sp, #4]
	add r0, r2, #0
	add r4, r1, #0
	str r2, [sp]
	cmp r0, #0
	ble _02246898
	add r7, r5, #0
	add r6, r4, #0
	add r7, #0xc
_02246856:
	ldr r1, [r5, #0xc]
	ldr r0, [r5, #8]
	cmp r1, r0
	blt _02246862
	bl GF_AssertFail
_02246862:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _02246878
	add r0, r6, #0
	bl sub_02015EA0
	ldr r2, [r5, #0xc]
	ldr r1, [r5, #4]
	lsl r2, r2, #2
	str r0, [r1, r2]
	b _02246882
_02246878:
	ldr r1, [r5, #0xc]
	ldr r0, [r5, #4]
	lsl r2, r1, #2
	mov r1, #0
	str r1, [r0, r2]
_02246882:
	ldr r0, [r7]
	add r4, #8
	add r0, r0, #1
	str r0, [r7]
	ldr r0, [sp, #4]
	add r6, #8
	add r1, r0, #1
	ldr r0, [sp]
	str r1, [sp, #4]
	cmp r1, r0
	blt _02246856
_02246898:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov41_0224683C

	thumb_func_start ov41_0224689C
ov41_0224689C: ; 0x0224689C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	mov r0, #0
	str r0, [sp, #4]
	add r0, r2, #0
	add r4, r1, #0
	str r2, [sp]
	cmp r0, #0
	ble _022468F8
	add r7, r5, #0
	add r6, r4, #0
	add r7, #0x18
_022468B6:
	ldr r1, [r5, #0x18]
	ldr r0, [r5, #0x14]
	cmp r1, r0
	blt _022468C2
	bl GF_AssertFail
_022468C2:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _022468D8
	add r0, r6, #0
	bl sub_02015F1C
	ldr r2, [r5, #0x18]
	ldr r1, [r5, #0x10]
	lsl r2, r2, #2
	str r0, [r1, r2]
	b _022468E2
_022468D8:
	ldr r1, [r5, #0x18]
	ldr r0, [r5, #0x10]
	lsl r2, r1, #2
	mov r1, #0
	str r1, [r0, r2]
_022468E2:
	ldr r0, [r7]
	add r4, #0xc
	add r0, r0, #1
	str r0, [r7]
	ldr r0, [sp, #4]
	add r6, #0xc
	add r1, r0, #1
	ldr r0, [sp]
	str r1, [sp, #4]
	cmp r1, r0
	blt _022468B6
_022468F8:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov41_0224689C

	thumb_func_start ov41_022468FC
ov41_022468FC: ; 0x022468FC
	push {r4, r5, lr}
	sub sp, #0x8c
	ldr r5, _02246A0C ; =ov41_0224BFE0
	add r4, r0, #0
	ldmia r5!, {r0, r1}
	add r3, sp, #0x70
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #1
	str r0, [r3]
	ldr r0, [r4, #0x40]
	mov r3, #0
	bl InitBgFromTemplate
	mov r0, #1
	mov r1, #0x20
	mov r2, #0
	mov r3, #0xe
	bl BG_ClearCharDataRange
	ldr r0, [r4, #0x40]
	mov r1, #1
	bl BgClearTilemapBufferAndCommit
	ldr r5, _02246A10 ; =ov41_0224BFFC
	add r3, sp, #0x54
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #2
	str r0, [r3]
	ldr r0, [r4, #0x40]
	mov r3, #0
	bl InitBgFromTemplate
	mov r0, #2
	mov r1, #0x20
	mov r2, #0
	mov r3, #0xe
	bl BG_ClearCharDataRange
	ldr r0, [r4, #0x40]
	mov r1, #2
	bl BgClearTilemapBufferAndCommit
	ldr r5, _02246A14 ; =ov41_0224C034
	add r3, sp, #0x38
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #3
	str r0, [r3]
	ldr r0, [r4, #0x40]
	mov r3, #0
	bl InitBgFromTemplate
	mov r0, #3
	mov r1, #0x20
	mov r2, #0
	mov r3, #0xe
	bl BG_ClearCharDataRange
	ldr r0, [r4, #0x40]
	mov r1, #3
	bl BgClearTilemapBufferAndCommit
	ldr r5, _02246A18 ; =ov41_0224BFC4
	add r3, sp, #0x1c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #4
	str r0, [r3]
	ldr r0, [r4, #0x40]
	mov r3, #0
	bl InitBgFromTemplate
	mov r0, #4
	mov r1, #0x20
	mov r2, #0
	mov r3, #0xe
	bl BG_ClearCharDataRange
	ldr r0, [r4, #0x40]
	mov r1, #4
	bl BgClearTilemapBufferAndCommit
	ldr r5, _02246A1C ; =ov41_0224C050
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #5
	str r0, [r3]
	ldr r0, [r4, #0x40]
	mov r3, #0
	bl InitBgFromTemplate
	mov r0, #5
	mov r1, #0x20
	mov r2, #0
	mov r3, #0xe
	bl BG_ClearCharDataRange
	ldr r0, [r4, #0x40]
	mov r1, #5
	bl BgClearTilemapBufferAndCommit
	add sp, #0x8c
	pop {r4, r5, pc}
	nop
_02246A0C: .word ov41_0224BFE0
_02246A10: .word ov41_0224BFFC
_02246A14: .word ov41_0224C034
_02246A18: .word ov41_0224BFC4
_02246A1C: .word ov41_0224C050
	thumb_func_end ov41_022468FC

	thumb_func_start ov41_02246A20
ov41_02246A20: ; 0x02246A20
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x40]
	mov r1, #1
	bl FreeBgTilemapBuffer
	ldr r0, [r4, #0x40]
	mov r1, #2
	bl FreeBgTilemapBuffer
	ldr r0, [r4, #0x40]
	mov r1, #3
	bl FreeBgTilemapBuffer
	ldr r0, [r4, #0x40]
	mov r1, #4
	bl FreeBgTilemapBuffer
	ldr r0, [r4, #0x40]
	mov r1, #5
	bl FreeBgTilemapBuffer
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov41_02246A20

	thumb_func_start ov41_02246A50
ov41_02246A50: ; 0x02246A50
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x77
	mov r1, #0xe
	bl GF2dGfxRawResMan_Create
	mov r1, #0x77
	str r0, [r4, #0x34]
	mov r0, #0xe
	lsl r1, r1, #2
	bl Heap_Alloc
	mov r2, #0x77
	mov r1, #0
	lsl r2, r2, #2
	str r0, [r4, #0x38]
	bl memset
	mov r0, #0x77
	str r0, [r4, #0x3c]
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov41_02246A50

	thumb_func_start ov41_02246A7C
ov41_02246A7C: ; 0x02246A7C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x38]
	bl Heap_Free
	ldr r0, [r4, #0x34]
	bl GF2dGfxRawResObj_Destroy
	mov r0, #0
	str r0, [r4, #0x3c]
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov41_02246A7C

	thumb_func_start ov41_02246A94
ov41_02246A94: ; 0x02246A94
	push {r4, r5, lr}
	sub sp, #0x24
	ldr r5, _02246B30 ; =ov41_0224BFA4
	add r3, sp, #0x14
	add r4, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	mov r1, #0x10
	add r0, r2, #0
	add r2, r1, #0
	bl ObjCharTransfer_InitEx
	mov r0, #5
	mov r1, #0xe
	bl ObjPlttTransfer_Init
	bl ObjCharTransfer_ClearBuffers
	bl ObjPlttTransfer_Reset
	bl NNS_G2dInitOamManagerModule
	mov r0, #0
	str r0, [sp]
	mov r1, #0x7c
	str r1, [sp, #4]
	str r0, [sp, #8]
	mov r3, #0x1f
	str r3, [sp, #0xc]
	mov r2, #0xe
	str r2, [sp, #0x10]
	add r2, r0, #0
	bl OamManager_Create
	add r1, r4, #0
	mov r0, #0x30
	add r1, #0x58
	mov r2, #0xe
	bl G2dRenderer_Init
	str r0, [r4, #0x44]
	add r0, r4, #0
	mov r2, #2
	add r0, #0x58
	mov r1, #0
	lsl r2, r2, #0x14
	bl G2dRenderer_SetSubSurfaceCoords
	mov r0, #8
	mov r1, #0
	mov r2, #0xe
	bl Create2DGfxResObjMan
	str r0, [r4, #0x48]
	mov r0, #5
	mov r1, #1
	mov r2, #0xe
	bl Create2DGfxResObjMan
	str r0, [r4, #0x4c]
	mov r0, #0x30
	mov r1, #2
	mov r2, #0xe
	bl Create2DGfxResObjMan
	str r0, [r4, #0x50]
	mov r0, #0x30
	mov r1, #3
	mov r2, #0xe
	bl Create2DGfxResObjMan
	str r0, [r4, #0x54]
	add sp, #0x24
	pop {r4, r5, pc}
	nop
_02246B30: .word ov41_0224BFA4
	thumb_func_end ov41_02246A94


    .rodata

_0224BF94:
	.byte 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x00, 0x00

ov41_0224BFA4: ; 0x0224BFA4
	.byte 0x08, 0x00, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x40, 0x00, 0x00
	.byte 0x0E, 0x00, 0x00, 0x00

ov41_0224BFB4: ; 0x0224BFB4
	.byte 0xCE, 0x02, 0x00, 0x00, 0x76, 0x00, 0x00, 0x00, 0x13, 0x00, 0x00, 0x00
	.byte 0x0E, 0x00, 0x00, 0x00

ov41_0224BFC4: ; 0x0224BFC4
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x0F, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

ov41_0224BFE0: ; 0x0224BFE0
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x1F, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

ov41_0224BFFC: ; 0x0224BFFC
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1E, 0x01
	.byte 0x00, 0x02, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

ov41_0224C018: ; 0x0224C018
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1E, 0x01, 0x00, 0x02, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00

ov41_0224C034: ; 0x0224C034
	.byte 0x00, 0x00, 0x00, 0x00, 0x6F, 0xFF, 0xFF, 0xFF, 0x00, 0x08, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x1D, 0x02, 0x00, 0x03, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

ov41_0224C050: ; 0x0224C050
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x01, 0x00, 0x0E, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00

ov41_0224C06C: ; 0x0224C06C
	.byte 0x04, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x80, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x60, 0x00, 0x00, 0x00
	.byte 0x00, 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x10, 0x00, 0x00, 0x00

