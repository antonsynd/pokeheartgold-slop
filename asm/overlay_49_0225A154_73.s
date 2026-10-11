	.include "asm/macros.inc"
	.include "overlay_49_0225A154.inc"
	.include "global.inc"
	.public ov49_0225B8A8
	.public ov49_0225BFC4

    .text

	thumb_func_start ov49_0225B8A8
ov49_0225B8A8: ; 0x0225B8A8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	add r7, r3, #0
	cmp r4, #0x1b
	blo _0225B8BA
	bl GF_AssertFail
_0225B8BA:
	ldrb r0, [r5, #1]
	cmp r0, #2
	beq _0225B8C4
	bl GF_AssertFail
_0225B8C4:
	ldrb r0, [r5, #1]
	cmp r0, #2
	bne _0225B8DE
	mov r2, #0x53
	str r4, [sp]
	lsl r2, r2, #2
	add r0, r5, #0
	ldr r2, [r5, r2]
	add r0, #8
	add r1, r6, #0
	add r3, r7, #0
	bl ov49_0225BFC4
_0225B8DE:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov49_0225B8A8

