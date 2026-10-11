	.include "asm/macros.inc"
	.include "overlay_49_02258800.inc"
	.include "global.inc"
	.public ov49_02258A90
	.extern ov49_02269628

    .text

	.text
	thumb_func_start ov49_02258A90
ov49_02258A90: ; 0x02258A90
	ldr r3, _02258AAC ; =ov49_02269628
	mov r2, #0
_02258A94:
	ldrb r1, [r3]
	cmp r0, r1
	bne _02258A9E
	mov r0, #1
	bx lr
_02258A9E:
	add r2, r2, #1
	add r3, r3, #1
	cmp r2, #4
	blo _02258A94
	mov r0, #0
	bx lr
	nop
_02258AAC: .word ov49_02269628
	thumb_func_end ov49_02258A90

