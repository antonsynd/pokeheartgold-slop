	.include "asm/macros.inc"
	.include "overlay_41_0224A5A4.inc"
	.include "global.inc"
	.public ov41_0224AED8
	.public ov41_0224AF8C
	.extern ov41_0224AFF8
	.extern ov41_0224B0B8

    .text

	.text
	thumb_func_start ov41_0224AED8
ov41_0224AED8: ; 0x0224AED8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x6c
	add r5, r1, #0
	mov r1, #0x67
	str r1, [sp]
	mov r1, #0xe1
	str r1, [sp, #4]
	mov r1, #0x66
	str r1, [sp, #8]
	mov r1, #0x65
	str r1, [sp, #0xc]
	mov r1, #2
	str r1, [sp, #0x10]
	mov r1, #0x7d
	add r4, r2, #0
	str r3, [sp, #0x1c]
	lsl r1, r1, #4
	str r1, [sp, #0x14]
	ldr r3, [sp, #0x80]
	str r0, [sp, #0x18]
	add r1, r4, #0
	mov r2, #0xe
	bl ov41_0224AFF8
	ldr r0, [sp, #0x18]
	add r1, r4, #0
	add r2, sp, #0x48
	mov r3, #0
	bl ov41_0224B0B8
	add r0, sp, #0x48
	str r0, [sp, #0x2c]
	mov r0, #2
	str r0, [sp, #0x40]
	mov r0, #0
	str r0, [sp, #0x24]
	str r0, [sp, #0x3c]
	mov r0, #0xe
	str r0, [sp, #0x44]
	mov r0, #0x68
	ldr r7, [sp, #0x24]
	str r5, [sp, #0x28]
	str r0, [sp, #0x20]
_0224AF2E:
	ldr r0, [sp, #0x20]
	mov r6, #0
	str r0, [sp, #0x34]
	lsl r1, r0, #0xc
	mov r0, #2
	lsl r0, r0, #0x14
	str r1, [sp, #0x34]
	add r0, r1, r0
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x18]
	lsl r1, r7, #2
	mov r4, #0x26
	add r5, r0, r1
_0224AF48:
	str r4, [sp, #0x30]
	lsl r0, r4, #0xc
	str r0, [sp, #0x30]
	add r0, sp, #0x28
	bl Sprite_Create
	mov r1, #1
	str r0, [r5, #0x10]
	bl Sprite_SetAnimCtrlSeq
	ldr r0, [sp, #0x1c]
	add r1, r6, r7
	cmp r1, r0
	blt _0224AF6C
	ldr r0, [r5, #0x10]
	mov r1, #0
	bl Sprite_SetDrawFlag
_0224AF6C:
	add r6, r6, #1
	add r4, #0x12
	add r5, r5, #4
	cmp r6, #0xa
	blt _0224AF48
	ldr r0, [sp, #0x20]
	add r7, #0xa
	add r0, #0x12
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x24]
	add r0, r0, #1
	str r0, [sp, #0x24]
	cmp r0, #2
	blt _0224AF2E
	add sp, #0x6c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov41_0224AED8

	thumb_func_start ov41_0224AF8C
ov41_0224AF8C: ; 0x0224AF8C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	ldr r6, [r7, #0x60]
	add r5, r1, #0
	cmp r6, r5
	bge _0224AFB2
	cmp r6, r5
	bge _0224AFD0
	lsl r0, r6, #2
	add r4, r7, r0
_0224AFA0:
	ldr r0, [r4, #0x10]
	mov r1, #0
	bl Sprite_SetAnimCtrlSeq
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, r5
	blt _0224AFA0
	b _0224AFD0
_0224AFB2:
	cmp r6, r5
	ble _0224AFD0
	sub r6, r6, #1
	cmp r6, r5
	blt _0224AFD0
	lsl r0, r6, #2
	add r4, r7, r0
_0224AFC0:
	ldr r0, [r4, #0x10]
	mov r1, #1
	bl Sprite_SetAnimCtrlSeq
	sub r6, r6, #1
	sub r4, r4, #4
	cmp r6, r5
	bge _0224AFC0
_0224AFD0:
	str r5, [r7, #0x60]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov41_0224AF8C

