	.include "asm/macros.inc"
	.include "overlay_93_thumb_2.inc"
	.include "global.inc"
	.public ov93_02261D3C
	.extern ov93_02262C7A

	.text

	.text
	thumb_func_start ov93_02261D3C
ov93_02261D3C: ; 0x02261D3C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r1, #0
	ldrb r0, [r4, #0x13]
	cmp r0, #4
	bls _02261D4A
	b _02261E88
_02261D4A:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02261D56: ; jump table
	.short _02261D60 - _02261D56 - 2 ; case 0
	.short _02261D88 - _02261D56 - 2 ; case 1
	.short _02261DC4 - _02261D56 - 2 ; case 2
	.short _02261E20 - _02261D56 - 2 ; case 3
	.short _02261E5A - _02261D56 - 2 ; case 4
_02261D60:
	add r1, sp, #0
	mov r3, #0x16
	ldr r0, [r4]
	add r1, #2
	add r2, sp, #0
	lsl r3, r3, #0x10
	bl ManagedSprite_GetPositionXYWithSubscreenOffset
	add r1, sp, #0
	mov r0, #2
	ldrsh r0, [r1, r0]
	lsl r0, r0, #0xc
	str r0, [r4, #8]
	mov r0, #0
	ldrsh r0, [r1, r0]
	lsl r0, r0, #0xc
	str r0, [r4, #0xc]
	ldrb r0, [r4, #0x13]
	add r0, r0, #1
	strb r0, [r4, #0x13]
_02261D88:
	mov r0, #0x16
	ldrsh r0, [r4, r0]
	cmp r0, #0
	ble _02261D96
	sub r0, r0, #1
	strh r0, [r4, #0x16]
	b _02261E88
_02261D96:
	ldr r0, [r4]
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	mov r0, #2
	ldr r1, [r4, #0xc]
	lsl r0, r0, #0xe
	add r2, r1, r0
	str r2, [r4, #0xc]
	mov r0, #0x10
	ldrsh r1, [r4, r0]
	asr r0, r2, #0xb
	lsr r0, r0, #0x14
	add r0, r2, r0
	asr r0, r0, #0xc
	cmp r0, r1
	blt _02261E88
	lsl r0, r1, #0xc
	str r0, [r4, #0xc]
	ldrb r0, [r4, #0x13]
	add r0, r0, #1
	strb r0, [r4, #0x13]
	b _02261E88
_02261DC4:
	add r1, sp, #0
	mov r3, #0x16
	ldr r0, [r4]
	add r1, #2
	add r2, sp, #0
	lsl r3, r3, #0x10
	bl ManagedSprite_GetPositionXYWithSubscreenOffset
	add r3, sp, #0
	mov r2, #0
	ldrsh r2, [r3, r2]
	mov r1, #2
	ldrsh r1, [r3, r1]
	sub r2, #0x20
	lsl r2, r2, #0x10
	mov r3, #0x16
	ldr r0, [r4, #4]
	asr r2, r2, #0x10
	lsl r3, r3, #0x10
	bl ManagedSprite_SetPositionXYWithSubscreenOffset
	ldr r0, [r4, #4]
	mov r1, #0x21
	bl ManagedSprite_SetAnim
	ldr r0, [r4, #4]
	mov r1, #1
	bl ManagedSprite_SetDrawFlag
	ldr r0, _02261EB0 ; =0x00000593
	bl PlaySE
	ldrb r1, [r4, #0x12]
	ldr r0, [r4]
	lsl r2, r1, #1
	ldr r1, _02261EB4 ; =ov93_02262C7A
	ldrh r1, [r1, r2]
	add r1, r1, #2
	bl ManagedSprite_SetAnim
	mov r0, #8
	strb r0, [r4, #0x14]
	ldrb r0, [r4, #0x13]
	add r0, r0, #1
	strb r0, [r4, #0x13]
	b _02261E88
_02261E20:
	ldrb r0, [r4, #0x14]
	sub r0, r0, #1
	strb r0, [r4, #0x14]
	ldrb r0, [r4, #0x14]
	cmp r0, #3
	bne _02261E36
	mov r1, #1
	ldr r0, [r4, #4]
	lsl r1, r1, #0xe
	bl ManagedSprite_TickNFrames
_02261E36:
	ldrb r0, [r4, #0x14]
	cmp r0, #0
	bne _02261E88
	ldr r0, [r4, #4]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	ldrb r1, [r4, #0x12]
	ldr r0, [r4]
	lsl r2, r1, #1
	ldr r1, _02261EB4 ; =ov93_02262C7A
	ldrh r1, [r1, r2]
	bl ManagedSprite_SetAnim
	ldrb r0, [r4, #0x13]
	add r0, r0, #1
	strb r0, [r4, #0x13]
	b _02261E88
_02261E5A:
	mov r0, #2
	ldr r1, [r4, #0xc]
	lsl r0, r0, #0xe
	sub r1, r1, r0
	asr r0, r1, #0xb
	lsr r0, r0, #0x14
	add r0, r1, r0
	str r1, [r4, #0xc]
	asr r1, r0, #0xc
	mov r0, #0x10
	ldrsh r0, [r4, r0]
	sub r0, #0x60
	cmp r1, r0
	bgt _02261E88
	ldr r0, [r4]
	mov r1, #0
	bl ManagedSprite_SetDrawFlag
	mov r0, #0
	strb r0, [r4, #0x13]
	add sp, #4
	strb r0, [r4, #0x15]
	pop {r3, r4, pc}
_02261E88:
	ldr r2, [r4, #8]
	ldr r3, [r4, #0xc]
	asr r1, r2, #0xb
	lsr r1, r1, #0x14
	add r1, r2, r1
	asr r2, r3, #0xb
	lsr r2, r2, #0x14
	add r2, r3, r2
	lsl r1, r1, #4
	lsl r2, r2, #4
	mov r3, #0x16
	ldr r0, [r4]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	lsl r3, r3, #0x10
	bl ManagedSprite_SetPositionXYWithSubscreenOffset
	mov r0, #1
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
_02261EB0: .word 0x00000593
_02261EB4: .word ov93_02262C7A
	thumb_func_end ov93_02261D3C

