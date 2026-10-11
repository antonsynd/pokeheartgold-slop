	.include "asm/macros.inc"
	.include "overlay_49_0225A154.inc"
	.include "global.inc"
	.public ov49_0225B24C
	.public ov49_0225B284
	.public ov49_0225B388
	.public ov49_0225B3A8

    .text

	thumb_func_start ov49_0225B284
ov49_0225B284: ; 0x0225B284
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	bl sub_020392D8
	add r4, r0, #0
	ldr r0, [r4]
	ldr r1, [r4, #4]
	bl ov45_0222D7CC
	add r7, r0, #0
	mov r0, #2
	str r0, [sp]
	ldr r1, [r4]
	add r0, r5, #0
	mov r2, #5
	mov r3, #0
	bl ov49_0225B3A8
	add r0, r5, #0
	mov r1, #2
	add r2, r7, #0
	bl ov49_0225B388
	add r1, r0, #0
	add r0, r6, #0
	bl ov49_0225B24C
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov49_0225B284

