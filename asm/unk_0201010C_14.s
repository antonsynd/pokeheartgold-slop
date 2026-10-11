	.include "asm/macros.inc"
	.include "unk_0201010C.inc"
	.include "global.inc"
	.public FadeFunc_20
	.extern _020F5DD0
	.extern sub_02011B5C
	.extern sub_02011B94

	.text
	thumb_func_start FadeFunc_20
FadeFunc_20: ; 0x020104DC
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _020104FE
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	ldr r1, _02010504 ; =_020F5DD0
	add r0, r4, #0
	bl sub_02011B5C
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_020104FE:
	bl sub_02011B94
	pop {r4, pc}
	.balign 4, 0
_02010504: .word _020F5DD0
	thumb_func_end FadeFunc_20

