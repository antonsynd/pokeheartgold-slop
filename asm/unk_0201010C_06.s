	.include "asm/macros.inc"
	.include "unk_0201010C.inc"
	.include "global.inc"
	.public FadeFunc_12
	.extern _020F5E5C
	.extern sub_0201164C
	.extern sub_0201169C

	.text
	thumb_func_start FadeFunc_12
FadeFunc_12: ; 0x02010370
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _02010392
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	ldr r1, _02010398 ; =_020F5E5C
	add r0, r4, #0
	bl sub_0201164C
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_02010392:
	bl sub_0201169C
	pop {r4, pc}
	.balign 4, 0
_02010398: .word _020F5E5C
	thumb_func_end FadeFunc_12

