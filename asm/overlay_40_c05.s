	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222BC68
	.extern ov40_02244C54
	.extern ov40_02244C68
	.extern ov40_02244C80

	.text

	.text
	thumb_func_start ov40_0222BC68
ov40_0222BC68: ; 0x0222BC68
	push {r3, r4, r5, r6, lr}
	sub sp, #0x4c
	add r4, r0, #0
	mov r0, #0x6d
	bl SpriteSystem_Alloc
	add r2, sp, #0x2c
	ldr r5, _0222BCF8 ; =ov40_02244C80
	str r0, [r4, #0x18]
	ldmia r5!, {r0, r1}
	add r3, r2, #0
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	ldr r6, _0222BCFC ; =ov40_02244C54
	stmia r2!, {r0, r1}
	add r5, sp, #0x18
	ldmia r6!, {r0, r1}
	add r2, r5, #0
	stmia r5!, {r0, r1}
	ldmia r6!, {r0, r1}
	stmia r5!, {r0, r1}
	ldr r0, [r6]
	add r1, r3, #0
	str r0, [r5]
	ldr r0, [r4, #0x18]
	mov r3, #0x20
	bl SpriteSystem_Init
	ldr r3, _0222BD00 ; =ov40_02244C68
	add r2, sp, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r4, #0x18]
	bl SpriteManager_New
	str r0, [r4, #0x1c]
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	mov r2, #0xc0
	bl SpriteSystem_InitSprites
	cmp r0, #0
	bne _0222BCD2
	bl GF_AssertFail
_0222BCD2:
	ldr r0, [r4, #0x18]
	ldr r1, [r4, #0x1c]
	add r2, sp, #0
	bl SpriteSystem_InitManagerWithCapacities
	cmp r0, #0
	bne _0222BCE4
	bl GF_AssertFail
_0222BCE4:
	ldr r0, [r4, #0x18]
	bl SpriteSystem_GetRenderer
	mov r2, #1
	mov r1, #0
	lsl r2, r2, #0x14
	bl G2dRenderer_SetSubSurfaceCoords
	add sp, #0x4c
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_0222BCF8: .word ov40_02244C80
_0222BCFC: .word ov40_02244C54
_0222BD00: .word ov40_02244C68
	thumb_func_end ov40_0222BC68

