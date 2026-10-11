	.include "asm/macros.inc"
	.include "unk_0201010C.inc"
	.include "global.inc"
	.public FadeFunc_38
	.extern _020F5DFC
	.extern sub_0201164C
	.extern sub_0201169C

	.text
	thumb_func_start FadeFunc_38
FadeFunc_38: ; 0x020108C4
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _020108E6
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	ldr r1, _020108EC ; =_020F5DFC
	add r0, r4, #0
	bl sub_0201164C
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_020108E6:
	bl sub_0201169C
	pop {r4, pc}
	.balign 4, 0
_020108EC: .word _020F5DFC
	thumb_func_end FadeFunc_38

