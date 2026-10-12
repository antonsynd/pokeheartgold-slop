	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021EB530
	.public ov102_021EB570

	.text

	.text
	thumb_func_start ov102_021EB530
ov102_021EB530: ; 0x021EB530
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #0
	str r0, [sp, #8]
	cmp r1, #1
	beq _021EB542
	cmp r1, #2
	beq _021EB550
_021EB542:
	mov r0, #0x37
	lsl r0, r0, #0xe
	str r0, [sp]
	mov r0, #0x1e
	lsl r0, r0, #0xe
	str r0, [sp, #4]
	b _021EB55C
_021EB550:
	mov r0, #0x37
	lsl r0, r0, #0xe
	str r0, [sp]
	mov r0, #9
	lsl r0, r0, #0x10
	str r0, [sp, #4]
_021EB55C:
	ldr r0, [r4, #0xc]
	add r1, sp, #0
	bl Sprite_SetMatrix
	ldr r0, [r4, #0xc]
	mov r1, #2
	bl Sprite_SetAnimCtrlSeq
	add sp, #0xc
	pop {r3, r4, pc}
	thumb_func_end ov102_021EB530

	thumb_func_start ov102_021EB570
ov102_021EB570: ; 0x021EB570
	push {r4, r5, lr}
	sub sp, #0x1c
	add r4, r1, #0
	ldr r1, [r0, #0x60]
	mov r3, #0xb
	str r3, [sp]
	mov r5, #6
	add r3, r1, #0
	str r5, [sp, #4]
	add r3, #0xc
	mul r5, r2
	str r3, [sp, #8]
	mov r3, #0
	lsl r2, r5, #0x18
	str r3, [sp, #0xc]
	lsr r2, r2, #0x18
	str r2, [sp, #0x10]
	ldrh r2, [r1]
	lsl r2, r2, #0x15
	lsr r2, r2, #0x18
	str r2, [sp, #0x14]
	ldrh r1, [r1, #2]
	lsl r2, r4, #4
	add r2, r4, r2
	lsl r1, r1, #0x15
	lsr r1, r1, #0x18
	str r1, [sp, #0x18]
	add r2, r2, #2
	lsl r2, r2, #0x18
	ldr r0, [r0, #0x10]
	mov r1, #3
	lsr r2, r2, #0x18
	bl CopyToBgTilemapRect
	add sp, #0x1c
	pop {r4, r5, pc}
	thumb_func_end ov102_021EB570

