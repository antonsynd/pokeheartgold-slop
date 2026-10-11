	.include "asm/macros.inc"
	.include "overlay_109.inc"
	.include "global.inc"
	.public ov109_021E5B60
	.extern ov109_021E5CB4
	.extern ov109_021E5EC8

	.text

	.text
	thumb_func_start ov109_021E5B60
ov109_021E5B60: ; 0x021E5B60
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #4]
	cmp r1, #0
	beq _021E5B70
	cmp r1, #1
	beq _021E5B7C
	b _021E5B92
_021E5B70:
	bl ov109_021E5CB4
	ldr r0, [r4, #4]
	add r0, r0, #1
	str r0, [r4, #4]
	b _021E5B92
_021E5B7C:
	bl ov109_021E5EC8
	bl sub_020210BC
	mov r0, #4
	bl sub_02021148
	mov r0, #0
	str r0, [r4, #4]
	mov r0, #1
	pop {r4, pc}
_021E5B92:
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov109_021E5B60

