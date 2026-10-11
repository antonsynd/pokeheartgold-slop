	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_0223F038
	.public ov81_0224086C
	.public ov81_022408A0
	.public ov81_02240F18
	.public ov81_02241FEC
	.public ov81_0224218C
	.public ov81_02242F48
	.public ov81_02242F94
	.public ov81_02242FB0

	.text

	thumb_func_start ov81_0223F038
ov81_0223F038: ; 0x0223F038
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _0223F0B8 ; =0x00000468
	ldr r0, [r4, r0]
	lsl r0, r0, #2
	add r1, r4, r0
	mov r0, #0x36
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov81_02242F48
	ldr r0, _0223F0B8 ; =0x00000468
	ldr r0, [r4, r0]
	lsl r0, r0, #2
	add r1, r4, r0
	mov r0, #0x36
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #0
	bl ov81_02242FB0
	ldr r0, _0223F0B8 ; =0x00000468
	ldr r0, [r4, r0]
	lsl r0, r0, #2
	add r1, r4, r0
	mov r0, #0x36
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #1
	bl ov81_02242F94
	ldrb r1, [r4, #0x11]
	ldr r0, _0223F0B8 ; =0x00000468
	ldr r2, [r4, r0]
	lsl r1, r1, #1
	add r1, r4, r1
	sub r0, #0xa0
	strh r2, [r1, r0]
	ldrb r0, [r4, #0x11]
	add r0, r0, #1
	strb r0, [r4, #0x11]
	ldrb r0, [r4, #9]
	ldrb r5, [r4, #0x11]
	bl ov81_02240F18
	cmp r5, r0
	beq _0223F0AA
	add r0, r4, #0
	mov r1, #0
	add r2, r5, #1
	bl ov81_022408A0
	add r0, r4, #0
	mov r1, #0
	bl ov81_0224086C
	strb r0, [r4, #0x10]
_0223F0AA:
	add r0, r4, #0
	bl ov81_02241FEC
	add r0, r4, #0
	bl ov81_0224218C
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0223F0B8: .word 0x00000468
	thumb_func_end ov81_0223F038

