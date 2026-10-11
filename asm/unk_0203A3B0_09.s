	.include "asm/macros.inc"
	.include "unk_0203A3B0.inc"
	.include "global.inc"
	.public sub_0203A914
	.extern _021D4154
	.extern sub_0203A444

	.text
	thumb_func_start sub_0203A914
sub_0203A914: ; 0x0203A914
	push {r3, lr}
	ldr r0, _0203A92C ; =_021D4154
	ldr r0, [r0]
	cmp r0, #0
	beq _0203A928
	bl sub_0203A444
	ldr r0, _0203A92C ; =_021D4154
	mov r1, #0
	str r1, [r0]
_0203A928:
	pop {r3, pc}
	nop
_0203A92C: .word _021D4154
	thumb_func_end sub_0203A914

