	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021E8FB4
	.public ov102_021EAC20

	.text

	thumb_func_start ov102_021EAC20
ov102_021EAC20: ; 0x021EAC20
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl ov102_021E8FB4
	add r1, r0, #0
	ldr r0, [r4, #0x74]
	cmp r0, #0
	beq _021EAC40
	lsl r1, r1, #1
	add r1, #0x1c
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	mov r2, #0x40
	bl Sprite_SetPositionXY
_021EAC40:
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov102_021EAC20

