	.include "asm/macros.inc"
	.include "overlay_49_0225A154.inc"
	.include "global.inc"
	.public ov49_0225B9F0
	.public ov49_0225BA20
	.public ov49_0225CA30

    .text

	thumb_func_start ov49_0225B9F0
ov49_0225B9F0: ; 0x0225B9F0
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r2, #0
	ldrb r2, [r5, #1]
	add r6, r1, #0
	add r7, r3, #0
	cmp r2, #3
	bne _0225BA04
	bl ov49_0225BA20
_0225BA04:
	mov r3, #0x45
	lsl r3, r3, #2
	add r0, r5, r3
	str r4, [sp]
	add r3, #0x38
	ldr r3, [r5, r3]
	add r1, r6, #0
	add r2, r7, #0
	bl ov49_0225CA30
	mov r0, #3
	strb r0, [r5, #1]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov49_0225B9F0

