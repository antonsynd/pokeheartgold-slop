	.include "asm/macros.inc"
	.include "overlay_57.inc"
	.include "global.inc"
	.public ov57_02239058
	.extern ov57_0223BD88
	.extern ov57_0223BD9C
	.extern ov57_0223BDB4

	.text

	.text
	thumb_func_start ov57_02239058
ov57_02239058: ; 0x02239058
	push {r3, r4, r5, r6, lr}
	sub sp, #0x4c
	add r4, r0, #0
	mov r0, #0x34
	bl SpriteSystem_Alloc
	add r2, sp, #0x2c
	ldr r5, _022390E8 ; =ov57_0223BDB4
	str r0, [r4, #8]
	ldmia r5!, {r0, r1}
	add r3, r2, #0
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r5!, {r0, r1}
	ldr r6, _022390EC ; =ov57_0223BD88
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
	ldr r0, [r4, #8]
	mov r3, #0x20
	bl SpriteSystem_Init
	ldr r3, _022390F0 ; =ov57_0223BD9C
	add r2, sp, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r4, #8]
	bl SpriteManager_New
	str r0, [r4, #0xc]
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	mov r2, #0x80
	bl SpriteSystem_InitSprites
	cmp r0, #0
	bne _022390C2
	bl GF_AssertFail
_022390C2:
	ldr r0, [r4, #8]
	ldr r1, [r4, #0xc]
	add r2, sp, #0
	bl SpriteSystem_InitManagerWithCapacities
	cmp r0, #0
	bne _022390D4
	bl GF_AssertFail
_022390D4:
	ldr r1, [r4, #0x14]
	mov r0, #0x34
	bl TouchscreenListMenuSpawner_Create
	mov r1, #0x5d
	lsl r1, r1, #2
	str r0, [r4, r1]
	add sp, #0x4c
	pop {r3, r4, r5, r6, pc}
	nop
_022390E8: .word ov57_0223BDB4
_022390EC: .word ov57_0223BD88
_022390F0: .word ov57_0223BD9C
	thumb_func_end ov57_02239058

