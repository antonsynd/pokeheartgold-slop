	.include "asm/macros.inc"
	.include "unk_0201010C.inc"
	.include "global.inc"
	.public FadeFunc_15
	.extern _020F5EA4
	.extern _020F5EB0
	.extern sub_020116EC
	.extern sub_02011744

	.text
	thumb_func_start FadeFunc_15
FadeFunc_15: ; 0x020103FC
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0xc]
	cmp r1, #0
	bne _0201041E
	ldrh r0, [r4, #0x24]
	bl sub_0200FCDC
	ldr r1, _02010424 ; =_020F5EA4
	ldr r2, _02010428 ; =_020F5EB0
	add r0, r4, #0
	bl sub_020116EC
	mov r0, #0
	str r0, [r4, #0x28]
	str r0, [r4, #0x2c]
	pop {r4, pc}
_0201041E:
	bl sub_02011744
	pop {r4, pc}
	.balign 4, 0
_02010424: .word _020F5EA4
_02010428: .word _020F5EB0
	thumb_func_end FadeFunc_15

