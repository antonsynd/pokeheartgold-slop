	.include "asm/macros.inc"
	.include "overlay_72.inc"
	.include "global.inc"
	.public ov72_02239BEC
	.extern ov72_02238680
	.extern ov72_0223A588

	.text

	.text
	thumb_func_start ov72_02239BEC
ov72_02239BEC: ; 0x02239BEC
	push {r4, lr}
	add r4, r0, #0
	bl ov72_0223A588
	cmp r0, #0
	beq _02239C10
	ble _02239C0C
	add r1, r4, #0
	add r1, #0x94
	str r0, [r1]
	add r0, r4, #0
	mov r1, #0xb
	mov r2, #0x20
	bl ov72_02238680
	b _02239C10
_02239C0C:
	mov r0, #0x17
	str r0, [r4, #0x1c]
_02239C10:
	mov r0, #3
	pop {r4, pc}
	thumb_func_end ov72_02239BEC

