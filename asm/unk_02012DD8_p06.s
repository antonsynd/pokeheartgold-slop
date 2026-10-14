	.include "asm/macros.inc"
	.include "unk_02012DD8.inc"
	.include "global.inc"
	.public sub_020131F4

	.text

	.text
	thumb_func_start sub_020131F4
sub_020131F4: ; 0x020131F4
	cmp r1, #0
	ldr r1, _02013218 ; =0xFFFF1FFF
	bne _0201320A
	mov r3, #1
	lsl r3, r3, #0x1a
	ldr r2, [r3]
	lsl r0, r0, #0xd
	and r1, r2
	orr r0, r1
	str r0, [r3]
	bx lr
_0201320A:
	ldr r3, _0201321C ; =0x04001000
	lsl r0, r0, #0xd
	ldr r2, [r3]
	and r1, r2
	orr r0, r1
	str r0, [r3]
	bx lr
	.balign 4, 0
_02013218: .word 0xFFFF1FFF
_0201321C: .word 0x04001000
	thumb_func_end sub_020131F4

