	.include "asm/macros.inc"
	.include "overlay_49_02267F94.inc"
	.include "global.inc"
	.public ov49_022685F8
	.extern ov49_02268640
	.extern ov49_0226A7D8

    .text

	.text
	thumb_func_start ov49_022685F8
ov49_022685F8: ; 0x022685F8
	ldrb r2, [r0, #4]
	ldr r3, _02268618 ; =ov49_02268640
	lsl r1, r1, #1
	strb r2, [r0, #0x1c]
	ldrb r2, [r0, #5]
	strb r2, [r0, #0x1d]
	ldrb r2, [r0, #6]
	strb r2, [r0, #0x1e]
	ldrb r2, [r0, #7]
	strb r2, [r0, #0x1f]
	mov r2, #0
	str r2, [r0, #0x4c]
	ldr r2, _0226861C ; =ov49_0226A7D8
	add r0, #0x34
	add r1, r2, r1
	bx r3
	.balign 4, 0
_02268618: .word ov49_02268640
_0226861C: .word ov49_0226A7D8
	thumb_func_end ov49_022685F8

