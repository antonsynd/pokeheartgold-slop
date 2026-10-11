	.include "asm/macros.inc"
	.include "overlay_49_0225A154.inc"
	.include "global.inc"
	.public ov49_0225B24C
	.public ov49_0225B2C0
	.public ov49_0225B388
	.public ov49_0225B3A8

    .text

	thumb_func_start ov49_0225B2C0
ov49_0225B2C0: ; 0x0225B2C0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, r2, #0
	add r4, r1, #0
	bl ov45_0222E7FC
	add r1, r0, #0
	mov r0, #2
	str r0, [sp]
	add r0, r4, #0
	mov r2, #5
	mov r3, #0
	bl ov49_0225B3A8
	add r0, r4, #0
	mov r1, #2
	mov r2, #0x20
	bl ov49_0225B388
	add r1, r0, #0
	add r0, r5, #0
	bl ov49_0225B24C
	pop {r3, r4, r5, pc}
	thumb_func_end ov49_0225B2C0

