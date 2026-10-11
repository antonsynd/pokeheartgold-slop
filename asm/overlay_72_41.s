	.include "asm/macros.inc"
	.include "overlay_72.inc"
	.include "global.inc"
	.public ov72_02239CB4
	.public ov72_0223A588

	.text

	thumb_func_start ov72_02239CB4
ov72_02239CB4: ; 0x02239CB4
	push {r4, lr}
	add r4, r0, #0
	bl ov72_0223A588
	cmp r0, #0
	beq _02239CD2
	ble _02239CCE
	add r1, r4, #0
	add r1, #0x9c
	str r0, [r1]
	mov r0, #0x23
	str r0, [r4, #0x1c]
	b _02239CD2
_02239CCE:
	mov r0, #0x1d
	str r0, [r4, #0x1c]
_02239CD2:
	mov r0, #3
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov72_02239CB4

