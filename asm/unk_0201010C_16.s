	.include "asm/macros.inc"
	.include "unk_0201010C.inc"
	.include "global.inc"
	.public FadeFunc_22
	.extern _020F5E08
	.extern sub_0201164C
	.extern sub_0201169C

	.text
	thumb_func_start FadeFunc_22
FadeFunc_22: ; 0x02010534
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _02010556
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	ldr r1, _0201055C ; =_020F5E08
	add r0, r4, #0
	bl sub_0201164C
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_02010556:
	bl sub_0201169C
	pop {r4, pc}
	.balign 4, 0
_0201055C: .word _020F5E08
	thumb_func_end FadeFunc_22

