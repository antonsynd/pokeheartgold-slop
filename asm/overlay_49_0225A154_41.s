	.include "asm/macros.inc"
	.include "overlay_49_0225A154.inc"
	.include "global.inc"
	.public ov49_0225AA70

    .text

	thumb_func_start ov49_0225AA70
ov49_0225AA70: ; 0x0225AA70
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	ldr r0, [r7, #0x34]
	bl ov45_0222A394
	str r0, [sp, #8]
	mov r4, #0
_0225AA80:
	add r0, r4, #0
	bl ov45_0222F274
	add r6, r0, #0
	cmp r6, #1
	bne _0225AA9E
	add r0, r4, #0
	bl ov45_0222F294
	cmp r0, #0
	bne _0225AA9A
	mov r5, #1
	b _0225AAA0
_0225AA9A:
	mov r5, #0
	b _0225AAA0
_0225AA9E:
	mov r5, #0
_0225AAA0:
	add r0, r4, #0
	bl ov45_0222F314
	add r2, r0, #0
	ldr r0, [sp, #8]
	str r5, [sp]
	str r0, [sp, #4]
	mov r0, #0xf9
	lsl r0, r0, #2
	ldr r0, [r7, r0]
	add r1, r4, #0
	add r3, r6, #0
	bl ov49_0225E8C4
	add r4, r4, #1
	cmp r4, #3
	blt _0225AA80
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov49_0225AA70

