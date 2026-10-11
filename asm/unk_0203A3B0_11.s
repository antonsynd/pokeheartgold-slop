	.include "asm/macros.inc"
	.include "unk_0203A3B0.inc"
	.include "global.inc"
	.public sub_0203A948
	.extern _021D4154
	.extern sub_0203A478

	.text
	thumb_func_start sub_0203A948
sub_0203A948: ; 0x0203A948
	push {r3, lr}
	add r3, r0, #0
	ldr r0, _0203A960 ; =_021D4154
	add r2, r1, #0
	ldr r0, [r0]
	cmp r0, #0
	beq _0203A95C
	add r1, r3, #0
	bl sub_0203A478
_0203A95C:
	pop {r3, pc}
	nop
_0203A960: .word _021D4154
	thumb_func_end sub_0203A948

