	.include "asm/macros.inc"
	.include "overlay_27.inc"
	.include "global.inc"
	.public ov27_0225A2EC
	.public ov27_0225A320
	.public ov27_0225A468
	.extern ov27_0225A48C
	.extern ov27_0225A4D0
	.extern ov27_0225A530
	.extern ov27_0225A66C
	.extern ov27_0225A7FC
	.extern ov27_0225A86C
	.extern ov27_0225A89C
	.extern ov27_0225A8E8
	.extern ov27_0225B4D8
	.extern ov27_0225BDFC
	.extern ov27_0225CECC

	.text

	.text
	thumb_func_start ov27_0225A2EC
ov27_0225A2EC: ; 0x0225A2EC
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl SysTask_GetData
	add r4, r0, #0
	bne _0225A2FC
	bl GF_AssertFail
_0225A2FC:
	cmp r5, #1
	beq _0225A308
	cmp r5, #2
	beq _0225A308
	bl GF_AssertFail
_0225A308:
	ldr r1, _0225A31C ; =0x0000051C
	mov r0, #0xc0
	ldr r2, [r4, r1]
	bic r2, r0
	lsl r0, r5, #0x1e
	lsr r0, r0, #0x18
	orr r0, r2
	str r0, [r4, r1]
	pop {r3, r4, r5, pc}
	nop
_0225A31C: .word 0x0000051C
	thumb_func_end ov27_0225A2EC

	thumb_func_start ov27_0225A320
ov27_0225A320: ; 0x0225A320
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	ldr r0, [r5, #0x10]
	bl ov27_0225A89C
	add r4, r0, #0
	ldr r0, [r5, #0x10]
	bl FieldSystem_IsPlayerMovementAllowed
	add r6, r0, #0
	ldr r0, [r5, #0x10]
	add r0, #0xd2
	ldrb r0, [r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	beq _0225A366
	cmp r6, #0
	beq _0225A35E
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _0225A35E
	ldr r2, [r5, #0x10]
	add r0, r2, #0
	add r0, #0xd2
	ldrb r1, [r0]
	mov r0, #0x80
	add r2, #0xd2
	bic r1, r0
	strb r1, [r2]
	b _0225A36E
_0225A35E:
	ldr r0, _0225A45C ; =0x04001050
	mov r1, #0
	strh r1, [r0]
	b _0225A36E
_0225A366:
	add r0, r5, #0
	add r1, r4, #0
	bl ov27_0225A8E8
_0225A36E:
	ldr r0, _0225A460 ; =0x0000051C
	ldr r0, [r5, r0]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1f
	beq _0225A38A
	ldr r0, [r5, #0x14]
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x39
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	mov r1, #2
	bl Sprite_TryChangeAnimSeq
_0225A38A:
	ldr r0, _0225A460 ; =0x0000051C
	ldr r0, [r5, r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1e
	cmp r0, #1
	bne _0225A3AE
	mov r0, #0xeb
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #2
	bl Sprite_SetAnimCtrlSeq
	ldr r1, _0225A460 ; =0x0000051C
	mov r0, #0xc0
	ldr r2, [r5, r1]
	bic r2, r0
	str r2, [r5, r1]
	b _0225A3C8
_0225A3AE:
	cmp r0, #2
	bne _0225A3C8
	mov r0, #0x3b
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #2
	bl Sprite_SetAnimCtrlSeq
	ldr r1, _0225A460 ; =0x0000051C
	mov r0, #0xc0
	ldr r2, [r5, r1]
	bic r2, r0
	str r2, [r5, r1]
_0225A3C8:
	ldr r0, [r5, #0x10]
	bl FieldSystem_TaskIsRunning
	cmp r0, #0
	beq _0225A3DA
	add r0, r5, #0
	bl ov27_0225A7FC
	b _0225A412
_0225A3DA:
	ldr r0, [r5, #0x10]
	add r0, #0xd2
	ldrb r0, [r0]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1a
	cmp r0, #2
	bne _0225A3FE
	add r0, r5, #0
	bl ov27_0225A86C
	ldr r2, [r5, #0x10]
	add r0, r2, #0
	add r0, #0xd2
	ldrb r1, [r0]
	mov r0, #0x3f
	add r2, #0xd2
	bic r1, r0
	strb r1, [r2]
_0225A3FE:
	cmp r6, #0
	beq _0225A408
	add r0, r5, #0
	bl ov27_0225A66C
_0225A408:
	cmp r4, #0
	bne _0225A412
	add r0, r5, #0
	bl ov27_0225B4D8
_0225A412:
	ldr r0, _0225A464 ; =ov27_0225CECC
	bl TouchscreenHitbox_FindRectAtTouchHeld
	add r6, r0, #0
	ldr r0, _0225A464 ; =ov27_0225CECC
	bl TouchscreenHitbox_FindRectAtTouchNew
	add r7, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	bl ov27_0225A530
	ldr r0, _0225A460 ; =0x0000051C
	ldr r0, [r5, r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _0225A44A
	add r0, r5, #0
	bl ov27_0225A4D0
	cmp r0, #0
	beq _0225A44A
	cmp r4, #0
	bne _0225A44A
	add r0, r5, #0
	add r1, r7, #0
	bl ov27_0225A48C
_0225A44A:
	mov r0, #0x52
	lsl r0, r0, #4
	add r0, r5, r0
	bl ov27_0225BDFC
	ldr r0, [r5, #0x18]
	bl SpriteList_RenderAndAnimateSprites
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0225A45C: .word 0x04001050
_0225A460: .word 0x0000051C
_0225A464: .word ov27_0225CECC
	thumb_func_end ov27_0225A320

	thumb_func_start ov27_0225A468
ov27_0225A468: ; 0x0225A468
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0xf1
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	lsl r2, r4, #2
	mov r1, #0xb
	sub r1, r1, r2
	bl Sprite_SetAnimCtrlSeq
	mov r0, #0xef
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r4, #3
	bl Sprite_SetAnimCtrlSeq
	pop {r3, r4, r5, pc}
	thumb_func_end ov27_0225A468

