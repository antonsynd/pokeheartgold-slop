	.include "asm/macros.inc"
	.include "unk_0201010C.inc"
	.include "global.inc"
	.public FadeFunc_06
	.extern _020F5E2C
	.extern sub_0201164C
	.extern sub_0201169C

	.text
	thumb_func_start FadeFunc_06
FadeFunc_06: ; 0x02010230
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _02010252
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	ldr r1, _02010258 ; =_020F5E2C
	add r0, r4, #0
	bl sub_0201164C
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_02010252:
	bl sub_0201169C
	pop {r4, pc}
	.balign 4, 0
_02010258: .word _020F5E2C
	thumb_func_end FadeFunc_06

