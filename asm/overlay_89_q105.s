	.include "asm/macros.inc"
	.include "overlay_89.inc"
	.include "global.inc"
	.public ov89_0225C648

	.text

	.text
	thumb_func_start ov89_0225C648
ov89_0225C648: ; 0x0225C648
	push {r3, r4, r5, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r0, sp, #8
	mov r1, #0
	strh r1, [r0]
	strh r1, [r0, #2]
	strh r1, [r0, #4]
	add r4, #0xa0
	strh r1, [r0, #6]
	ldrb r1, [r4, #0xe]
	add r5, r2, #0
	cmp r1, #3
	bhi _0225C714
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0225C670: ; jump table
	.short _0225C678 - _0225C670 - 2 ; case 0
	.short _0225C6A2 - _0225C670 - 2 ; case 1
	.short _0225C6D0 - _0225C670 - 2 ; case 2
	.short _0225C6E6 - _0225C670 - 2 ; case 3
_0225C678:
	add r0, sp, #0
	add r1, r5, #0
	bl Camera_GetAngle
	add r0, sp, #0
	ldrh r1, [r0]
	strh r1, [r4]
	ldrh r1, [r0, #2]
	strh r1, [r4, #2]
	ldrh r1, [r0, #4]
	strh r1, [r4, #4]
	ldrh r0, [r0, #6]
	strh r0, [r4, #6]
	ldrh r0, [r4]
	str r0, [r4, #8]
	ldrb r0, [r4, #0xe]
	add r0, r0, #1
	strb r0, [r4, #0xe]
	ldr r0, _0225C71C ; =0x000005D5
	bl PlaySE
_0225C6A2:
	add r1, sp, #0
	ldrh r2, [r1, #8]
	ldr r0, _0225C720 ; =0x00000AAA
	sub r2, r2, r0
	strh r2, [r1, #8]
	ldr r1, [r4, #8]
	sub r0, r1, r0
	str r0, [r4, #8]
	add r0, sp, #8
	add r1, r5, #0
	bl Camera_AdjustAnglePos
	mov r0, #2
	ldrh r1, [r4]
	lsl r0, r0, #0xc
	ldr r2, [r4, #8]
	sub r0, r1, r0
	cmp r2, r0
	bgt _0225C714
	ldrb r0, [r4, #0xe]
	add r0, r0, #1
	strb r0, [r4, #0xe]
	b _0225C714
_0225C6D0:
	mov r0, #0xc
	ldrsh r1, [r4, r0]
	add r1, r1, #1
	strh r1, [r4, #0xc]
	ldrsh r0, [r4, r0]
	cmp r0, #0x10
	blt _0225C714
	ldrb r0, [r4, #0xe]
	add r0, r0, #1
	strb r0, [r4, #0xe]
	b _0225C714
_0225C6E6:
	add r2, sp, #0
	ldrh r3, [r2, #8]
	mov r1, #2
	lsl r1, r1, #8
	add r3, r3, r1
	strh r3, [r2, #8]
	ldr r2, [r4, #8]
	add r1, r2, r1
	str r1, [r4, #8]
	add r1, r5, #0
	bl Camera_AdjustAnglePos
	ldrh r0, [r4]
	ldr r1, [r4, #8]
	cmp r1, r0
	blt _0225C714
	add r0, r4, #0
	add r1, r5, #0
	bl Camera_SetAnglePos
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, pc}
_0225C714:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_0225C71C: .word 0x000005D5
_0225C720: .word 0x00000AAA
	thumb_func_end ov89_0225C648

