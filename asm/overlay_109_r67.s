	.include "macros.inc"
	.include "overlay_109.inc"
	.include "global.inc"
	.public ov109_021E7474

	.text

	.text
	thumb_func_start ov109_021E7474
ov109_021E7474: ; 0x021E7474
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r0, #0x98
	add r4, r1, #0
	ldr r0, [r0]
	add r1, r3, #0
	add r6, r2, #0
	bl Sprite_SetDrawFlag
	cmp r6, #3
	bne _021E749C
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0]
	mov r1, #1
	mov r7, #0xc0
	mov r4, #0xa0
	bl Sprite_SetAnimationFrame
	b _021E74C4
_021E749C:
	mov r0, #0x30
	add r1, r4, #0
	mul r1, r0
	lsr r0, r4, #1
	add r1, #0x1c
	lsl r0, r0, #3
	add r0, r1, r0
	lsl r0, r0, #0x10
	asr r7, r0, #0x10
	mov r0, #0x28
	mul r0, r6
	add r0, #8
	lsl r0, r0, #0x10
	asr r4, r0, #0x10
	add r0, r5, #0
	add r0, #0x98
	ldr r0, [r0]
	mov r1, #0
	bl Sprite_SetAnimationFrame
_021E74C4:
	add r5, #0x98
	ldr r0, [r5]
	add r1, r7, #0
	add r2, r4, #0
	bl Sprite_SetPositionXY
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov109_021E7474

