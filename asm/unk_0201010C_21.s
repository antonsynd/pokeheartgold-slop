	.include "asm/macros.inc"
	.include "unk_0201010C.inc"
	.include "global.inc"
	.public FadeFunc_27
	.extern _020F5DA0
	.extern sub_02011D60
	.extern sub_02011D98

	.text
	thumb_func_start FadeFunc_27
FadeFunc_27: ; 0x02010610
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _02010630
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	ldr r1, _02010638 ; =_020F5DA0
	add r0, r4, #0
	bl sub_02011D60
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_02010630:
	bl sub_02011D98
	pop {r4, pc}
	nop
_02010638: .word _020F5DA0
	thumb_func_end FadeFunc_27

