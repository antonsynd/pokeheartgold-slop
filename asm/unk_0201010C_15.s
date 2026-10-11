	.include "asm/macros.inc"
	.include "unk_0201010C.inc"
	.include "global.inc"
	.public FadeFunc_21
	.extern _020F5DC8
	.extern sub_02011B5C
	.extern sub_02011B94

	.text
	thumb_func_start FadeFunc_21
FadeFunc_21: ; 0x02010508
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _02010528
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	ldr r1, _02010530 ; =_020F5DC8
	add r0, r4, #0
	bl sub_02011B5C
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_02010528:
	bl sub_02011B94
	pop {r4, pc}
	nop
_02010530: .word _020F5DC8
	thumb_func_end FadeFunc_21

