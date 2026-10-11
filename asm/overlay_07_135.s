	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_0221F8B0
	.extern ov07_02234DE8

	.text

	.text
	thumb_func_start ov07_0221F8B0
ov07_0221F8B0: ; 0x0221F8B0
	cmp r0, #0x58
	bls _0221F8B8
	mov r0, #0
	bx lr
_0221F8B8:
	lsl r1, r0, #2
	ldr r0, _0221F8C0 ; =ov07_02234DE8
	ldr r0, [r0, r1]
	bx lr
	.balign 4, 0
_0221F8C0: .word ov07_02234DE8
	thumb_func_end ov07_0221F8B0

