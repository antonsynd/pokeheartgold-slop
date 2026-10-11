	.include "asm/macros.inc"
	.include "overlay_49_0225A154.inc"
	.include "global.inc"
	.public ov49_0225A490
	.extern ov49_0225B8F8
	.extern ov49_0225B8FC
	.extern ov49_0225BEA0

    .text

	.text
	thumb_func_start ov49_0225A490
ov49_0225A490: ; 0x0225A490
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov49_0225B8FC
	cmp r0, #0
	beq _0225A4CC
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r4, r0
	bl ov49_0225B8F8
	add r1, r0, #0
	ldr r0, [r4, #0x34]
	bl ov45_0222A578
	mov r1, #0x61
	lsl r1, r1, #2
	str r0, [sp]
	add r0, r4, r1
	add r1, #8
	add r1, r4, r1
	add r4, #0x3c
	add r2, r4, #0
	mov r3, #0x77
	bl ov49_0225BEA0
_0225A4CC:
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov49_0225A490

