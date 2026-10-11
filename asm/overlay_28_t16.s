	.include "asm/macros.inc"
	.include "overlay_28.inc"
	.include "global.inc"
	.public ov28_0225DA1C

	.text

	.text
	thumb_func_start ov28_0225DA1C
ov28_0225DA1C: ; 0x0225DA1C
	push {r4, r5, r6, lr}
	sub sp, #0x30
	add r5, r3, #0
	ldr r3, [r0, #0x24]
	lsl r6, r1, #2
	str r3, [sp]
	str r2, [sp, #4]
	ldrb r2, [r5]
	lsl r2, r2, #0xc
	str r2, [sp, #8]
	ldrb r2, [r5, #1]
	lsl r3, r2, #0xc
	mov r2, #1
	lsl r2, r2, #0x14
	add r3, r3, r2
	lsr r2, r2, #8
	str r3, [sp, #0xc]
	mov r3, #0
	str r3, [sp, #0x10]
	str r2, [sp, #0x14]
	str r2, [sp, #0x18]
	str r2, [sp, #0x1c]
	add r2, sp, #0
	strh r3, [r2, #0x20]
	ldrb r2, [r5, #2]
	str r2, [sp, #0x24]
	mov r2, #2
	str r2, [sp, #0x28]
	mov r2, #8
	str r2, [sp, #0x2c]
	mov r2, #6
	lsl r2, r2, #6
	add r4, r0, r2
	add r0, sp, #0
	bl Sprite_CreateAffine
	str r0, [r4, r6]
	ldrb r1, [r5, #3]
	ldr r0, [r4, r6]
	bl Sprite_SetAnimCtrlSeq
	add sp, #0x30
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov28_0225DA1C

