	.include "asm/macros.inc"
	.include "overlay_95.inc"
	.include "global.inc"
	.public ov95_021E7388
	.extern ov95_021E782C

	.text

	.text
	thumb_func_start ov95_021E7388
ov95_021E7388: ; 0x021E7388
	push {r4, r5, r6, r7, lr}
	sub sp, #0x3c
	ldr r4, _021E7400 ; =ov95_021E782C
	str r2, [sp]
	str r3, [sp, #4]
	add r5, r0, #0
	add r7, r1, #0
	add r3, sp, #8
	mov r2, #6
_021E739A:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021E739A
	ldr r0, [r4]
	cmp r5, #0
	str r0, [r3]
	ldr r6, [r5, #4]
	ldr r4, [r5, #8]
	bne _021E73B2
	bl GF_AssertFail
_021E73B2:
	cmp r6, #0
	bne _021E73BA
	bl GF_AssertFail
_021E73BA:
	cmp r4, #0
	bne _021E73C2
	bl GF_AssertFail
_021E73C2:
	mov r1, #0x80
	add r0, sp, #8
	strh r1, [r0]
	mov r1, #0x48
	strh r1, [r0, #2]
	mov r1, #1
	strh r1, [r0, #6]
	ldr r0, [sp]
	add r1, r4, #0
	str r0, [sp, #0x20]
	ldr r0, [sp, #4]
	add r2, sp, #8
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x50]
	str r7, [sp, #0x1c]
	str r0, [sp, #0x28]
	add r0, r6, #0
	bl SpriteSystem_NewSprite
	add r4, r0, #0
	mov r1, #1
	bl ManagedSprite_SetAnimateFlag
	add r0, r4, #0
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	str r4, [r5, #0x10]
	add sp, #0x3c
	pop {r4, r5, r6, r7, pc}
	nop
_021E7400: .word ov95_021E782C
	thumb_func_end ov95_021E7388

