	.include "asm/macros.inc"
	.include "unk_0201010C.inc"
	.include "global.inc"
	.public FadeFunc_37
	.extern _020F5EE0
	.extern sub_02011884
	.extern sub_020118BC

	.text
	thumb_func_start FadeFunc_37
FadeFunc_37: ; 0x02010898
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _020108B8
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	ldr r1, _020108C0 ; =_020F5EE0
	add r0, r4, #0
	bl sub_02011884
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_020108B8:
	bl sub_020118BC
	pop {r4, pc}
	nop
_020108C0: .word _020F5EE0
	thumb_func_end FadeFunc_37

