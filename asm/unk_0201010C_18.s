	.include "asm/macros.inc"
	.include "unk_0201010C.inc"
	.include "global.inc"
	.public FadeFunc_24
	.extern _020F5E20
	.extern sub_0201164C
	.extern sub_0201169C

	.text
	thumb_func_start FadeFunc_24
FadeFunc_24: ; 0x0201058C
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _020105AE
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	ldr r1, _020105B4 ; =_020F5E20
	add r0, r4, #0
	bl sub_0201164C
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_020105AE:
	bl sub_0201169C
	pop {r4, pc}
	.balign 4, 0
_020105B4: .word _020F5E20
	thumb_func_end FadeFunc_24

