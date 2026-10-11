	.include "asm/macros.inc"
	.include "overlay_103.inc"
	.include "global.inc"
	.public ov103_021EDF88
	.public ov103_021EED0C
	.public ov103_021EED20
	.public ov103_021EED38

	.text

	thumb_func_start ov103_021EDF88
ov103_021EDF88: ; 0x021EDF88
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	add r4, r0, #0
	mov r0, #0x9d
	bl SpriteSystem_Alloc
	mov r1, #0x25
	lsl r1, r1, #4
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	bl SpriteManager_New
	mov r7, #0x95
	lsl r7, r7, #2
	add r2, sp, #0x2c
	ldr r3, _021EE01C ; =ov103_021EED38
	str r0, [r4, r7]
	ldmia r3!, {r0, r1}
	add r6, r2, #0
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	ldr r5, _021EE020 ; =ov103_021EED0C
	stmia r2!, {r0, r1}
	add r3, sp, #0x18
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	add r1, r6, #0
	str r0, [r3]
	sub r0, r7, #4
	ldr r0, [r4, r0]
	mov r3, #0x20
	bl SpriteSystem_Init
	ldr r3, _021EE024 ; =ov103_021EED20
	add r2, sp, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	sub r1, r7, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	mov r2, #7
	bl SpriteSystem_InitSprites
	sub r1, r7, #4
	ldr r0, [r4, r1]
	add r1, r1, #4
	ldr r1, [r4, r1]
	add r2, sp, #0
	bl SpriteSystem_InitManagerWithCapacities
	sub r0, r7, #4
	ldr r0, [r4, r0]
	bl SpriteSystem_GetRenderer
	mov r2, #2
	mov r1, #0
	lsl r2, r2, #0x14
	bl G2dRenderer_SetSubSurfaceCoords
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021EE01C: .word ov103_021EED38
_021EE020: .word ov103_021EED0C
_021EE024: .word ov103_021EED20
	thumb_func_end ov103_021EDF88

