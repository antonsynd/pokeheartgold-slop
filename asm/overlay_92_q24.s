	.include "macros.inc"
	.include "overlay_92.inc"
	.include "global.inc"
	.public ov92_0225D7CC
	.extern ov92_022638C0
	.extern ov92_022638D4
	.extern ov92_022638EC

	.text

	.text
	thumb_func_start ov92_0225D7CC
ov92_0225D7CC: ; 0x0225D7CC
	push {r3, r4, r5, r6, lr}
	sub sp, #0x4c
	add r4, r0, #0
	mov r0, #0x71
	bl SpriteSystem_Alloc
	add r2, sp, #0x2c
	ldr r5, _0225D85C ; =ov92_022638EC
	str r0, [r4, #0x50]
	ldmia r5!, {r0, r1}
	add r3, r2, #0
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	ldr r6, _0225D860 ; =ov92_022638C0
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
	ldr r0, [r4, #0x50]
	mov r3, #0x20
	bl SpriteSystem_Init
	ldr r3, _0225D864 ; =ov92_022638D4
	add r2, sp, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r4, #0x50]
	bl SpriteManager_New
	str r0, [r4, #0x54]
	ldr r0, [r4, #0x50]
	ldr r1, [r4, #0x54]
	mov r2, #0xff
	bl SpriteSystem_InitSprites
	cmp r0, #0
	bne _0225D836
	bl GF_AssertFail
_0225D836:
	ldr r0, [r4, #0x50]
	ldr r1, [r4, #0x54]
	add r2, sp, #0
	bl SpriteSystem_InitManagerWithCapacities
	cmp r0, #0
	bne _0225D848
	bl GF_AssertFail
_0225D848:
	ldr r0, [r4, #0x50]
	bl SpriteSystem_GetRenderer
	mov r2, #1
	mov r1, #0
	lsl r2, r2, #0x14
	bl G2dRenderer_SetSubSurfaceCoords
	add sp, #0x4c
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_0225D85C: .word ov92_022638EC
_0225D860: .word ov92_022638C0
_0225D864: .word ov92_022638D4
	thumb_func_end ov92_0225D7CC

