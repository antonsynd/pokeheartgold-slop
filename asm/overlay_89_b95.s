	.include "asm/macros.inc"
	.include "overlay_89.inc"
	.include "global.inc"
	.public ov89_0225C8BC
	.extern ov89_0225CE95

	.text

	.text
	thumb_func_start ov89_0225C8BC
ov89_0225C8BC: ; 0x0225C8BC
	ldr r2, _0225C8D4 ; =0x000001E7
	cmp r0, r2
	bne _0225C8CA
	cmp r1, #0
	ble _0225C8CA
	mov r0, #2
	bx lr
_0225C8CA:
	lsl r1, r0, #2
	ldr r0, _0225C8D8 ; =ov89_0225CE95
	ldrb r0, [r0, r1]
	bx lr
	nop
_0225C8D4: .word 0x000001E7
_0225C8D8: .word ov89_0225CE95
	thumb_func_end ov89_0225C8BC

