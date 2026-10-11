	.include "asm/macros.inc"
	.include "overlay_109.inc"
	.include "global.inc"
	.public ov109_021E7474
	.public ov109_021E74D4
	.public ov109_021E7524

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

	thumb_func_start ov109_021E74D4
ov109_021E74D4: ; 0x021E74D4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrb r0, [r5, #0x1f]
	add r4, r1, #0
	mov r1, #0xc
	bl _s32_div_f
	lsl r0, r0, #0x18
	ldrb r1, [r5, #0x19]
	lsr r0, r0, #0x18
	cmp r1, r0
	beq _021E74EE
	mov r4, #0
_021E74EE:
	ldrb r3, [r5, #0x1d]
	add r0, r5, #0
	add r0, #0x9c
	mov r1, #0x30
	add r2, r3, #0
	mul r2, r1
	lsr r1, r3, #1
	ldrb r3, [r5, #0x1e]
	add r2, #0x1c
	lsl r1, r1, #3
	add r1, r2, r1
	mov r2, #0x28
	mul r2, r3
	add r2, #8
	lsl r1, r1, #0x10
	lsl r2, r2, #0x10
	ldr r0, [r0]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl Sprite_SetPositionXY
	add r5, #0x9c
	ldr r0, [r5]
	add r1, r4, #0
	bl Sprite_SetDrawFlag
	pop {r3, r4, r5, pc}
	thumb_func_end ov109_021E74D4

	thumb_func_start ov109_021E7524
ov109_021E7524: ; 0x021E7524
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xa0
	ldr r0, [r0]
	mov r1, #0
	bl Sprite_SetAnimActiveFlag
	add r0, r4, #0
	add r0, #0xa4
	ldr r0, [r0]
	mov r1, #0
	bl Sprite_SetAnimActiveFlag
	ldrb r0, [r4, #0x19]
	cmp r0, #0
	bne _021E7552
	add r0, r4, #0
	add r0, #0xa0
	ldr r0, [r0]
	mov r1, #2
	bl Sprite_SetAnimCtrlSeq
	b _021E755E
_021E7552:
	add r0, r4, #0
	add r0, #0xa0
	ldr r0, [r0]
	mov r1, #0
	bl Sprite_SetAnimCtrlSeq
_021E755E:
	ldrb r0, [r4, #0x1a]
	cmp r0, #0
	beq _021E756C
	ldrb r1, [r4, #0x19]
	sub r0, r0, #1
	cmp r1, r0
	bne _021E7578
_021E756C:
	add r4, #0xa4
	ldr r0, [r4]
	mov r1, #5
	bl Sprite_SetAnimCtrlSeq
	pop {r4, pc}
_021E7578:
	add r4, #0xa4
	ldr r0, [r4]
	mov r1, #3
	bl Sprite_SetAnimCtrlSeq
	pop {r4, pc}
	thumb_func_end ov109_021E7524

