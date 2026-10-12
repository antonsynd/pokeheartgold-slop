	.include "asm/macros.inc"
	.include "overlay_109.inc"
	.include "global.inc"
	.public ov109_021E7524

	.text

	.text
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

