	.include "asm/macros.inc"
	.include "overlay_90.inc"
	.include "global.inc"
	.public ov90_02259F7C
	.public ov90_02259FC8
	.extern ov90_02258D4C
	.extern ov90_0225C274
	.extern ov90_0225C276
	.extern ov90_0225C31C
	.extern ov90_0225C324

	.text

	.text
	thumb_func_start ov90_02259F7C
ov90_02259F7C: ; 0x02259F7C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #0x32
	ldrsh r0, [r5, r0]
	cmp r0, #0
	bgt _02259FBE
	mov r0, #0x30
	ldrsh r0, [r5, r0]
	cmp r0, #0
	bne _02259F9A
	ldr r0, [r5, #0x34]
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl PlaySE
_02259F9A:
	mov r1, #0x30
	ldrsh r0, [r5, r1]
	add r0, r0, #1
	strh r0, [r5, #0x30]
	ldrsh r1, [r5, r1]
	add r0, r5, #0
	add r0, #0x1c
	bl ov90_02258D4C
	ldr r1, [r5, #0x1c]
	add r4, r0, #0
	asr r1, r1, #0xc
	add r0, r5, #0
	neg r1, r1
	bl ov90_02259FC8
	add r0, r4, #0
	pop {r3, r4, r5, pc}
_02259FBE:
	sub r0, r0, #1
	strh r0, [r5, #0x32]
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov90_02259F7C

	thumb_func_start ov90_02259FC8
ov90_02259FC8: ; 0x02259FC8
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldrh r0, [r5, #0x18]
	add r4, r1, #0
	ldrb r2, [r5, #0x1b]
	sub r1, r0, #1
	mov r0, #0xc
	add r3, r1, #0
	mul r3, r0
	ldr r0, _0225A040 ; =ov90_0225C324
	ldr r6, _0225A044 ; =ov90_0225C31C
	add r0, r0, r3
	ldrb r0, [r2, r0]
	add r3, r6, r3
	ldrb r2, [r2, r3]
	lsl r1, r0, #2
	ldr r0, _0225A048 ; =ov90_0225C276
	lsl r2, r2, #3
	ldrsh r0, [r0, r1]
	add r0, r0, r2
	ldr r2, _0225A04C ; =ov90_0225C274
	lsl r0, r0, #0x18
	ldrsh r1, [r2, r1]
	lsr r0, r0, #0x18
	lsl r0, r0, #0xc
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	add r1, r1, r4
	lsl r1, r1, #0xc
	str r1, [sp]
	str r0, [sp, #4]
	ldr r0, [r5, #0x10]
	add r1, sp, #0
	bl Sprite_SetMatrix
	ldrh r0, [r5, #0x18]
	add r4, #0x18
	sub r1, r0, #1
	add r2, r1, #0
	mov r0, #0xc
	mul r2, r0
	add r0, r6, #0
	ldrb r1, [r5, #0x1b]
	add r0, r0, r2
	ldrb r0, [r1, r0]
	lsl r0, r0, #3
	add r0, #0x15
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	lsl r0, r4, #0xc
	str r0, [sp]
	lsl r0, r1, #0xc
	str r0, [sp, #4]
	ldr r0, [r5, #0x14]
	add r1, sp, #0
	bl Sprite_SetMatrix
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_0225A040: .word ov90_0225C324
_0225A044: .word ov90_0225C31C
_0225A048: .word ov90_0225C276
_0225A04C: .word ov90_0225C274
	thumb_func_end ov90_02259FC8

