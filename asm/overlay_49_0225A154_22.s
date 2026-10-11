	.include "asm/macros.inc"
	.include "overlay_49_0225A154.inc"
	.include "global.inc"
	.public ov49_0225A428
	.public ov49_0225B89C
	.public ov49_0225B8F8
	.public ov49_0225B8FC
	.public ov49_0225B928
	.public ov49_0225B934

    .text

	thumb_func_start ov49_0225A428
ov49_0225A428: ; 0x0225A428
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r5, r0
	add r4, r1, #0
	add r6, r2, #0
	bl ov49_0225B8F8
	cmp r4, r0
	bne _0225A468
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov49_0225B8FC
	cmp r0, #1
	bne _0225A468
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov49_0225B934
	cmp r0, #0
	bne _0225A468
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov49_0225B928
	cmp r6, r0
	beq _0225A476
_0225A468:
	mov r0, #0x61
	lsl r0, r0, #2
	add r0, r5, r0
	add r1, r4, #0
	add r2, r6, #0
	bl ov49_0225B89C
_0225A476:
	pop {r4, r5, r6, pc}
	thumb_func_end ov49_0225A428

