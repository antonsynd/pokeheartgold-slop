	.include "asm/macros.inc"
	.include "overlay_91.inc"
	.include "global.inc"
	.public ov91_0225F25C
	.extern ov91_0225D500
	.extern ov91_0225E40C
	.extern ov91_0225E62C
	.extern ov91_0225E6D0
	.extern ov91_02260CB4
	.extern ov91_02260CE0
	.extern ov91_02260D00
	.extern ov91_02261C84

	.text

	.text
	thumb_func_start ov91_0225F25C
ov91_0225F25C: ; 0x0225F25C
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r0, #0
	add r0, #0x3a
	ldrb r0, [r0]
	add r5, r1, #0
	cmp r0, #3
	bhi _0225F36A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225F278: ; jump table
	.short _0225F280 - _0225F278 - 2 ; case 0
	.short _0225F2B2 - _0225F278 - 2 ; case 1
	.short _0225F340 - _0225F278 - 2 ; case 2
	.short _0225F352 - _0225F278 - 2 ; case 3
_0225F280:
	ldr r0, [r4, #0x34]
	mov r1, #0
	bl Sprite_SetAnimationFrame
	ldr r0, _0225F37C ; =0x00008544
	add r0, r5, r0
	bl ov91_02260CB4
	ldr r0, _0225F37C ; =0x00008544
	mov r1, #0x80
	add r0, r5, r0
	mov r2, #0xb1
	bl ov91_02260CE0
	add r0, r4, #0
	mov r1, #0
	add r0, #0x3b
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x3a
	ldrb r0, [r0]
	add r4, #0x3a
	add r0, r0, #1
	strb r0, [r4]
	b _0225F36A
_0225F2B2:
	mov r1, #2
	ldr r0, [r4, #0x34]
	lsl r1, r1, #0xc
	bl Sprite_UpdateAnim
	ldr r0, [r4, #0x34]
	bl Sprite_GetAnimationFrame
	add r6, r0, #0
	cmp r6, #0xa
	beq _0225F2CE
	cmp r6, #0xb
	beq _0225F2FA
	b _0225F32E
_0225F2CE:
	add r0, r4, #0
	add r0, #0x3b
	ldrb r0, [r0]
	cmp r0, #0
	bne _0225F32E
	mov r0, #0x40
	str r0, [sp]
	mov r0, #2
	mov r1, #0x80
	str r0, [sp, #4]
	add r0, r5, #0
	mov r2, #0x60
	add r3, r1, #0
	bl ov91_0225D500
	ldr r0, _0225F380 ; =0x0000064F
	bl PlaySE
	mov r0, #1
	add r4, #0x3b
	strb r0, [r4]
	b _0225F32E
_0225F2FA:
	add r0, r4, #0
	add r0, #0x39
	ldrb r0, [r0]
	add r1, r0, #1
	add r0, r4, #0
	add r0, #0x39
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x39
	ldrb r0, [r0]
	cmp r0, #2
	blo _0225F31A
	mov r0, #3
	add r4, #0x3a
	strb r0, [r4]
	b _0225F326
_0225F31A:
	add r0, r4, #0
	mov r1, #2
	add r0, #0x3a
	strb r1, [r0]
	mov r0, #0x10
	str r0, [r4, #0x3c]
_0225F326:
	ldr r0, _0225F37C ; =0x00008544
	add r0, r5, r0
	bl ov91_02260D00
_0225F32E:
	ldr r2, _0225F384 ; =ov91_02261C84
	lsl r3, r6, #1
	ldr r0, _0225F37C ; =0x00008544
	ldrsh r2, [r2, r3]
	add r0, r5, r0
	mov r1, #0x80
	bl ov91_02260CE0
	b _0225F36A
_0225F340:
	ldr r0, [r4, #0x3c]
	sub r0, r0, #1
	str r0, [r4, #0x3c]
	cmp r0, #0
	bgt _0225F36A
	mov r0, #0
	add r4, #0x3a
	strb r0, [r4]
	b _0225F36A
_0225F352:
	add r0, r5, #0
	bl ov91_0225E6D0
	cmp r0, #0
	bne _0225F36A
	ldr r0, [r4, #0x34]
	mov r1, #0
	bl Sprite_SetDrawFlag
	add sp, #8
	mov r0, #1
	pop {r4, r5, r6, pc}
_0225F36A:
	add r0, r5, #0
	bl ov91_0225E40C
	add r0, r5, #0
	bl ov91_0225E62C
	mov r0, #0
	add sp, #8
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0225F37C: .word 0x00008544
_0225F380: .word 0x0000064F
_0225F384: .word ov91_02261C84
	thumb_func_end ov91_0225F25C

