	.include "asm/macros.inc"
	.include "unk_0201010C.inc"
	.include "global.inc"
	.public FadeFunc_13
	.extern _020F5E68
	.extern sub_0201164C
	.extern sub_0201169C

	.text
	thumb_func_start FadeFunc_13
FadeFunc_13: ; 0x0201039C
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _020103BC
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	ldr r1, _020103C4 ; =_020F5E68
	add r0, r4, #0
	bl sub_0201164C
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_020103BC:
	bl sub_0201169C
	pop {r4, pc}
	nop
_020103C4: .word _020F5E68
	thumb_func_end FadeFunc_13

