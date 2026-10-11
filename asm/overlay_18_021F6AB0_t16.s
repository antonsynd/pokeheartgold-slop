	.include "asm/macros.inc"
	.include "overlay_18_021F6AB0.inc"
	.include "global.inc"
	.public ov18_021F719C
	.public ov18_021F71DC
	.extern ov18_021FBD3C

	.extern ov18_021E5900
	.extern ov18_021E5904
	.extern ov18_021E5908
	.extern ov18_021E590C
	.extern ov18_021E595C
	.extern ov18_021E59A8
	.extern ov18_021E613C
	.extern ov18_021E6D10
	.extern ov18_021E7698
	.extern ov18_021E8AB0
	.extern ov18_021E8ACC
	.extern ov18_021E8AE0
	.extern ov18_021E8B0C
	.extern ov18_021E8B18
	.extern ov18_021E8B24
	.extern ov18_021E8B5C

    .text

	.text
	thumb_func_start ov18_021F719C
ov18_021F719C: ; 0x021F719C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _021F71D4 ; =0x00001864
	add r4, r1, #0
	ldr r0, [r5, r0]
	bl GridInputHandler_GetDpadBox
	add r1, sp, #0
	add r1, #1
	add r2, sp, #0
	bl DpadMenuBox_GetPosition
	mov r0, #0x67
	add r2, sp, #0
	lsl r0, r0, #4
	ldrb r1, [r2, #1]
	ldrb r2, [r2]
	ldr r0, [r5, r0]
	bl ManagedSprite_SetPositionXY
	ldr r2, _021F71D8 ; =ov18_021FBD3C
	add r0, r5, #0
	ldrb r2, [r2, r4]
	mov r1, #0
	bl ov18_021F118C
	pop {r3, r4, r5, pc}
	nop
_021F71D4: .word 0x00001864
_021F71D8: .word ov18_021FBD3C
	thumb_func_end ov18_021F719C

	thumb_func_start ov18_021F71DC
ov18_021F71DC: ; 0x021F71DC
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r5, r0, #0
	add r4, r1, #0
	cmp r6, #0x12
	bne _021F727C
	cmp r4, #0
	bne _021F7236
	ldr r0, _021F7328 ; =0x0000189C
	ldr r1, [r5, r0]
	cmp r1, #0x10
	blt _021F7218
	cmp r1, #0x11
	bgt _021F7218
	lsr r3, r1, #0x1f
	lsl r2, r1, #0x1e
	sub r2, r2, r3
	mov r1, #0x1e
	ror r2, r1
	add r4, r3, r2
	sub r0, #0x38
	lsl r1, r4, #0x18
	lsl r2, r6, #0x18
	ldr r0, [r5, r0]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	mov r3, #0x12
	bl GridInputHandler_SetNextLastUnk0FInputs
	b _021F7312
_021F7218:
	cmp r1, #0
	blt _021F7312
	cmp r1, #1
	bgt _021F7312
	ldr r0, _021F732C ; =0x00001864
	add r4, r1, #0
	lsl r1, r1, #0x18
	lsl r2, r6, #0x18
	ldr r0, [r5, r0]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	mov r3, #0x12
	bl GridInputHandler_SetNextLastUnk0FInputs
	b _021F7312
_021F7236:
	cmp r4, #0x10
	bne _021F7312
	ldr r0, _021F7328 ; =0x0000189C
	ldr r1, [r5, r0]
	cmp r1, #0
	blt _021F725E
	cmp r1, #1
	bgt _021F725E
	add r4, r1, #0
	add r4, #0x10
	sub r0, #0x38
	lsl r1, r4, #0x18
	lsl r2, r6, #0x18
	ldr r0, [r5, r0]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	mov r3, #0x12
	bl GridInputHandler_SetNextLastUnk0FInputs
	b _021F7312
_021F725E:
	cmp r1, #0x10
	blt _021F7312
	cmp r1, #0x11
	bgt _021F7312
	ldr r0, _021F732C ; =0x00001864
	add r4, r1, #0
	lsl r1, r1, #0x18
	lsl r2, r6, #0x18
	ldr r0, [r5, r0]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	mov r3, #0x12
	bl GridInputHandler_SetNextLastUnk0FInputs
	b _021F7312
_021F727C:
	cmp r6, #0x13
	bne _021F7312
	cmp r4, #3
	bne _021F72CE
	ldr r0, _021F7328 ; =0x0000189C
	ldr r1, [r5, r0]
	cmp r1, #0xe
	blt _021F72B0
	cmp r1, #0xf
	bgt _021F72B0
	lsr r3, r1, #0x1f
	lsl r2, r1, #0x1e
	sub r2, r2, r3
	mov r1, #0x1e
	ror r2, r1
	add r4, r3, r2
	sub r0, #0x38
	lsl r1, r4, #0x18
	lsl r2, r6, #0x18
	ldr r0, [r5, r0]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	mov r3, #0x13
	bl GridInputHandler_SetNextLastUnk0FInputs
	b _021F7312
_021F72B0:
	cmp r1, #2
	blt _021F7312
	cmp r1, #3
	bgt _021F7312
	ldr r0, _021F732C ; =0x00001864
	add r4, r1, #0
	lsl r1, r1, #0x18
	lsl r2, r6, #0x18
	ldr r0, [r5, r0]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	mov r3, #0x13
	bl GridInputHandler_SetNextLastUnk0FInputs
	b _021F7312
_021F72CE:
	cmp r4, #0xf
	bne _021F7312
	ldr r0, _021F7328 ; =0x0000189C
	ldr r1, [r5, r0]
	cmp r1, #2
	blt _021F72F6
	cmp r1, #3
	bgt _021F72F6
	add r4, r1, #0
	add r4, #0xc
	sub r0, #0x38
	lsl r1, r4, #0x18
	lsl r2, r6, #0x18
	ldr r0, [r5, r0]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	mov r3, #0x13
	bl GridInputHandler_SetNextLastUnk0FInputs
	b _021F7312
_021F72F6:
	cmp r1, #0xe
	blt _021F7312
	cmp r1, #0xf
	bgt _021F7312
	ldr r0, _021F732C ; =0x00001864
	add r4, r1, #0
	lsl r1, r1, #0x18
	lsl r2, r6, #0x18
	ldr r0, [r5, r0]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	mov r3, #0x13
	bl GridInputHandler_SetNextLastUnk0FInputs
_021F7312:
	add r0, r5, #0
	add r1, r4, #0
	bl ov18_021F719C
	ldr r0, _021F7328 ; =0x0000189C
	str r6, [r5, r0]
	ldr r0, _021F7330 ; =0x000008E8
	bl PlaySE
	pop {r4, r5, r6, pc}
	nop
_021F7328: .word 0x0000189C
_021F732C: .word 0x00001864
_021F7330: .word 0x000008E8
	thumb_func_end ov18_021F71DC

