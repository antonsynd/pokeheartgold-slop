	.include "asm/macros.inc"
	.include "overlay_89.inc"
	.include "global.inc"
	.public ov89_0225C88C
	.extern ov89_0225CE94

	.text

	.text
	thumb_func_start ov89_0225C88C
ov89_0225C88C: ; 0x0225C88C
	ldr r3, _0225C8B0 ; =0x000001E7
	cmp r0, r3
	bne _0225C89A
	cmp r1, #0
	ble _0225C89A
	mov r0, #0
	bx lr
_0225C89A:
	ldr r1, _0225C8B4 ; =0x000001ED
	cmp r0, r1
	bne _0225C8A8
	cmp r2, #0
	bne _0225C8A8
	mov r0, #0
	bx lr
_0225C8A8:
	lsl r1, r0, #2
	ldr r0, _0225C8B8 ; =ov89_0225CE94
	ldrb r0, [r0, r1]
	bx lr
	.balign 4, 0
_0225C8B0: .word 0x000001E7
_0225C8B4: .word 0x000001ED
_0225C8B8: .word ov89_0225CE94
	thumb_func_end ov89_0225C88C

