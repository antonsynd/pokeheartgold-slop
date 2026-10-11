	.include "asm/macros.inc"
	.include "unk_02054648.inc"
	.include "global.inc"
	.public sub_0205489C
	.extern _020FC604
	.extern _020FC614

	.text
	thumb_func_start sub_0205489C
sub_0205489C: ; 0x0205489C
	push {r3, lr}
	cmp r1, #0
	bne _020548A8
	ldr r1, _020548B8 ; =_020FC604
	str r1, [r0]
	pop {r3, pc}
_020548A8:
	cmp r1, #1
	bne _020548B2
	ldr r1, _020548BC ; =_020FC614
	str r1, [r0]
	pop {r3, pc}
_020548B2:
	bl GF_AssertFail
	pop {r3, pc}
	.balign 4, 0
_020548B8: .word _020FC604
_020548BC: .word _020FC614
	thumb_func_end sub_0205489C

