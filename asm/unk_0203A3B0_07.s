	.include "asm/macros.inc"
	.include "unk_0203A3B0.inc"
	.include "global.inc"
	.public sub_0203A86C
	.extern _021D4154
	.extern sub_0203A700

	.text
	thumb_func_start sub_0203A86C
sub_0203A86C: ; 0x0203A86C
	push {r3, lr}
	ldr r0, _0203A87C ; =_021D4154
	ldr r0, [r0]
	cmp r0, #0
	beq _0203A87A
	bl sub_0203A700
_0203A87A:
	pop {r3, pc}
	.balign 4, 0
_0203A87C: .word _021D4154
	thumb_func_end sub_0203A86C

