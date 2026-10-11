	.include "asm/macros.inc"
	.include "unk_0201010C.inc"
	.include "global.inc"
	.public FadeFunc_18
	.extern _020F5DD8
	.extern sub_02011884
	.extern sub_020118BC

	.text
	thumb_func_start FadeFunc_18
FadeFunc_18: ; 0x02010484
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _020104A6
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	ldr r1, _020104AC ; =_020F5DD8
	add r0, r4, #0
	bl sub_02011884
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_020104A6:
	bl sub_020118BC
	pop {r4, pc}
	.balign 4, 0
_020104AC: .word _020F5DD8
	thumb_func_end FadeFunc_18

