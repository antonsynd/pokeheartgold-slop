	.include "asm/macros.inc"
	.include "overlay_49_0225A154.inc"
	.include "global.inc"
	.public ov49_0225B9AC
	.public ov49_0225BA20
	.public ov49_0225C970

    .text

	thumb_func_start ov49_0225B9AC
ov49_0225B9AC: ; 0x0225B9AC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	ldrb r0, [r5, #1]
	add r4, r1, #0
	add r7, r2, #0
	add r6, r3, #0
	cmp r0, #1
	beq _0225B9C8
	add r0, #0xfd
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #1
	bhi _0225B9D0
_0225B9C8:
	add r0, r5, #0
	add r1, r4, #0
	bl ov49_0225BA20
_0225B9D0:
	mov r0, #0x53
	lsl r0, r0, #2
	ldr r1, [r5, r0]
	sub r0, #0x38
	str r1, [sp]
	ldr r3, [sp, #0x20]
	add r0, r5, r0
	add r1, r4, #0
	add r2, r7, #0
	str r6, [sp, #4]
	bl ov49_0225C970
	mov r0, #1
	strb r0, [r5, #1]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov49_0225B9AC

