	.include "asm/macros.inc"
	.include "unk_0201010C.inc"
	.include "global.inc"
	.public FadeFunc_14
	.extern _020F5E80
	.extern _020F5E8C
	.extern sub_020116EC
	.extern sub_02011744

	.text
	thumb_func_start FadeFunc_14
FadeFunc_14: ; 0x020103C8
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _020103EC
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	ldr r1, _020103F4 ; =_020F5E80
	ldr r2, _020103F8 ; =_020F5E8C
	add r0, r4, #0
	bl sub_020116EC
	mov r0, #1
	str r0, [r4, #0x28]
	mov r0, #0
	str r0, [r4, #0x2c]
	pop {r4, pc}
_020103EC:
	bl sub_02011744
	pop {r4, pc}
	nop
_020103F4: .word _020F5E80
_020103F8: .word _020F5E8C
	thumb_func_end FadeFunc_14

