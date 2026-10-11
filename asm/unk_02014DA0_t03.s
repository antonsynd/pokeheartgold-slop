	.include "asm/macros.inc"
	.include "unk_02014DA0.inc"
	.include "global.inc"
	.public sub_02014F84
	.extern _021D10A8
	.extern sub_02014EBC

	.public NNS_G3dGlb

	.text
	thumb_func_start sub_02014F84
sub_02014F84: ; 0x02014F84
	push {r3, r4, r5, lr}
	ldr r5, _02014FA0 ; =_021D10A8
	mov r4, #0
_02014F8A:
	ldr r0, [r5]
	cmp r0, #0
	beq _02014F94
	bl sub_02014EBC
_02014F94:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x10
	blt _02014F8A
	pop {r3, r4, r5, pc}
	nop
_02014FA0: .word _021D10A8
	thumb_func_end sub_02014F84

