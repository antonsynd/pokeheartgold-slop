	.include "asm/macros.inc"
	.include "unk_0201010C.inc"
	.include "global.inc"
	.public FadeFunc_07
	.extern _020F5E38
	.extern sub_0201164C
	.extern sub_0201169C

	.text
	thumb_func_start FadeFunc_07
FadeFunc_07: ; 0x0201025C
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0201027C
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	ldr r1, _02010284 ; =_020F5E38
	add r0, r4, #0
	bl sub_0201164C
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0201027C:
	bl sub_0201169C
	pop {r4, pc}
	nop
_02010284: .word _020F5E38
	thumb_func_end FadeFunc_07

