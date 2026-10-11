	.include "asm/macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_02239F18
	.public ov59_02239F38
	.extern ov59_0223A268
	.extern ov59_0223A2D0
	.extern ov59_0223C940

	.text

	.text
	thumb_func_start ov59_02239F18
ov59_02239F18: ; 0x02239F18
	push {r3, r4, lr}
	sub sp, #4
	mov r1, #0
	str r1, [sp]
	add r1, sp, #0
	add r4, r0, #0
	bl ov59_0223A2D0
	ldr r1, [sp]
	cmp r1, #0
	bne _02239F34
	add r0, r4, #0
	bl ov59_0223A268
_02239F34:
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov59_02239F18

	thumb_func_start ov59_02239F38
ov59_02239F38: ; 0x02239F38
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0x4d
	ldrb r0, [r0]
	add r2, sp, #0
	add r0, r0, #2
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x95
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	add r1, sp, #0
	add r1, #2
	bl Sprite_GetPositionXY
	add r3, sp, #0
	mov r1, #2
	mov r2, #0
	ldrsh r1, [r3, r1]
	ldrsh r2, [r3, r2]
	ldr r0, _0223A028 ; =ov59_0223C940
	bl TouchscreenHitbox_PointIsIn
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	bl System_GetTouchHeld
	cmp r0, #0
	beq _0223A00A
	ldr r0, _0223A02C ; =gSystem + 0x40
	add r2, sp, #0
	ldrh r1, [r0, #0x20]
	mov r3, #0
	strh r1, [r2, #2]
	ldrh r0, [r0, #0x22]
	strh r0, [r2]
	add r0, r5, #0
	add r0, #0x4d
	ldrb r0, [r0]
	add r0, r0, #2
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x95
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	mov r1, #2
	ldrsh r1, [r2, r1]
	ldrsh r2, [r2, r3]
	bl Sprite_SetPositionXY
	mov r0, #0x96
	lsl r0, r0, #2
	add r3, sp, #0
	mov r2, #0
	ldrsh r2, [r3, r2]
	mov r1, #2
	ldrsh r1, [r3, r1]
	sub r2, r2, #6
	lsl r2, r2, #0x10
	ldr r0, [r5, r0]
	asr r2, r2, #0x10
	bl Sprite_SetPositionXY
	cmp r4, #0
	beq _02239FE0
	add r0, r5, #0
	add r0, #0x53
	ldrb r0, [r0]
	cmp r0, #0
	bne _0223A004
	add r0, r5, #0
	mov r1, #1
	add r0, #0x53
	strb r1, [r0]
	ldr r0, _0223A030 ; =0x000008E6
	bl PlaySE
	mov r0, #0x9f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x15
	bl Sprite_SetAnimCtrlSeq
	b _0223A004
_02239FE0:
	add r0, r5, #0
	add r0, #0x53
	ldrb r0, [r0]
	cmp r0, #0
	beq _0223A004
	add r0, r5, #0
	mov r1, #0
	add r0, #0x53
	strb r1, [r0]
	ldr r0, _0223A030 ; =0x000008E6
	bl PlaySE
	mov r0, #0x9f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0x14
	bl Sprite_SetAnimCtrlSeq
_0223A004:
	mov r0, #0
	mvn r0, r0
	pop {r3, r4, r5, pc}
_0223A00A:
	mov r0, #0
	add r5, #0x53
	strb r0, [r5]
	cmp r4, #0
	beq _0223A01E
	ldr r0, _0223A034 ; =0x000005EA
	bl PlaySE
	mov r0, #1
	pop {r3, r4, r5, pc}
_0223A01E:
	ldr r0, _0223A038 ; =0x00000682
	bl PlaySE
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0223A028: .word ov59_0223C940
_0223A02C: .word gSystem + 0x40
_0223A030: .word 0x000008E6
_0223A034: .word 0x000005EA
_0223A038: .word 0x00000682
	thumb_func_end ov59_02239F38

