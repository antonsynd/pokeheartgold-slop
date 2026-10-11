	.include "asm/macros.inc"
	.include "overlay_49_0225A154.inc"
	.include "global.inc"
	.public ov49_0225B4E4
	.public ov49_0225BB10
	.public ov49_0225BBA8
	.public ov49_0225C8A8

    .text

	thumb_func_start ov49_0225B4E4
ov49_0225B4E4: ; 0x0225B4E4
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x45
	lsl r0, r0, #2
	add r0, r5, r0
	add r6, r1, #0
	add r4, r2, #0
	bl ov49_0225C8A8
	add r0, r5, #0
	add r0, #8
	add r1, r6, #0
	add r2, r4, #0
	bl ov49_0225BBA8
	add r0, r5, #0
	add r1, r4, #0
	bl ov49_0225BB10
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl NARC_Delete
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov49_0225B4E4

