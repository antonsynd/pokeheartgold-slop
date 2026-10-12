	.include "asm/macros.inc"
	.include "unk_02014DA0.inc"
	.include "global.inc"
	.public sub_02015510
	.extern _020F6078

	.public NNS_G3dGlb

	.text
	thumb_func_start sub_02015510
sub_02015510: ; 0x02015510
	ldr r2, _02015520 ; =_020F6078
	add r3, r0, #0
	ldmia r2!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r2]
	str r0, [r3]
	bx lr
	nop
_02015520: .word _020F6078
	thumb_func_end sub_02015510

