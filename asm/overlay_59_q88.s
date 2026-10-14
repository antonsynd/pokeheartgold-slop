	.include "macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_0223A7FC

	.text

	.text
	thumb_func_start ov59_0223A7FC
ov59_0223A7FC: ; 0x0223A7FC
	cmp r1, #0
	bne _0223A85E
	add r1, r0, #0
	add r1, #0x4a
	ldrb r2, [r1]
	add r1, r0, #0
	add r1, #0x4b
	strb r2, [r1]
	add r1, r0, #0
	mov r2, #1
	add r1, #0x49
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0x4a
	ldrb r1, [r1]
	cmp r1, #3
	bhi _0223A856
	add r3, r1, r1
	add r3, pc
	ldrh r3, [r3, #6]
	lsl r3, r3, #0x10
	asr r3, r3, #0x10
	add pc, r3
_0223A82A: ; jump table
	.short _0223A856 - _0223A82A - 2 ; case 0
	.short _0223A832 - _0223A82A - 2 ; case 1
	.short _0223A832 - _0223A82A - 2 ; case 2
	.short _0223A84E - _0223A82A - 2 ; case 3
_0223A832:
	add r3, r0, #0
	add r3, #0x4c
	ldrb r3, [r3]
	cmp r1, r3
	beq _0223A848
	sub r1, r1, #1
	cmp r1, r3
	beq _0223A848
	add r0, #0x4a
	strb r2, [r0]
	bx lr
_0223A848:
	add r0, #0x4a
	strb r3, [r0]
	bx lr
_0223A84E:
	mov r1, #2
	add r0, #0x4a
	strb r1, [r0]
	bx lr
_0223A856:
	mov r1, #0
	add r0, #0x4a
	strb r1, [r0]
	bx lr
_0223A85E:
	add r1, r0, #0
	add r1, #0x4a
	ldrb r2, [r1]
	add r1, r0, #0
	add r1, #0x4c
	strb r2, [r1]
	add r1, r0, #0
	mov r2, #0
	add r1, #0x49
	strb r2, [r1]
	add r1, r0, #0
	add r1, #0x4a
	ldrb r1, [r1]
	cmp r1, #0
	beq _0223A886
	cmp r1, #1
	beq _0223A89E
	cmp r1, #2
	beq _0223A8C2
	b _0223A8DA
_0223A886:
	add r1, r0, #0
	add r1, #0x4b
	ldrb r1, [r1]
	cmp r1, #1
	bls _0223A898
	mov r1, #1
	add r0, #0x4a
	strb r1, [r0]
	bx lr
_0223A898:
	add r0, #0x4a
	strb r1, [r0]
	bx lr
_0223A89E:
	add r1, r0, #0
	add r1, #0x4b
	ldrb r1, [r1]
	cmp r1, #0
	bne _0223A8B0
	mov r1, #1
	add r0, #0x4a
	strb r1, [r0]
	bx lr
_0223A8B0:
	cmp r1, #3
	bne _0223A8BC
	mov r1, #2
	add r0, #0x4a
	strb r1, [r0]
	bx lr
_0223A8BC:
	add r0, #0x4a
	strb r1, [r0]
	bx lr
_0223A8C2:
	add r1, r0, #0
	add r1, #0x4b
	ldrb r1, [r1]
	cmp r1, #2
	bhs _0223A8D4
	mov r1, #2
	add r0, #0x4a
	strb r1, [r0]
	bx lr
_0223A8D4:
	add r0, #0x4a
	strb r1, [r0]
	bx lr
_0223A8DA:
	add r0, #0x4a
	strb r2, [r0]
	bx lr
	thumb_func_end ov59_0223A7FC

