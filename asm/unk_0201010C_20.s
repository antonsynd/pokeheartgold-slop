	.include "asm/macros.inc"
	.include "unk_0201010C.inc"
	.include "global.inc"
	.public FadeFunc_26
	.extern _020F5DA8
	.extern sub_02011D60
	.extern sub_02011D98

	.text
	thumb_func_start FadeFunc_26
FadeFunc_26: ; 0x020105E4
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _02010606
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	ldr r1, _0201060C ; =_020F5DA8
	add r0, r4, #0
	bl sub_02011D60
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_02010606:
	bl sub_02011D98
	pop {r4, pc}
	.balign 4, 0
_0201060C: .word _020F5DA8
	thumb_func_end FadeFunc_26

