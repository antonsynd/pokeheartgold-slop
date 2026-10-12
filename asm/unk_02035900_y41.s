	.include "asm/macros.inc"
	.include "unk_02035900.inc"
	.include "global.inc"
	.public sub_0203776C
	.extern sub_02037184
	.extern sub_0203769C

	.text
	thumb_func_start sub_0203776C
sub_0203776C: ; 0x0203776C
	push {r3, lr}
	bl sub_020357FC
	cmp r0, #0
	bne _02037786
	bl sub_0203769C
	cmp r0, #0
	bne _02037786
	mov r0, #2
	add r1, sp, #0
	bl sub_02037184
_02037786:
	bl sub_0203581C
	pop {r3, pc}
	thumb_func_end sub_0203776C

