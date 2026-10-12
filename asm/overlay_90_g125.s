	.include "asm/macros.inc"
	.include "overlay_90.inc"
	.include "global.inc"
	.public ov90_0225BAD0
	.extern ov90_02258EB4
	.extern ov90_0225BD84
	.extern ov90_0225BE08
	.extern ov90_0225C2B4

	.text

	.text
	thumb_func_start ov90_0225BAD0
ov90_0225BAD0: ; 0x0225BAD0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r0, #0
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	add r0, #0xc
	mov r1, #0
	mov r2, #0xc0
	str r3, [sp, #0x10]
	bl memset
	add r0, r7, #0
	add r0, #0xcc
	mov r1, #0
	mov r2, #0xc0
	bl memset
	mov r6, #0
	strh r6, [r7, #8]
	mov r0, #0x63
	strh r6, [r7, #0xa]
	lsl r0, r0, #2
	ldr r4, _0225BBC4 ; =ov90_0225C2B4
	str r6, [r7, r0]
	add r5, r7, #0
_0225BB02:
	mov r0, #0
	str r0, [sp]
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #0xc]
	str r0, [sp, #4]
	ldr r2, [r4]
	ldr r3, [r4, #4]
	lsl r2, r2, #4
	lsl r3, r3, #4
	ldr r0, [sp, #8]
	asr r2, r2, #0x10
	asr r3, r3, #0x10
	bl ov90_02258EB4
	str r0, [r5]
	mov r1, #5
	bl Sprite_SetAnimCtrlSeq
	ldr r0, [r5]
	mov r1, #0
	bl Sprite_SetPriority
	add r6, r6, #1
	add r4, #0xc
	add r5, r5, #4
	cmp r6, #2
	blt _0225BB02
	mov r3, #1
	lsl r3, r3, #0x1a
	ldr r1, [r3]
	mov r0, #0xe
	lsl r0, r0, #0xc
	and r1, r0
	ldr r4, [r3]
	ldr r2, _0225BBC8 ; =0xFFFF1FFF
	lsr r1, r1, #0xd
	and r4, r2
	mov r2, #1
	bic r1, r2
	lsl r1, r1, #0xd
	orr r1, r4
	add r2, r3, #0
	str r1, [r3]
	add r2, #0x48
	ldrh r4, [r2]
	mov r1, #0x3f
	bic r4, r1
	mov r1, #0x1f
	orr r4, r1
	mov r1, #0x20
	orr r4, r1
	strh r4, [r2]
	add r2, r3, #0
	mov r4, #0
	add r2, #0x40
	strh r4, [r2]
	add r2, r3, #0
	add r2, #0x44
	strh r4, [r2]
	add r2, r3, #0
	add r2, #0x4a
	ldrb r4, [r2]
	mov r2, #0x19
	lsl r2, r2, #4
	strb r4, [r7, r2]
	ldr r3, [r3]
	and r0, r3
	lsr r3, r0, #0xd
	mov r0, #2
	and r3, r0
	add r0, r2, #4
	str r3, [r7, r0]
	add r0, r2, #1
	ldrb r3, [r7, r0]
	mov r0, #0x1f
	bic r3, r0
	mov r0, #0xf
	orr r3, r0
	add r0, r2, #1
	strb r3, [r7, r0]
	ldrb r0, [r7, r0]
	orr r1, r0
	add r0, r2, #1
	strb r1, [r7, r0]
	ldr r0, _0225BBCC ; =ov90_0225BE08
	add r1, r7, #0
	bl Main_SetHBlankIntrCB
	ldr r0, [r7, #4]
	mov r1, #2
	bl Sprite_SetFlipMode
	add r0, r7, #0
	bl ov90_0225BD84
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0225BBC4: .word ov90_0225C2B4
_0225BBC8: .word 0xFFFF1FFF
_0225BBCC: .word ov90_0225BE08
	thumb_func_end ov90_0225BAD0

