	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021E8F7C
	.public ov102_021EB98C
	.public ov102_021EB9C0
	.public ov102_021EC4CC

	.text

	thumb_func_start ov102_021EB98C
ov102_021EB98C: ; 0x021EB98C
	push {r4, lr}
	add r4, r0, #0
	cmp r1, #0
	ldr r0, [r4, #0x5c]
	beq _021EB9B8
	mov r1, #1
	bl Sprite_SetDrawFlag
	ldr r0, [r4, #4]
	bl ov102_021E8F7C
	cmp r0, #0
	ldr r0, [r4, #0x5c]
	bne _021EB9B0
	mov r1, #4
	bl Sprite_SetAnimCtrlSeq
	pop {r4, pc}
_021EB9B0:
	mov r1, #6
	bl Sprite_SetAnimCtrlSeq
	pop {r4, pc}
_021EB9B8:
	mov r1, #0
	bl Sprite_SetDrawFlag
	pop {r4, pc}
	thumb_func_end ov102_021EB98C

	thumb_func_start ov102_021EB9C0
ov102_021EB9C0: ; 0x021EB9C0
	push {r4, r5, lr}
	sub sp, #0x14
	add r4, r0, #0
	ldr r0, [r4, #4]
	add r5, r1, #0
	bl ov102_021E8F7C
	mov r1, #0
	str r1, [sp, #0x10]
	cmp r5, #0xfe
	bne _021EB9E2
	mov r0, #0xe0
	str r0, [sp, #8]
	mov r0, #0xb0
	str r0, [sp, #0xc]
	mov r5, #0x10
	b _021EBA22
_021EB9E2:
	cmp r0, #0
	bne _021EBA0A
	add r0, r5, #0
	mov r1, #3
	bl _u32_div_f
	mov r0, #0x50
	mul r0, r1
	add r0, #0x30
	str r0, [sp, #8]
	add r0, r5, #0
	mov r1, #3
	bl _u32_div_f
	mov r1, #0x18
	mul r1, r0
	add r1, #0x40
	str r1, [sp, #0xc]
	mov r5, #4
	b _021EBA22
_021EBA0A:
	add r0, r5, #0
	add r1, sp, #4
	add r2, sp, #0
	bl ov102_021EC4CC
	ldr r0, [sp, #4]
	mov r5, #6
	add r0, #0x1a
	str r0, [sp, #8]
	ldr r0, [sp]
	add r0, #0x48
	str r0, [sp, #0xc]
_021EBA22:
	ldr r0, [sp, #8]
	add r1, sp, #8
	lsl r0, r0, #0xc
	str r0, [sp, #8]
	ldr r0, [sp, #0xc]
	lsl r0, r0, #0xc
	str r0, [sp, #0xc]
	ldr r0, [r4, #0x5c]
	bl Sprite_SetMatrix
	ldr r0, [r4, #0x5c]
	add r1, r5, #0
	bl Sprite_SetAnimCtrlSeq
	add sp, #0x14
	pop {r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov102_021EB9C0

