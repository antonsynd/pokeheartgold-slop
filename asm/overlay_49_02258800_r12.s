	.include "asm/macros.inc"
	.include "overlay_49_02258800.inc"
	.include "global.inc"
	.public ov49_02258A50
	.extern _02269624

    .text

	.text
	thumb_func_start ov49_02258A50
ov49_02258A50: ; 0x02258A50
	ldr r3, _02258A6C ; =_02269624
	mov r2, #0
_02258A54:
	ldrb r1, [r3]
	cmp r0, r1
	bne _02258A5E
	mov r0, #1
	bx lr
_02258A5E:
	add r2, r2, #1
	add r3, r3, #1
	cmp r2, #3
	blo _02258A54
	mov r0, #0
	bx lr
	nop
_02258A6C: .word _02269624
	thumb_func_end ov49_02258A50

