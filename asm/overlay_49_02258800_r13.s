	.include "asm/macros.inc"
	.include "overlay_49_02258800.inc"
	.include "global.inc"
	.public ov49_02258A70
	.extern ov49_0226962C

    .text

	.text
	thumb_func_start ov49_02258A70
ov49_02258A70: ; 0x02258A70
	ldr r3, _02258A8C ; =ov49_0226962C
	mov r2, #0
_02258A74:
	ldrb r1, [r3]
	cmp r0, r1
	bne _02258A7E
	mov r0, #1
	bx lr
_02258A7E:
	add r2, r2, #1
	add r3, r3, #1
	cmp r2, #7
	blo _02258A74
	mov r0, #0
	bx lr
	nop
_02258A8C: .word ov49_0226962C
	thumb_func_end ov49_02258A70

