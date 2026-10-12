	.include "asm/macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_0223AC48
	.extern ov59_0223B164

	.text

	.text
	thumb_func_start ov59_0223AC48
ov59_0223AC48: ; 0x0223AC48
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x40
	ldrh r0, [r0]
	cmp r0, #0
	beq _0223AC5A
	cmp r0, #1
	beq _0223AC90
	b _0223ACCA
_0223AC5A:
	add r0, r4, #0
	add r0, #0x36
	ldrb r0, [r0]
	cmp r0, #5
	bhs _0223AC82
	add r2, r4, #0
	add r2, #0x36
	mov r1, #0x39
_0223AC6A:
	add r0, r4, r0
	ldrsb r0, [r0, r1]
	cmp r0, #0
	bne _0223AC82
	ldrb r0, [r2]
	add r0, r0, #1
	strb r0, [r2]
	add r0, r4, #0
	add r0, #0x36
	ldrb r0, [r0]
	cmp r0, #5
	blo _0223AC6A
_0223AC82:
	add r0, r4, #0
	add r0, #0x40
	ldrh r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x40
	strh r1, [r0]
_0223AC90:
	add r0, r4, #0
	bl ov59_0223B164
	cmp r0, #0
	beq _0223ACCA
	add r0, r4, #0
	mov r1, #0
	add r0, #0x40
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x36
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x36
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x3e
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r4, #0
	add r0, #0x3e
	add r4, #0x3e
	strb r1, [r0]
	ldrb r0, [r4]
	cmp r0, #0
	bne _0223ACCA
	mov r0, #1
	pop {r4, pc}
_0223ACCA:
	mov r0, #5
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov59_0223AC48

