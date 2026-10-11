	.include "asm/macros.inc"
	.include "unk_0203A3B0.inc"
	.include "global.inc"
	.public sub_0203A930
	.extern _021D4154
	.extern sub_0203A438

	.text
	thumb_func_start sub_0203A930
sub_0203A930: ; 0x0203A930
	push {r3, lr}
	add r1, r0, #0
	ldr r0, _0203A944 ; =_021D4154
	ldr r0, [r0]
	cmp r0, #0
	beq _0203A940
	bl sub_0203A438
_0203A940:
	pop {r3, pc}
	nop
_0203A944: .word _021D4154
	thumb_func_end sub_0203A930

