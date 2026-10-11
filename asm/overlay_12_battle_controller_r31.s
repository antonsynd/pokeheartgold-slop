	.include "asm/macros.inc"
	.include "overlay_12_battle_controller.inc"
	.include "global.inc"
	.public ov12_0226343C
	.extern ov12_02262240
	.extern ov12_022643C8

	.text

	.text
	thumb_func_start ov12_0226343C
ov12_0226343C: ; 0x0226343C
	push {r4, r5, r6, lr}
	sub sp, #0x68
	add r4, r3, #0
	mov r3, #0
	str r3, [sp]
	ldr r6, [sp, #0x78]
	str r4, [sp, #4]
	str r6, [sp, #8]
	str r2, [sp, #0xc]
	add r2, sp, #0x10
	add r5, r0, #0
	bl ov12_022643C8
	mov r0, #0x58
	str r0, [sp]
	add r0, r5, #0
	mov r1, #1
	add r2, r4, #0
	add r3, sp, #0x10
	bl ov12_02262240
	add sp, #0x68
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov12_0226343C

