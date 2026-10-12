	.include "asm/macros.inc"
	.include "unk_02014DA0.inc"
	.include "global.inc"
	.public sub_02015494
	.extern _021D10A0

	.public NNS_G3dGlb

	.text
	thumb_func_start sub_02015494
sub_02015494: ; 0x02015494
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _020154AC ; =_021D10A0
	str r3, [r0, #4]
	ldr r0, [r4]
	bl SPL_CreateWithInitialize
	ldr r1, _020154AC ; =_021D10A0
	mov r2, #0
	str r2, [r1, #4]
	str r0, [r4, #8]
	pop {r4, pc}
	.balign 4, 0
_020154AC: .word _021D10A0
	thumb_func_end sub_02015494

