	.include "asm/macros.inc"
	.include "unk_0201010C.inc"
	.include "global.inc"
	.public FadeFunc_23
	.extern _020F5E14
	.extern sub_0201164C
	.extern sub_0201169C

	.text
	thumb_func_start FadeFunc_23
FadeFunc_23: ; 0x02010560
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _02010580
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	ldr r1, _02010588 ; =_020F5E14
	add r0, r4, #0
	bl sub_0201164C
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_02010580:
	bl sub_0201169C
	pop {r4, pc}
	nop
_02010588: .word _020F5E14
	thumb_func_end FadeFunc_23

