	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_0221F710
	.extern ov07_0221C470
	.extern ov07_02221F80

	.text

	.text
	thumb_func_start ov07_0221F710
ov07_0221F710: ; 0x0221F710
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r0, #0
	ldr r1, [r5, #0x18]
	add r1, r1, #4
	str r1, [r5, #0x18]
	ldr r4, [r1]
	add r1, r1, #4
	str r1, [r5, #0x18]
	ldr r7, [r1]
	add r1, r1, #4
	str r1, [r5, #0x18]
	bl ov07_0221C470
	add r6, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0
	bl ov07_02221F80
	add r1, sp, #0
	strh r0, [r1]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #1
	bl ov07_02221F80
	add r2, sp, #0
	strh r0, [r2, #2]
	mov r1, #0
	strh r1, [r2, #4]
	strh r1, [r2, #6]
	mov r0, #0x64
	str r0, [sp, #8]
	mov r0, #1
	str r0, [sp, #0x10]
	str r0, [sp, #0x2c]
	add r0, r5, #0
	ldr r3, _0221F7C0 ; =0x00001388
	str r1, [sp, #0xc]
	str r1, [sp, #0x30]
	add r2, sp, #0
	add r0, #0x18
_0221F766:
	ldr r6, [r5, #0x18]
	add r1, r1, #1
	ldr r6, [r6]
	add r6, r6, r3
	str r6, [r2, #0x14]
	ldr r6, [r0]
	add r2, r2, #4
	add r6, r6, #4
	str r6, [r0]
	cmp r1, #6
	blt _0221F766
	mov r0, #0x41
	lsl r0, r0, #2
	add r6, sp, #0
	add r3, r5, r0
	mov r2, #6
_0221F786:
	ldmia r6!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0221F786
	ldr r0, [r6]
	lsl r1, r4, #2
	str r0, [r3]
	add r0, r5, #0
	add r0, #0xc0
	ldr r0, [r0]
	add r1, r5, r1
	add r0, #0xac
	add r1, #0xcc
	ldr r0, [r0]
	ldr r1, [r1]
	add r2, sp, #0
	bl SpriteSystem_NewSprite
	add r5, #0xdc
	lsl r4, r7, #2
	add r6, r0, #0
	ldr r0, [r5, r4]
	cmp r0, #0
	beq _0221F7BA
	bl GF_AssertFail
_0221F7BA:
	str r6, [r5, r4]
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0221F7C0: .word 0x00001388
	thumb_func_end ov07_0221F710

