	.include "asm/macros.inc"
	.include "overlay_18_021F6AB0.inc"
	.include "global.inc"

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

	thumb_func_start ov18_021F6AB0
ov18_021F6AB0: ; 0x021F6AB0
	push {r4, r5, lr}
	sub sp, #0x1c
	add r5, r0, #0
	mov r0, #1
	add r4, r1, #0
	lsl r0, r0, #0x14
	lsl r1, r2, #0xc
	bl FX_Div
	bl FX_Inv
	mov r2, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x18]
	str r2, [sp, #0x10]
	str r2, [sp, #0x14]
	add r0, sp, #0xc
	str r0, [sp]
	mov r0, #0x80
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [r5, #4]
	mov r1, #7
	mov r3, #0x38
	bl Bg_SetTextDimAndAffineParams
	add r0, sp, #0xc
	str r0, [sp]
	mov r0, #0x80
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r3, #0x10
	ldr r0, [r5, #4]
	mov r1, #7
	mov r2, #3
	sub r3, r3, r4
	bl Bg_SetTextDimAndAffineParams
	add sp, #0x1c
	pop {r4, r5, pc}
	thumb_func_end ov18_021F6AB0

	thumb_func_start ov18_021F6B00
ov18_021F6B00: ; 0x021F6B00
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021F6BA8 ; =0x00000864
	mov r1, #0
	str r1, [r4, r0]
	bl System_GetTouchNew
	cmp r0, #1
	bne _021F6B3A
	ldr r0, _021F6BAC ; =ov18_021FB72C
	bl TouchscreenHitbox_FindRectAtTouchNew
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021F6B24
	add r0, r1, #0
	pop {r4, pc}
_021F6B24:
	lsl r1, r0, #2
	ldr r0, _021F6BB0 ; =ov18_021FB6F0
	ldr r0, [r0, r1]
	cmp r0, #6
	bne _021F6BA4
	ldr r1, _021F6BB4 ; =0x00001860
	ldr r1, [r4, r1]
	cmp r1, #0
	bne _021F6BA4
	mov r0, #5
	pop {r4, pc}
_021F6B3A:
	ldr r0, _021F6BA8 ; =0x00000864
	mov r1, #1
	str r1, [r4, r0]
	ldr r1, _021F6BB4 ; =0x00001860
	ldr r0, [r4, r1]
	cmp r0, #1
	bne _021F6B7C
	ldr r0, _021F6BB8 ; =gSystem
	ldr r3, [r0, #0x48]
	mov r0, #0x20
	add r2, r3, #0
	tst r2, r0
	beq _021F6B64
	sub r1, #8
	ldrb r1, [r4, r1]
	cmp r1, #0
	bne _021F6B60
	mov r0, #3
	pop {r4, pc}
_021F6B60:
	sub r0, #0x21
	pop {r4, pc}
_021F6B64:
	mov r0, #0x10
	add r2, r3, #0
	tst r2, r0
	beq _021F6B7C
	sub r1, #8
	ldrb r1, [r4, r1]
	cmp r1, #1
	bne _021F6B78
	mov r0, #4
	pop {r4, pc}
_021F6B78:
	sub r0, #0x11
	pop {r4, pc}
_021F6B7C:
	ldr r0, _021F6BB8 ; =gSystem
	mov r1, #1
	ldr r3, [r0, #0x48]
	add r0, r3, #0
	tst r0, r1
	bne _021F6B8E
	mov r0, #8
	tst r0, r3
	beq _021F6B92
_021F6B8E:
	mov r0, #0
	pop {r4, pc}
_021F6B92:
	mov r0, #2
	add r2, r3, #0
	tst r2, r0
	bne _021F6BA4
	lsl r2, r0, #0xa
	tst r2, r3
	bne _021F6BA2
	sub r1, r0, #3
_021F6BA2:
	add r0, r1, #0
_021F6BA4:
	pop {r4, pc}
	nop
_021F6BA8: .word 0x00000864
_021F6BAC: .word ov18_021FB72C
_021F6BB0: .word ov18_021FB6F0
_021F6BB4: .word 0x00001860
_021F6BB8: .word gSystem
	thumb_func_end ov18_021F6B00

	thumb_func_start ov18_021F6BBC
ov18_021F6BBC: ; 0x021F6BBC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	ldr r0, _021F6DBC ; =0x00000864
	mov r1, #0
	str r1, [r5, r0]
	add r0, sp, #4
	add r1, sp, #0
	bl System_GetTouchNewCoords
	cmp r0, #1
	bne _021F6C5C
	ldr r0, _021F6DC0 ; =ov18_021FB8A4
	bl TouchscreenHitbox_FindRectAtTouchNew
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021F6BEA
	add sp, #8
	add r0, r1, #0
	pop {r3, r4, r5, r6, r7, pc}
_021F6BEA:
	lsl r1, r0, #2
	ldr r0, _021F6DC4 ; =ov18_021FB84C
	ldr r4, [r0, r1]
	cmp r4, #0
	bne _021F6C32
	ldr r1, [sp]
	ldr r0, [sp, #4]
	sub r1, r1, #4
	sub r0, #0x1b
	str r1, [sp]
	mov r1, #0x28
	str r0, [sp, #4]
	bl _u32_div_f
	add r6, r0, #0
	ldr r0, [sp]
	mov r1, #0x28
	bl _u32_div_f
	lsl r1, r0, #2
	add r0, r0, r1
	add r0, r6, r0
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	ldr r0, _021F6DC8 ; =0x0000185A
	ldrb r1, [r5, r0]
	cmp r2, r1
	bne _021F6C28
	add sp, #8
	mov r0, #4
	pop {r3, r4, r5, r6, r7, pc}
_021F6C28:
	strb r2, [r5, r0]
	ldr r0, _021F6DCC ; =0x000008E9
	bl PlaySE
	b _021F6C56
_021F6C32:
	cmp r4, #0xe
	bne _021F6C3E
	ldr r0, _021F6DD0 ; =0x000008F2
	bl PlaySE
	b _021F6C56
_021F6C3E:
	cmp r4, #2
	bne _021F6C4A
	ldr r0, _021F6DCC ; =0x000008E9
	bl PlaySE
	b _021F6C56
_021F6C4A:
	cmp r4, #5
	bne _021F6C56
	mov r0, #0x25
	lsl r0, r0, #6
	bl PlaySE
_021F6C56:
	add sp, #8
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_021F6C5C:
	ldr r2, _021F6DBC ; =0x00000864
	mov r6, #1
	ldr r7, _021F6DD4 ; =gSystem
	str r6, [r5, r2]
	ldr r3, [r7, #0x4c]
	mov r0, #0x40
	tst r0, r3
	beq _021F6C8C
	ldr r0, _021F6DC8 ; =0x0000185A
	ldrb r1, [r5, r0]
	cmp r1, #5
	bhs _021F6C7A
	add sp, #8
	mov r0, #0xa
	pop {r3, r4, r5, r6, r7, pc}
_021F6C7A:
	sub r1, r1, #5
	add r2, #0x84
	strb r1, [r5, r0]
	add r0, r2, #0
	bl PlaySE
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021F6C8C:
	mov r0, #0x80
	tst r0, r3
	beq _021F6CB8
	ldr r0, _021F6DC8 ; =0x0000185A
	ldrb r0, [r5, r0]
	cmp r0, #0xa
	blo _021F6CA4
	cmp r0, #0xf
	bhs _021F6CA4
	add sp, #8
	mov r0, #0xc
	pop {r3, r4, r5, r6, r7, pc}
_021F6CA4:
	ldr r0, _021F6DC8 ; =0x0000185A
	ldrb r1, [r5, r0]
	add r1, r1, #5
	strb r1, [r5, r0]
	ldr r0, _021F6DD8 ; =0x000008E8
	bl PlaySE
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021F6CB8:
	mov r0, #0x20
	add r1, r3, #0
	tst r1, r0
	beq _021F6CF2
	ldr r3, _021F6DC8 ; =0x0000185A
	ldrb r1, [r5, r3]
	cmp r1, #0
	beq _021F6CDA
	sub r0, r1, #1
	add r2, #0x84
	strb r0, [r5, r3]
	add r0, r2, #0
	bl PlaySE
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021F6CDA:
	sub r1, r3, #1
	ldrb r1, [r5, r1]
	cmp r1, #0
	beq _021F6CEC
	mov r0, #0xe
	strb r0, [r5, r3]
	add sp, #8
	mov r0, #9
	pop {r3, r4, r5, r6, r7, pc}
_021F6CEC:
	add sp, #8
	sub r0, #0x21
	pop {r3, r4, r5, r6, r7, pc}
_021F6CF2:
	mov r0, #0x10
	tst r0, r3
	beq _021F6D36
	ldr r0, _021F6DC8 ; =0x0000185A
	ldrb r1, [r5, r0]
	add r1, r1, #1
	cmp r1, #0xf
	beq _021F6D12
	add r2, #0x84
	strb r1, [r5, r0]
	add r0, r2, #0
	bl PlaySE
	add sp, #8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_021F6D12:
	add r0, r5, #0
	add r1, r4, #0
	bl ov18_021F8950
	ldr r1, _021F6DDC ; =0x00001859
	ldrb r2, [r5, r1]
	add r2, r2, #1
	cmp r2, r0
	bhi _021F6D30
	mov r2, #0
	add r0, r1, #1
	strb r2, [r5, r0]
	add sp, #8
	mov r0, #0xb
	pop {r3, r4, r5, r6, r7, pc}
_021F6D30:
	add sp, #8
	sub r0, r6, #2
	pop {r3, r4, r5, r6, r7, pc}
_021F6D36:
	ldr r1, [r7, #0x48]
	add r0, r1, #0
	tst r0, r6
	beq _021F6D44
	add sp, #8
	mov r0, #4
	pop {r3, r4, r5, r6, r7, pc}
_021F6D44:
	mov r4, #2
	add r0, r1, #0
	tst r0, r4
	beq _021F6D5A
	add r2, #0xdc
	add r0, r2, #0
	bl PlaySE
	add sp, #8
	mov r0, #6
	pop {r3, r4, r5, r6, r7, pc}
_021F6D5A:
	lsl r0, r4, #9
	tst r0, r1
	beq _021F6D66
	add sp, #8
	mov r0, #3
	pop {r3, r4, r5, r6, r7, pc}
_021F6D66:
	lsl r0, r4, #0xa
	tst r0, r1
	beq _021F6D7A
	add r2, #0x85
	add r0, r2, #0
	bl PlaySE
	add sp, #8
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
_021F6D7A:
	lsl r0, r4, #8
	tst r0, r3
	beq _021F6D86
	add sp, #8
	mov r0, #9
	pop {r3, r4, r5, r6, r7, pc}
_021F6D86:
	add r4, #0xfe
	add r0, r3, #0
	tst r0, r4
	beq _021F6D94
	add sp, #8
	mov r0, #0xb
	pop {r3, r4, r5, r6, r7, pc}
_021F6D94:
	mov r0, #4
	tst r0, r1
	beq _021F6DA0
	add sp, #8
	mov r0, #8
	pop {r3, r4, r5, r6, r7, pc}
_021F6DA0:
	mov r0, #8
	tst r1, r0
	beq _021F6DB4
	add r2, #0x8e
	add r0, r2, #0
	bl PlaySE
	add sp, #8
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_021F6DB4:
	sub r0, #9
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F6DBC: .word 0x00000864
_021F6DC0: .word ov18_021FB8A4
_021F6DC4: .word ov18_021FB84C
_021F6DC8: .word 0x0000185A
_021F6DCC: .word 0x000008E9
_021F6DD0: .word 0x000008F2
_021F6DD4: .word gSystem
_021F6DD8: .word 0x000008E8
_021F6DDC: .word 0x00001859
	thumb_func_end ov18_021F6BBC

	thumb_func_start ov18_021F6DE0
ov18_021F6DE0: ; 0x021F6DE0
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #1
	str r0, [sp]
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, #0x25
	str r0, [sp, #8]
	ldr r0, _021F6E1C ; =ov18_021FB878
	ldr r1, _021F6E20 ; =ov18_021FB9F0
	ldr r2, _021F6E24 ; =ov18_021FB688
	add r3, r5, #0
	bl GridInputHandler_Create
	ldr r1, _021F6E28 ; =0x00001864
	mov r2, #1
	str r0, [r5, r1]
	add r0, r5, #0
	mov r1, #0
	bl ov18_021F11C0
	add r0, r5, #0
	add r1, r4, #0
	bl ov18_021F6E58
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
_021F6E1C: .word ov18_021FB878
_021F6E20: .word ov18_021FB9F0
_021F6E24: .word ov18_021FB688
_021F6E28: .word 0x00001864
	thumb_func_end ov18_021F6DE0

	thumb_func_start ov18_021F6E2C
ov18_021F6E2C: ; 0x021F6E2C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #0
	ldr r0, [r0, #0xc]
	bl MenuInputStateMgr_SetState
	ldr r0, _021F6E50 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #8
	tst r1, r0
	bne _021F6E4C
	ldr r0, _021F6E54 ; =0x00001864
	ldr r0, [r4, r0]
	bl GridInputHandler_HandleInput_AllowHold
_021F6E4C:
	pop {r4, pc}
	nop
_021F6E50: .word gSystem
_021F6E54: .word 0x00001864
	thumb_func_end ov18_021F6E2C

	thumb_func_start ov18_021F6E58
ov18_021F6E58: ; 0x021F6E58
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _021F6E90 ; =0x00001864
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
	ldr r2, _021F6E94 ; =ov18_021FBD1C
	add r0, r5, #0
	ldrb r2, [r2, r4]
	mov r1, #0
	bl ov18_021F118C
	pop {r3, r4, r5, pc}
	nop
_021F6E90: .word 0x00001864
_021F6E94: .word ov18_021FBD1C
	thumb_func_end ov18_021F6E58

	thumb_func_start ov18_021F6E98
ov18_021F6E98: ; 0x021F6E98
	push {r3, lr}
	bl ov18_021F6E58
	ldr r0, _021F6EA8 ; =0x000008E8
	bl PlaySE
	pop {r3, pc}
	nop
_021F6EA8: .word 0x000008E8
	thumb_func_end ov18_021F6E98

	thumb_func_start ov18_021F6EAC
ov18_021F6EAC: ; 0x021F6EAC
	push {r4, lr}
	add r4, r0, #0
	bl ov18_021F6E58
	ldr r0, [r4]
	mov r1, #1
	ldr r0, [r0, #0xc]
	bl MenuInputStateMgr_SetState
	pop {r4, pc}
	thumb_func_end ov18_021F6EAC

	thumb_func_start ov18_021F6EC0
ov18_021F6EC0: ; 0x021F6EC0
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0x25
	str r0, [sp, #8]
	ldr r0, _021F6EF8 ; =ov18_021FB828
	ldr r1, _021F6EFC ; =ov18_021FB968
	ldr r2, _021F6F00 ; =ov18_021FB668
	add r3, r4, #0
	bl GridInputHandler_Create
	ldr r1, _021F6F04 ; =0x00001864
	mov r2, #1
	str r0, [r4, r1]
	add r0, r4, #0
	mov r1, #0
	bl ov18_021F11C0
	add r0, r4, #0
	mov r1, #0
	bl ov18_021F6F38
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
_021F6EF8: .word ov18_021FB828
_021F6EFC: .word ov18_021FB968
_021F6F00: .word ov18_021FB668
_021F6F04: .word 0x00001864
	thumb_func_end ov18_021F6EC0

	thumb_func_start ov18_021F6F08
ov18_021F6F08: ; 0x021F6F08
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #0
	ldr r0, [r0, #0xc]
	bl MenuInputStateMgr_SetState
	ldr r0, _021F6F30 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #8
	tst r0, r1
	beq _021F6F24
	mov r0, #6
	pop {r4, pc}
_021F6F24:
	ldr r0, _021F6F34 ; =0x00001864
	ldr r0, [r4, r0]
	bl GridInputHandler_HandleInput_AllowHold
	pop {r4, pc}
	nop
_021F6F30: .word gSystem
_021F6F34: .word 0x00001864
	thumb_func_end ov18_021F6F08

	thumb_func_start ov18_021F6F38
ov18_021F6F38: ; 0x021F6F38
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _021F6F70 ; =0x00001864
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
	ldr r2, _021F6F74 ; =ov18_021FB628
	add r0, r5, #0
	ldrb r2, [r2, r4]
	mov r1, #0
	bl ov18_021F118C
	pop {r3, r4, r5, pc}
	nop
_021F6F70: .word 0x00001864
_021F6F74: .word ov18_021FB628
	thumb_func_end ov18_021F6F38

	thumb_func_start ov18_021F6F78
ov18_021F6F78: ; 0x021F6F78
	push {r3, lr}
	bl ov18_021F6F38
	ldr r0, _021F6F88 ; =0x000008E8
	bl PlaySE
	pop {r3, pc}
	nop
_021F6F88: .word 0x000008E8
	thumb_func_end ov18_021F6F78

	thumb_func_start ov18_021F6F8C
ov18_021F6F8C: ; 0x021F6F8C
	push {r4, lr}
	add r4, r0, #0
	bl ov18_021F6F38
	ldr r0, [r4]
	mov r1, #1
	ldr r0, [r0, #0xc]
	bl MenuInputStateMgr_SetState
	pop {r4, pc}
	thumb_func_end ov18_021F6F8C

	thumb_func_start ov18_021F6FA0
ov18_021F6FA0: ; 0x021F6FA0
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0x25
	str r0, [sp, #8]
	ldr r0, _021F6FD8 ; =ov18_021FBA94
	ldr r1, _021F6FDC ; =ov18_021FBC34
	ldr r2, _021F6FE0 ; =ov18_021FB6A8
	add r3, r4, #0
	bl GridInputHandler_Create
	ldr r1, _021F6FE4 ; =0x00001864
	mov r2, #1
	str r0, [r4, r1]
	add r0, r4, #0
	mov r1, #0
	bl ov18_021F11C0
	add r0, r4, #0
	mov r1, #0
	bl ov18_021F7018
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
_021F6FD8: .word ov18_021FBA94
_021F6FDC: .word ov18_021FBC34
_021F6FE0: .word ov18_021FB6A8
_021F6FE4: .word 0x00001864
	thumb_func_end ov18_021F6FA0

	thumb_func_start ov18_021F6FE8
ov18_021F6FE8: ; 0x021F6FE8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #0
	ldr r0, [r0, #0xc]
	bl MenuInputStateMgr_SetState
	ldr r0, _021F7010 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #8
	tst r0, r1
	beq _021F7004
	mov r0, #0x1b
	pop {r4, pc}
_021F7004:
	ldr r0, _021F7014 ; =0x00001864
	ldr r0, [r4, r0]
	bl GridInputHandler_HandleInput_AllowHold
	pop {r4, pc}
	nop
_021F7010: .word gSystem
_021F7014: .word 0x00001864
	thumb_func_end ov18_021F6FE8

	thumb_func_start ov18_021F7018
ov18_021F7018: ; 0x021F7018
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _021F705C ; =0x00001864
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
	cmp r4, #0x1b
	blt _021F7050
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x23
	bl ov18_021F118C
	pop {r3, r4, r5, pc}
_021F7050:
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x28
	bl ov18_021F118C
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021F705C: .word 0x00001864
	thumb_func_end ov18_021F7018

	thumb_func_start ov18_021F7060
ov18_021F7060: ; 0x021F7060
	push {r4, r5, r6, lr}
	add r6, r2, #0
	add r5, r0, #0
	add r0, r6, #0
	sub r0, #0x1b
	add r4, r1, #0
	cmp r0, #1
	bhi _021F70DA
	ldr r0, _021F70F0 ; =0x0000189C
	ldr r0, [r5, r0]
	lsl r1, r0, #3
	ldr r0, _021F70F4 ; =ov18_021FBC34
	cmp r4, #0
	ldrb r0, [r0, r1]
	beq _021F7082
	cmp r4, #6
	bne _021F70AC
_021F7082:
	ldr r3, _021F70F4 ; =ov18_021FBC34
	mov r1, #0
ov18_021F7086:
	ldrb r2, [r3]
	cmp r0, r2
	bne _021F70A2
	ldr r0, _021F70F8 ; =0x00001864
	lsl r2, r6, #0x18
	add r4, r1, #0
	lsl r1, r1, #0x18
	lsr r2, r2, #0x18
	ldr r0, [r5, r0]
	lsr r1, r1, #0x18
	add r3, r2, #0
	bl GridInputHandler_SetNextLastUnk0FInputs
	b _021F70DA
_021F70A2:
	add r1, r1, #1
	add r3, #8
	cmp r1, #0x1a
	ble ov18_021F7086
	b _021F70DA
_021F70AC:
	cmp r4, #0x15
	beq _021F70B4
	cmp r4, #0x1a
	bne _021F70DA
_021F70B4:
	ldr r3, _021F70FC ; =ov18_021FBC34 + 0xD0
	mov r1, #0x1a
_021F70B8:
	ldrb r2, [r3]
	cmp r0, r2
	bne _021F70D4
	ldr r0, _021F70F8 ; =0x00001864
	lsl r2, r6, #0x18
	add r4, r1, #0
	lsl r1, r1, #0x18
	lsr r2, r2, #0x18
	ldr r0, [r5, r0]
	lsr r1, r1, #0x18
	add r3, r2, #0
	bl GridInputHandler_SetNextLastUnk0FInputs
	b _021F70DA
_021F70D4:
	sub r3, #8
	sub r1, r1, #1
	bpl _021F70B8
_021F70DA:
	add r0, r5, #0
	add r1, r4, #0
	bl ov18_021F7018
	ldr r0, _021F70F0 ; =0x0000189C
	str r6, [r5, r0]
	ldr r0, _021F7100 ; =0x000008E8
	bl PlaySE
	pop {r4, r5, r6, pc}
	nop
_021F70F0: .word 0x0000189C
_021F70F4: .word ov18_021FBC34
_021F70F8: .word 0x00001864
_021F70FC: .word ov18_021FBC34 + 0xD0
_021F7100: .word 0x000008E8
	thumb_func_end ov18_021F7060

	thumb_func_start ov18_021F7104
ov18_021F7104: ; 0x021F7104
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	bl ov18_021F7018
	ldr r0, [r5]
	mov r1, #1
	ldr r0, [r0, #0xc]
	bl MenuInputStateMgr_SetState
	ldr r0, _021F7120 ; =0x0000189C
	str r4, [r5, r0]
	pop {r3, r4, r5, pc}
	nop
_021F7120: .word 0x0000189C
	thumb_func_end ov18_021F7104

	thumb_func_start ov18_021F7124
ov18_021F7124: ; 0x021F7124
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0x25
	str r0, [sp, #8]
	ldr r0, _021F715C ; =ov18_021FBA40
	ldr r1, _021F7160 ; =ov18_021FBB94
	ldr r2, _021F7164 ; =ov18_021FB638
	add r3, r4, #0
	bl GridInputHandler_Create
	ldr r1, _021F7168 ; =0x00001864
	mov r2, #1
	str r0, [r4, r1]
	add r0, r4, #0
	mov r1, #0
	bl ov18_021F11C0
	add r0, r4, #0
	mov r1, #0
	bl ov18_021F719C
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
_021F715C: .word ov18_021FBA40
_021F7160: .word ov18_021FBB94
_021F7164: .word ov18_021FB638
_021F7168: .word 0x00001864
	thumb_func_end ov18_021F7124

	thumb_func_start ov18_021F716C
ov18_021F716C: ; 0x021F716C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #0
	ldr r0, [r0, #0xc]
	bl MenuInputStateMgr_SetState
	ldr r0, _021F7194 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #8
	tst r0, r1
	beq _021F7188
	mov r0, #0x12
	pop {r4, pc}
_021F7188:
	ldr r0, _021F7198 ; =0x00001864
	ldr r0, [r4, r0]
	bl GridInputHandler_HandleInput_AllowHold
	pop {r4, pc}
	nop
_021F7194: .word gSystem
_021F7198: .word 0x00001864
	thumb_func_end ov18_021F716C

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

	thumb_func_start ov18_021F7334
ov18_021F7334: ; 0x021F7334
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	bl ov18_021F719C
	ldr r0, [r5]
	mov r1, #1
	ldr r0, [r0, #0xc]
	bl MenuInputStateMgr_SetState
	ldr r0, _021F7350 ; =0x0000189C
	str r4, [r5, r0]
	pop {r3, r4, r5, pc}
	nop
_021F7350: .word 0x0000189C
	thumb_func_end ov18_021F7334

	thumb_func_start ov18_021F7354
ov18_021F7354: ; 0x021F7354
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0x25
	str r0, [sp, #8]
	ldr r0, _021F738C ; =ov18_021FB6C8
	ldr r1, _021F7390 ; =ov18_021FB780
	ldr r2, _021F7394 ; =ov18_021FB648
	add r3, r4, #0
	bl GridInputHandler_Create
	ldr r1, _021F7398 ; =0x00001864
	mov r2, #1
	str r0, [r4, r1]
	add r0, r4, #0
	mov r1, #0
	bl ov18_021F11C0
	add r0, r4, #0
	mov r1, #0
	bl ov18_021F7444
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
_021F738C: .word ov18_021FB6C8
_021F7390: .word ov18_021FB780
_021F7394: .word ov18_021FB648
_021F7398: .word 0x00001864
	thumb_func_end ov18_021F7354

	thumb_func_start ov18_021F739C
ov18_021F739C: ; 0x021F739C
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _021F7438 ; =0x00001864
	ldr r0, [r5, r0]
	bl GridInputHandler_GetNextInput
	add r4, r0, #0
	ldr r0, [r5]
	mov r1, #0
	ldr r0, [r0, #0xc]
	bl MenuInputStateMgr_SetState
	ldr r1, _021F743C ; =gSystem
	mov r0, #8
	ldr r2, [r1, #0x48]
	tst r0, r2
	beq _021F73C2
	mov r0, #2
	pop {r4, r5, r6, pc}
_021F73C2:
	cmp r4, #0
	bne _021F73DC
	ldr r1, [r1, #0x4c]
	mov r0, #0x20
	tst r0, r1
	beq _021F73D2
	mov r0, #5
	pop {r4, r5, r6, pc}
_021F73D2:
	mov r0, #0x10
	tst r0, r1
	beq _021F73DC
	mov r0, #4
	pop {r4, r5, r6, pc}
_021F73DC:
	cmp r4, #1
	bne _021F73F8
	ldr r0, _021F743C ; =gSystem
	ldr r1, [r0, #0x4c]
	mov r0, #0x20
	tst r0, r1
	beq _021F73EE
	mov r0, #7
	pop {r4, r5, r6, pc}
_021F73EE:
	mov r0, #0x10
	tst r0, r1
	beq _021F73F8
	mov r0, #6
	pop {r4, r5, r6, pc}
_021F73F8:
	ldr r0, _021F7440 ; =ov18_021FB718
	bl TouchscreenHitbox_FindRectAtTouchHeld
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _021F742C
	ldr r0, [r5]
	mov r1, #1
	ldr r0, [r0, #0xc]
	bl MenuInputStateMgr_SetState
	ldr r0, _021F7438 ; =0x00001864
	lsr r4, r6, #1
	lsl r1, r4, #0x18
	ldr r0, [r5, r0]
	lsr r1, r1, #0x18
	bl GridInputHandler_SetNextInput
	add r0, r5, #0
	add r1, r4, #0
	bl ov18_021F7444
	add r0, r6, #4
	pop {r4, r5, r6, pc}
_021F742C:
	ldr r0, _021F7438 ; =0x00001864
	ldr r0, [r5, r0]
	bl GridInputHandler_HandleInput_AllowHold
	pop {r4, r5, r6, pc}
	nop
_021F7438: .word 0x00001864
_021F743C: .word gSystem
_021F7440: .word ov18_021FB718
	thumb_func_end ov18_021F739C

	thumb_func_start ov18_021F7444
ov18_021F7444: ; 0x021F7444
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _021F74A0 ; =0x00001864
	add r4, r1, #0
	ldr r0, [r5, r0]
	bl GridInputHandler_GetDpadBox
	add r1, sp, #0
	add r1, #1
	add r2, sp, #0
	bl DpadMenuBox_GetPosition
	cmp r4, #0
	bne _021F7470
	ldr r1, _021F74A4 ; =0x0000187C
	add r0, r5, #0
	ldr r1, [r5, r1]
	bl ov18_021F3AD0
	add r1, sp, #0
	strb r0, [r1, #1]
	b _021F7482
_021F7470:
	cmp r4, #1
	bne _021F7482
	ldr r1, _021F74A8 ; =0x00001878
	add r0, r5, #0
	ldr r1, [r5, r1]
	bl ov18_021F3AD0
	add r1, sp, #0
	strb r0, [r1, #1]
_021F7482:
	mov r0, #0x67
	add r2, sp, #0
	lsl r0, r0, #4
	ldrb r1, [r2, #1]
	ldrb r2, [r2]
	ldr r0, [r5, r0]
	bl ManagedSprite_SetPositionXY
	ldr r2, _021F74AC ; =ov18_021FB618
	add r0, r5, #0
	ldrb r2, [r2, r4]
	mov r1, #0
	bl ov18_021F118C
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021F74A0: .word 0x00001864
_021F74A4: .word 0x0000187C
_021F74A8: .word 0x00001878
_021F74AC: .word ov18_021FB618
	thumb_func_end ov18_021F7444

	thumb_func_start ov18_021F74B0
ov18_021F74B0: ; 0x021F74B0
	push {r3, lr}
	bl ov18_021F7444
	ldr r0, _021F74C0 ; =0x000008E8
	bl PlaySE
	pop {r3, pc}
	nop
_021F74C0: .word 0x000008E8
	thumb_func_end ov18_021F74B0

	thumb_func_start ov18_021F74C4
ov18_021F74C4: ; 0x021F74C4
	push {r4, lr}
	add r4, r0, #0
	bl ov18_021F7444
	ldr r0, [r4]
	mov r1, #1
	ldr r0, [r0, #0xc]
	bl MenuInputStateMgr_SetState
	pop {r4, pc}
	thumb_func_end ov18_021F74C4

	thumb_func_start ov18_021F74D8
ov18_021F74D8: ; 0x021F74D8
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0x25
	str r0, [sp, #8]
	ldr r0, _021F7510 ; =ov18_021FB6DC
	ldr r1, _021F7514 ; =ov18_021FB7A0
	ldr r2, _021F7518 ; =ov18_021FB678
	add r3, r4, #0
	bl GridInputHandler_Create
	ldr r1, _021F751C ; =0x00001864
	mov r2, #1
	str r0, [r4, r1]
	add r0, r4, #0
	mov r1, #0
	bl ov18_021F11C0
	add r0, r4, #0
	mov r1, #0
	bl ov18_021F75C8
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
_021F7510: .word ov18_021FB6DC
_021F7514: .word ov18_021FB7A0
_021F7518: .word ov18_021FB678
_021F751C: .word 0x00001864
	thumb_func_end ov18_021F74D8

	thumb_func_start ov18_021F7520
ov18_021F7520: ; 0x021F7520
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _021F75BC ; =0x00001864
	ldr r0, [r5, r0]
	bl GridInputHandler_GetNextInput
	add r4, r0, #0
	ldr r0, [r5]
	mov r1, #0
	ldr r0, [r0, #0xc]
	bl MenuInputStateMgr_SetState
	ldr r1, _021F75C0 ; =gSystem
	mov r0, #8
	ldr r2, [r1, #0x48]
	tst r0, r2
	beq _021F7546
	mov r0, #2
	pop {r4, r5, r6, pc}
_021F7546:
	cmp r4, #0
	bne _021F7560
	ldr r1, [r1, #0x4c]
	mov r0, #0x20
	tst r0, r1
	beq _021F7556
	mov r0, #5
	pop {r4, r5, r6, pc}
_021F7556:
	mov r0, #0x10
	tst r0, r1
	beq _021F7560
	mov r0, #4
	pop {r4, r5, r6, pc}
_021F7560:
	cmp r4, #1
	bne _021F757C
	ldr r0, _021F75C0 ; =gSystem
	ldr r1, [r0, #0x4c]
	mov r0, #0x20
	tst r0, r1
	beq _021F7572
	mov r0, #7
	pop {r4, r5, r6, pc}
_021F7572:
	mov r0, #0x10
	tst r0, r1
	beq _021F757C
	mov r0, #6
	pop {r4, r5, r6, pc}
_021F757C:
	ldr r0, _021F75C4 ; =ov18_021FB718
	bl TouchscreenHitbox_FindRectAtTouchHeld
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _021F75B0
	ldr r0, [r5]
	mov r1, #1
	ldr r0, [r0, #0xc]
	bl MenuInputStateMgr_SetState
	ldr r0, _021F75BC ; =0x00001864
	lsr r4, r6, #1
	lsl r1, r4, #0x18
	ldr r0, [r5, r0]
	lsr r1, r1, #0x18
	bl GridInputHandler_SetNextInput
	add r0, r5, #0
	add r1, r4, #0
	bl ov18_021F75C8
	add r0, r6, #4
	pop {r4, r5, r6, pc}
_021F75B0:
	ldr r0, _021F75BC ; =0x00001864
	ldr r0, [r5, r0]
	bl GridInputHandler_HandleInput_AllowHold
	pop {r4, r5, r6, pc}
	nop
_021F75BC: .word 0x00001864
_021F75C0: .word gSystem
_021F75C4: .word ov18_021FB718
	thumb_func_end ov18_021F7520

	thumb_func_start ov18_021F75C8
ov18_021F75C8: ; 0x021F75C8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _021F7628 ; =0x00001864
	add r4, r1, #0
	ldr r0, [r5, r0]
	bl GridInputHandler_GetDpadBox
	add r1, sp, #0
	add r1, #1
	add r2, sp, #0
	bl DpadMenuBox_GetPosition
	cmp r4, #0
	bne _021F75F4
	ldr r1, _021F762C ; =0x00001884
	add r0, r5, #0
	ldr r1, [r5, r1]
	bl ov18_021F3AD0
	add r1, sp, #0
	strb r0, [r1, #1]
	b _021F7608
_021F75F4:
	cmp r4, #1
	bne _021F7608
	mov r1, #0x62
	lsl r1, r1, #6
	ldr r1, [r5, r1]
	add r0, r5, #0
	bl ov18_021F3AD0
	add r1, sp, #0
	strb r0, [r1, #1]
_021F7608:
	mov r0, #0x67
	add r2, sp, #0
	lsl r0, r0, #4
	ldrb r1, [r2, #1]
	ldrb r2, [r2]
	ldr r0, [r5, r0]
	bl ManagedSprite_SetPositionXY
	ldr r2, _021F7630 ; =ov18_021FB61C
	add r0, r5, #0
	ldrb r2, [r2, r4]
	mov r1, #0
	bl ov18_021F118C
	pop {r3, r4, r5, pc}
	nop
_021F7628: .word 0x00001864
_021F762C: .word 0x00001884
_021F7630: .word ov18_021FB61C
	thumb_func_end ov18_021F75C8

	thumb_func_start ov18_021F7634
ov18_021F7634: ; 0x021F7634
	push {r3, lr}
	bl ov18_021F75C8
	ldr r0, _021F7644 ; =0x000008E8
	bl PlaySE
	pop {r3, pc}
	nop
_021F7644: .word 0x000008E8
	thumb_func_end ov18_021F7634

	thumb_func_start ov18_021F7648
ov18_021F7648: ; 0x021F7648
	push {r4, lr}
	add r4, r0, #0
	bl ov18_021F75C8
	ldr r0, [r4]
	mov r1, #1
	ldr r0, [r0, #0xc]
	bl MenuInputStateMgr_SetState
	pop {r4, pc}
	thumb_func_end ov18_021F7648

	thumb_func_start ov18_021F765C
ov18_021F765C: ; 0x021F765C
	push {r3, lr}
	add r1, sp, #0
	bl System_GetTouchHeldCoords
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov18_021F765C

	thumb_func_start ov18_021F7668
ov18_021F7668: ; 0x021F7668
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0x25
	str r0, [sp, #8]
	ldr r0, _021F76A0 ; =ov18_021FB744
	ldr r1, _021F76A4 ; =ov18_021FB8D4
	ldr r2, _021F76A8 ; =ov18_021FB6B8
	add r3, r4, #0
	bl GridInputHandler_Create
	ldr r1, _021F76AC ; =0x00001864
	mov r2, #1
	str r0, [r4, r1]
	add r0, r4, #0
	mov r1, #0
	bl ov18_021F11C0
	add r0, r4, #0
	mov r1, #0
	bl ov18_021F76E0
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
_021F76A0: .word ov18_021FB744
_021F76A4: .word ov18_021FB8D4
_021F76A8: .word ov18_021FB6B8
_021F76AC: .word 0x00001864
	thumb_func_end ov18_021F7668

	thumb_func_start ov18_021F76B0
ov18_021F76B0: ; 0x021F76B0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #0
	ldr r0, [r0, #0xc]
	bl MenuInputStateMgr_SetState
	ldr r0, _021F76D8 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #8
	tst r0, r1
	beq _021F76CC
	mov r0, #4
	pop {r4, pc}
_021F76CC:
	ldr r0, _021F76DC ; =0x00001864
	ldr r0, [r4, r0]
	bl GridInputHandler_HandleInput_AllowHold
	pop {r4, pc}
	nop
_021F76D8: .word gSystem
_021F76DC: .word 0x00001864
	thumb_func_end ov18_021F76B0

	thumb_func_start ov18_021F76E0
ov18_021F76E0: ; 0x021F76E0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _021F7718 ; =0x00001864
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
	ldr r2, _021F771C ; =ov18_021FB620
	add r0, r5, #0
	ldrb r2, [r2, r4]
	mov r1, #0
	bl ov18_021F118C
	pop {r3, r4, r5, pc}
	nop
_021F7718: .word 0x00001864
_021F771C: .word ov18_021FB620
	thumb_func_end ov18_021F76E0

	thumb_func_start ov18_021F7720
ov18_021F7720: ; 0x021F7720
	push {r3, lr}
	bl ov18_021F76E0
	ldr r0, _021F7730 ; =0x000008E8
	bl PlaySE
	pop {r3, pc}
	nop
_021F7730: .word 0x000008E8
	thumb_func_end ov18_021F7720

	thumb_func_start ov18_021F7734
ov18_021F7734: ; 0x021F7734
	push {r4, lr}
	add r4, r0, #0
	bl ov18_021F76E0
	ldr r0, [r4]
	mov r1, #1
	ldr r0, [r0, #0xc]
	bl MenuInputStateMgr_SetState
	pop {r4, pc}
	thumb_func_end ov18_021F7734

	thumb_func_start ov18_021F7748
ov18_021F7748: ; 0x021F7748
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	mov r0, #0x25
	str r0, [sp, #8]
	ldr r0, _021F7780 ; =ov18_021FB9A8
	ldr r1, _021F7784 ; =ov18_021FBB0C
	ldr r2, _021F7788 ; =ov18_021FB658
	add r3, r4, #0
	bl GridInputHandler_Create
	ldr r1, _021F778C ; =0x00001864
	mov r2, #1
	str r0, [r4, r1]
	add r0, r4, #0
	mov r1, #0
	bl ov18_021F11C0
	add r0, r4, #0
	mov r1, #0
	bl ov18_021F77C0
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
_021F7780: .word ov18_021FB9A8
_021F7784: .word ov18_021FBB0C
_021F7788: .word ov18_021FB658
_021F778C: .word 0x00001864
	thumb_func_end ov18_021F7748

	thumb_func_start ov18_021F7790
ov18_021F7790: ; 0x021F7790
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4]
	mov r1, #0
	ldr r0, [r0, #0xc]
	bl MenuInputStateMgr_SetState
	ldr r0, _021F77B8 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #8
	tst r0, r1
	beq _021F77AC
	mov r0, #0xf
	pop {r4, pc}
_021F77AC:
	ldr r0, _021F77BC ; =0x00001864
	ldr r0, [r4, r0]
	bl GridInputHandler_HandleInput_AllowHold
	pop {r4, pc}
	nop
_021F77B8: .word gSystem
_021F77BC: .word 0x00001864
	thumb_func_end ov18_021F7790

	thumb_func_start ov18_021F77C0
ov18_021F77C0: ; 0x021F77C0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, _021F77F8 ; =0x00001864
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
	ldr r2, _021F77FC ; =ov18_021FBD28
	add r0, r5, #0
	ldrb r2, [r2, r4]
	mov r1, #0
	bl ov18_021F118C
	pop {r3, r4, r5, pc}
	nop
_021F77F8: .word 0x00001864
_021F77FC: .word ov18_021FBD28
	thumb_func_end ov18_021F77C0

	thumb_func_start ov18_021F7800
ov18_021F7800: ; 0x021F7800
	push {r4, r5, r6, lr}
	add r4, r2, #0
	add r5, r0, #0
	add r6, r1, #0
	cmp r4, #0xf
	bne _021F789E
	cmp r6, #0
	bne _021F7858
	ldr r0, _021F7948 ; =0x0000189C
	ldr r1, [r5, r0]
	cmp r1, #0
	blt _021F7832
	cmp r1, #2
	bgt _021F7832
	sub r0, #0x38
	add r6, r1, #0
	lsl r1, r1, #0x18
	lsl r2, r4, #0x18
	ldr r0, [r5, r0]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	mov r3, #0xf
	bl GridInputHandler_SetNextLastUnk0FInputs
	b _021F7932
_021F7832:
	cmp r1, #0xa
	blt _021F7932
	cmp r1, #0xc
	bgt _021F7932
	add r0, r1, #0
	mov r1, #5
	bl _s32_div_f
	ldr r0, _021F794C ; =0x00001864
	add r6, r1, #0
	lsl r1, r6, #0x18
	lsl r2, r4, #0x18
	ldr r0, [r5, r0]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	mov r3, #0xf
	bl GridInputHandler_SetNextLastUnk0FInputs
	b _021F7932
_021F7858:
	cmp r6, #0xa
	bne _021F7932
	ldr r0, _021F7948 ; =0x0000189C
	ldr r1, [r5, r0]
	cmp r1, #0
	blt _021F7880
	cmp r1, #2
	bgt _021F7880
	add r6, r1, #0
	add r6, #0xa
	sub r0, #0x38
	lsl r1, r6, #0x18
	lsl r2, r4, #0x18
	ldr r0, [r5, r0]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	mov r3, #0xf
	bl GridInputHandler_SetNextLastUnk0FInputs
	b _021F7932
_021F7880:
	cmp r1, #0xa
	blt _021F7932
	cmp r1, #0xc
	bgt _021F7932
	ldr r0, _021F794C ; =0x00001864
	add r6, r1, #0
	lsl r1, r1, #0x18
	lsl r2, r4, #0x18
	ldr r0, [r5, r0]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	mov r3, #0xf
	bl GridInputHandler_SetNextLastUnk0FInputs
	b _021F7932
_021F789E:
	cmp r4, #0x10
	bne _021F7932
	cmp r6, #4
	bne _021F78EE
	ldr r0, _021F7948 ; =0x0000189C
	ldr r1, [r5, r0]
	cmp r1, #3
	blt _021F78C8
	cmp r1, #4
	bgt _021F78C8
	sub r0, #0x38
	add r6, r1, #0
	lsl r1, r1, #0x18
	lsl r2, r4, #0x18
	ldr r0, [r5, r0]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	mov r3, #0x10
	bl GridInputHandler_SetNextLastUnk0FInputs
	b _021F7932
_021F78C8:
	cmp r1, #0xd
	blt _021F7932
	cmp r1, #0xe
	bgt _021F7932
	add r0, r1, #0
	mov r1, #5
	bl _s32_div_f
	ldr r0, _021F794C ; =0x00001864
	add r6, r1, #0
	lsl r1, r6, #0x18
	lsl r2, r4, #0x18
	ldr r0, [r5, r0]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	mov r3, #0x10
	bl GridInputHandler_SetNextLastUnk0FInputs
	b _021F7932
_021F78EE:
	cmp r6, #0xe
	bne _021F7932
	ldr r0, _021F7948 ; =0x0000189C
	ldr r1, [r5, r0]
	cmp r1, #3
	blt _021F7916
	cmp r1, #4
	bgt _021F7916
	add r6, r1, #0
	add r6, #0xa
	sub r0, #0x38
	lsl r1, r6, #0x18
	lsl r2, r4, #0x18
	ldr r0, [r5, r0]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	mov r3, #0x10
	bl GridInputHandler_SetNextLastUnk0FInputs
	b _021F7932
_021F7916:
	cmp r1, #0xd
	blt _021F7932
	cmp r1, #0xe
	bgt _021F7932
	ldr r0, _021F794C ; =0x00001864
	add r6, r1, #0
	lsl r1, r1, #0x18
	lsl r2, r4, #0x18
	ldr r0, [r5, r0]
	lsr r1, r1, #0x18
	lsr r2, r2, #0x18
	mov r3, #0x10
	bl GridInputHandler_SetNextLastUnk0FInputs
_021F7932:
	add r0, r5, #0
	add r1, r6, #0
	bl ov18_021F77C0
	ldr r0, _021F7948 ; =0x0000189C
	str r4, [r5, r0]
	ldr r0, _021F7950 ; =0x000008E8
	bl PlaySE
	pop {r4, r5, r6, pc}
	nop
_021F7948: .word 0x0000189C
_021F794C: .word 0x00001864
_021F7950: .word 0x000008E8
	thumb_func_end ov18_021F7800

	thumb_func_start ov18_021F7954
ov18_021F7954: ; 0x021F7954
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	bl ov18_021F77C0
	ldr r0, [r5]
	mov r1, #1
	ldr r0, [r0, #0xc]
	bl MenuInputStateMgr_SetState
	ldr r0, _021F7970 ; =0x0000189C
	str r4, [r5, r0]
	pop {r3, r4, r5, pc}
	nop
_021F7970: .word 0x0000189C
	thumb_func_end ov18_021F7954

	thumb_func_start ov18_021F7974
ov18_021F7974: ; 0x021F7974
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	add r0, sp, #4
	add r1, sp, #0
	bl System_GetTouchNewCoords
	cmp r0, #1
	bne _021F7A1A
	ldr r0, _021F7B58 ; =ov18_021FB8A4
	bl TouchscreenHitbox_FindRectAtTouchNew
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021F799C
	add sp, #8
	add r0, r1, #0
	pop {r4, r5, r6, pc}
_021F799C:
	lsl r1, r0, #2
	ldr r0, _021F7B5C ; =ov18_021FB84C
	ldr r4, [r0, r1]
	cmp r4, #0
	bne _021F79FC
	ldr r1, [sp]
	ldr r0, [sp, #4]
	sub r1, r1, #4
	sub r0, #0x1b
	str r1, [sp]
	mov r1, #0x28
	str r0, [sp, #4]
	bl _u32_div_f
	add r6, r0, #0
	ldr r0, [sp]
	mov r1, #0x28
	bl _u32_div_f
	lsl r1, r0, #2
	add r0, r0, r1
	add r0, r6, r0
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	ldr r0, _021F7B60 ; =0x0000185A
	ldrb r1, [r5, r0]
	cmp r2, r1
	bne _021F79F2
	cmp r1, #0
	bne _021F79EC
	sub r0, r0, #1
	ldrb r0, [r5, r0]
	cmp r0, #0
	bne _021F79EC
	ldr r0, _021F7B64 ; =0x000008E9
	bl PlaySE
	add sp, #8
	mov r0, #2
	pop {r4, r5, r6, pc}
_021F79EC:
	add sp, #8
	mov r0, #4
	pop {r4, r5, r6, pc}
_021F79F2:
	strb r2, [r5, r0]
	ldr r0, _021F7B64 ; =0x000008E9
	bl PlaySE
	b _021F7A14
_021F79FC:
	cmp r4, #2
	bne _021F7A08
	ldr r0, _021F7B64 ; =0x000008E9
	bl PlaySE
	b _021F7A14
_021F7A08:
	cmp r4, #5
	bne _021F7A14
	mov r0, #0x25
	lsl r0, r0, #6
	bl PlaySE
_021F7A14:
	add sp, #8
	add r0, r4, #0
	pop {r4, r5, r6, pc}
_021F7A1A:
	ldr r1, _021F7B68 ; =gSystem
	mov r0, #0x40
	ldr r2, [r1, #0x4c]
	tst r0, r2
	beq _021F7A42
	ldr r0, _021F7B60 ; =0x0000185A
	ldrb r1, [r5, r0]
	cmp r1, #5
	bhs _021F7A32
	add sp, #8
	mov r0, #0xa
	pop {r4, r5, r6, pc}
_021F7A32:
	sub r1, r1, #5
	strb r1, [r5, r0]
	ldr r0, _021F7B6C ; =0x000008E8
	bl PlaySE
	add sp, #8
	mov r0, #0
	pop {r4, r5, r6, pc}
_021F7A42:
	mov r0, #0x80
	tst r0, r2
	beq _021F7A6E
	ldr r0, _021F7B60 ; =0x0000185A
	ldrb r0, [r5, r0]
	cmp r0, #0xa
	blo _021F7A5A
	cmp r0, #0xf
	bhs _021F7A5A
	add sp, #8
	mov r0, #0xc
	pop {r4, r5, r6, pc}
_021F7A5A:
	ldr r0, _021F7B60 ; =0x0000185A
	ldrb r1, [r5, r0]
	add r1, r1, #5
	strb r1, [r5, r0]
	ldr r0, _021F7B6C ; =0x000008E8
	bl PlaySE
	add sp, #8
	mov r0, #0
	pop {r4, r5, r6, pc}
_021F7A6E:
	mov r0, #0x20
	add r3, r2, #0
	tst r3, r0
	beq _021F7AA6
	ldr r2, _021F7B60 ; =0x0000185A
	ldrb r1, [r5, r2]
	cmp r1, #0
	beq _021F7A8E
	sub r0, r1, #1
	strb r0, [r5, r2]
	ldr r0, _021F7B6C ; =0x000008E8
	bl PlaySE
	add sp, #8
	mov r0, #0
	pop {r4, r5, r6, pc}
_021F7A8E:
	sub r1, r2, #1
	ldrb r1, [r5, r1]
	cmp r1, #0
	beq _021F7AA0
	mov r0, #0xe
	strb r0, [r5, r2]
	add sp, #8
	mov r0, #9
	pop {r4, r5, r6, pc}
_021F7AA0:
	add sp, #8
	sub r0, #0x21
	pop {r4, r5, r6, pc}
_021F7AA6:
	mov r0, #0x10
	tst r0, r2
	beq _021F7AEA
	ldr r0, _021F7B60 ; =0x0000185A
	ldrb r1, [r5, r0]
	add r1, r1, #1
	cmp r1, #0xf
	beq _021F7AC4
	strb r1, [r5, r0]
	ldr r0, _021F7B6C ; =0x000008E8
	bl PlaySE
	add sp, #8
	mov r0, #0
	pop {r4, r5, r6, pc}
_021F7AC4:
	add r0, r5, #0
	add r1, r4, #0
	bl ov18_021F8950
	ldr r1, _021F7B70 ; =0x00001859
	ldrb r2, [r5, r1]
	add r2, r2, #1
	cmp r2, r0
	bhi _021F7AE2
	mov r2, #0
	add r0, r1, #1
	strb r2, [r5, r0]
	add sp, #8
	mov r0, #0xb
	pop {r4, r5, r6, pc}
_021F7AE2:
	mov r0, #0
	add sp, #8
	mvn r0, r0
	pop {r4, r5, r6, pc}
_021F7AEA:
	ldr r0, [r1, #0x48]
	mov r1, #1
	tst r1, r0
	beq _021F7AF8
	add sp, #8
	mov r0, #4
	pop {r4, r5, r6, pc}
_021F7AF8:
	mov r3, #2
	add r1, r0, #0
	tst r1, r3
	beq _021F7B0E
	mov r0, #0x25
	lsl r0, r0, #6
	bl PlaySE
	add sp, #8
	mov r0, #6
	pop {r4, r5, r6, pc}
_021F7B0E:
	lsl r1, r3, #9
	tst r1, r0
	beq _021F7B1A
	add sp, #8
	mov r0, #3
	pop {r4, r5, r6, pc}
_021F7B1A:
	lsl r1, r3, #0xa
	tst r1, r0
	beq _021F7B2C
	ldr r0, _021F7B64 ; =0x000008E9
	bl PlaySE
	add sp, #8
	mov r0, #2
	pop {r4, r5, r6, pc}
_021F7B2C:
	lsl r1, r3, #8
	tst r1, r2
	beq _021F7B38
	add sp, #8
	mov r0, #9
	pop {r4, r5, r6, pc}
_021F7B38:
	add r3, #0xfe
	add r1, r2, #0
	tst r1, r3
	beq _021F7B46
	add sp, #8
	mov r0, #0xb
	pop {r4, r5, r6, pc}
_021F7B46:
	mov r1, #4
	tst r0, r1
	beq _021F7B52
	add sp, #8
	mov r0, #8
	pop {r4, r5, r6, pc}
_021F7B52:
	sub r0, r1, #5
	add sp, #8
	pop {r4, r5, r6, pc}
	.balign 4, 0
_021F7B58: .word ov18_021FB8A4
_021F7B5C: .word ov18_021FB84C
_021F7B60: .word 0x0000185A
_021F7B64: .word 0x000008E9
_021F7B68: .word gSystem
_021F7B6C: .word 0x000008E8
_021F7B70: .word 0x00001859
	thumb_func_end ov18_021F7974

	thumb_func_start ov18_021F7B74
ov18_021F7B74: ; 0x021F7B74
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021F7B8C ; =0x00001864
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _021F7B8A
	bl GridInputHandler_Free
	ldr r0, _021F7B8C ; =0x00001864
	mov r1, #0
	str r1, [r4, r0]
_021F7B8A:
	pop {r4, pc}
	.balign 4, 0
_021F7B8C: .word 0x00001864
	thumb_func_end ov18_021F7B74

	thumb_func_start ov18_021F7B90
ov18_021F7B90: ; 0x021F7B90
	bx lr
	.balign 4, 0
	thumb_func_end ov18_021F7B90

	thumb_func_start ov18_021F7B94
ov18_021F7B94: ; 0x021F7B94
	push {r4, r5, r6, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	bl System_GetTouchNew
	cmp r0, #1
	bne _021F7BE8
	ldr r0, _021F7C04 ; =ov18_021FB704
	bl TouchscreenHitbox_FindRectAtTouchNew
	add r6, r0, #0
	mov r0, #0
	mvn r0, r0
	cmp r6, r0
	beq _021F7BFE
	add r0, sp, #4
	add r1, sp, #0
	bl System_GetTouchNewCoords
	ldr r0, _021F7C08 ; =ov18_021FB698
	lsl r1, r6, #2
	ldr r6, [r0, r1]
	cmp r6, #1
	bne _021F7BDE
	ldr r1, _021F7C0C ; =0x000018A2
	ldr r0, [r5]
	ldrh r1, [r5, r1]
	ldr r0, [r0]
	bl Pokedex_CheckMonCaughtFlag
	cmp r0, #0
	bne _021F7BDE
	mov r0, #0
	add sp, #8
	mvn r0, r0
	pop {r4, r5, r6, pc}
_021F7BDE:
	mov r0, #1
	str r0, [r4]
	add sp, #8
	add r0, r6, #0
	pop {r4, r5, r6, pc}
_021F7BE8:
	ldr r0, _021F7C10 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #2
	tst r1, r0
	beq _021F7BFC
	mov r0, #0
	str r0, [r4]
	add sp, #8
	mov r0, #3
	pop {r4, r5, r6, pc}
_021F7BFC:
	sub r0, r0, #3
_021F7BFE:
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_021F7C04: .word ov18_021FB704
_021F7C08: .word ov18_021FB698
_021F7C0C: .word 0x000018A2
_021F7C10: .word gSystem
	thumb_func_end ov18_021F7B94

	thumb_func_start ov18_021F7C14
ov18_021F7C14: ; 0x021F7C14
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	bl ov18_021F7B94
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021F7CE6
	bl System_GetTouchNew
	cmp r0, #1
	bne _021F7C4C
	ldr r0, _021F7CE8 ; =ov18_021FB934
	bl TouchscreenHitbox_FindHitboxAtTouchNew
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021F7C40
	add r0, r1, #0
	pop {r3, r4, r5, pc}
_021F7C40:
	mov r1, #1
	str r1, [r5]
	lsl r1, r0, #2
	ldr r0, _021F7CEC ; =ov18_021FB904
	ldr r0, [r0, r1]
	pop {r3, r4, r5, pc}
_021F7C4C:
	mov r0, #0
	str r0, [r5]
	ldr r2, _021F7CF0 ; =gSystem
	mov r0, #0x40
	ldr r1, [r2, #0x4c]
	tst r0, r1
	beq _021F7C5E
	mov r0, #5
	pop {r3, r4, r5, pc}
_021F7C5E:
	mov r0, #0x80
	tst r0, r1
	beq _021F7C68
	mov r0, #7
	pop {r3, r4, r5, pc}
_021F7C68:
	ldr r0, [r2, #0x48]
	mov r2, #1
	tst r2, r0
	beq _021F7C88
	ldr r0, _021F7CF4 ; =0x000018C9
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _021F7C7C
	mov r0, #0xe
	pop {r3, r4, r5, pc}
_021F7C7C:
	cmp r0, #1
	bne _021F7C84
	mov r0, #0xf
	pop {r3, r4, r5, pc}
_021F7C84:
	mov r0, #0xd
	pop {r3, r4, r5, pc}
_021F7C88:
	mov r3, #4
	add r2, r0, #0
	tst r2, r3
	beq _021F7CA0
	ldr r0, _021F7CF8 ; =0x000018C8
	ldrsb r0, [r4, r0]
	cmp r0, #0
	bne _021F7C9C
	mov r0, #0xc
	pop {r3, r4, r5, pc}
_021F7C9C:
	mov r0, #0xb
	pop {r3, r4, r5, pc}
_021F7CA0:
	ldr r2, _021F7CF8 ; =0x000018C8
	ldrsb r2, [r4, r2]
	cmp r2, #0
	bne _021F7CB2
	add r3, #0xfc
	tst r0, r3
	beq _021F7CBC
	mov r0, #0xc
	pop {r3, r4, r5, pc}
_021F7CB2:
	lsl r2, r3, #7
	tst r0, r2
	beq _021F7CBC
	mov r0, #0xb
	pop {r3, r4, r5, pc}
_021F7CBC:
	mov r0, #0x20
	tst r0, r1
	beq _021F7CC6
	mov r0, #0x10
	pop {r3, r4, r5, pc}
_021F7CC6:
	mov r0, #0x10
	tst r1, r0
	beq _021F7CE4
	ldr r1, _021F7CFC ; =0x000018A2
	ldr r0, [r4]
	ldrh r1, [r4, r1]
	ldr r0, [r0]
	bl Pokedex_CheckMonCaughtFlag
	cmp r0, #0
	beq _021F7CE0
	mov r0, #1
	pop {r3, r4, r5, pc}
_021F7CE0:
	mov r0, #2
	pop {r3, r4, r5, pc}
_021F7CE4:
	sub r0, #0x11
_021F7CE6:
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021F7CE8: .word ov18_021FB934
_021F7CEC: .word ov18_021FB904
_021F7CF0: .word gSystem
_021F7CF4: .word 0x000018C9
_021F7CF8: .word 0x000018C8
_021F7CFC: .word 0x000018A2
	thumb_func_end ov18_021F7C14

	thumb_func_start ov18_021F7D00
ov18_021F7D00: ; 0x021F7D00
	push {r4, lr}
	add r4, r1, #0
	bl ov18_021F7B94
	mov r3, #0
	mvn r3, r3
	cmp r0, r3
	bne _021F7D28
	mov r0, #0
	ldr r1, _021F7D2C ; =gSystem
	str r0, [r4]
	ldr r2, [r1, #0x4c]
	mov r1, #0x20
	tst r1, r2
	bne _021F7D28
	mov r0, #0x10
	tst r0, r2
	beq _021F7D26
	mov r3, #2
_021F7D26:
	add r0, r3, #0
_021F7D28:
	pop {r4, pc}
	nop
_021F7D2C: .word gSystem
	thumb_func_end ov18_021F7D00

	thumb_func_start ov18_021F7D30
ov18_021F7D30: ; 0x021F7D30
	push {r3, r4, r5, lr}
	add r4, r0, #0
	add r5, r1, #0
	bl ov18_021F7B94
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021F7DBA
	bl System_GetTouchNew
	cmp r0, #1
	bne _021F7D68
	ldr r0, _021F7DBC ; =ov18_021FB804
	bl TouchscreenHitbox_FindRectAtTouchNew
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021F7D5C
	add r0, r1, #0
	pop {r3, r4, r5, pc}
_021F7D5C:
	mov r1, #1
	str r1, [r5]
	lsl r1, r0, #2
	ldr r0, _021F7DC0 ; =ov18_021FB760
	ldr r0, [r0, r1]
	pop {r3, r4, r5, pc}
_021F7D68:
	ldr r2, _021F7DC4 ; =gSystem
	mov r0, #0
	str r0, [r5]
	ldr r0, [r2, #0x4c]
	mov r1, #0x40
	tst r1, r0
	beq _021F7D7A
	mov r0, #5
	pop {r3, r4, r5, pc}
_021F7D7A:
	mov r1, #0x80
	tst r1, r0
	beq _021F7D84
	mov r0, #7
	pop {r3, r4, r5, pc}
_021F7D84:
	mov r1, #0x20
	tst r1, r0
	beq _021F7DA2
	ldr r1, _021F7DC8 ; =0x000018A2
	ldr r0, [r4]
	ldrh r1, [r4, r1]
	ldr r0, [r0]
	bl Pokedex_CheckMonCaughtFlag
	cmp r0, #0
	beq _021F7D9E
	mov r0, #1
	pop {r3, r4, r5, pc}
_021F7D9E:
	mov r0, #0
	pop {r3, r4, r5, pc}
_021F7DA2:
	mov r1, #0x10
	tst r0, r1
	beq _021F7DAC
	mov r0, #0xc
	pop {r3, r4, r5, pc}
_021F7DAC:
	ldr r1, [r2, #0x48]
	mov r0, #1
	tst r1, r0
	beq _021F7DB8
	mov r0, #0xb
	pop {r3, r4, r5, pc}
_021F7DB8:
	sub r0, r0, #2
_021F7DBA:
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021F7DBC: .word ov18_021FB804
_021F7DC0: .word ov18_021FB760
_021F7DC4: .word gSystem
_021F7DC8: .word 0x000018A2
	thumb_func_end ov18_021F7D30

	thumb_func_start ov18_021F7DCC
ov18_021F7DCC: ; 0x021F7DCC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl System_GetTouchNew
	cmp r0, #1
	bne _021F7DF8
	ldr r0, _021F7E60 ; =ov18_021FB7E0
	bl TouchscreenHitbox_FindRectAtTouchNew
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021F7DEC
	add r0, r1, #0
	pop {r3, r4, r5, pc}
_021F7DEC:
	mov r1, #1
	str r1, [r4]
	lsl r1, r0, #2
	ldr r0, _021F7E64 ; =ov18_021FB7C0
	ldr r0, [r0, r1]
	pop {r3, r4, r5, pc}
_021F7DF8:
	mov r0, #0
	ldr r2, _021F7E68 ; =gSystem
	str r0, [r4]
	ldr r3, [r2, #0x4c]
	mov r1, #0x40
	tst r1, r3
	beq _021F7E14
	ldr r1, _021F7E6C ; =0x000018C7
	ldrb r1, [r5, r1]
	lsl r1, r1, #0x1b
	lsr r1, r1, #0x1b
	beq _021F7E5C
	mov r0, #2
	pop {r3, r4, r5, pc}
_021F7E14:
	mov r0, #0x80
	tst r0, r3
	beq _021F7E2C
	ldr r0, _021F7E6C ; =0x000018C7
	ldrb r0, [r5, r0]
	lsl r0, r0, #0x1b
	lsr r0, r0, #0x1b
	bne _021F7E28
	mov r0, #1
	pop {r3, r4, r5, pc}
_021F7E28:
	mov r0, #3
	pop {r3, r4, r5, pc}
_021F7E2C:
	ldr r2, [r2, #0x48]
	mov r0, #0x20
	tst r0, r2
	beq _021F7E38
	mov r0, #6
	pop {r3, r4, r5, pc}
_021F7E38:
	mov r0, #0x10
	add r1, r2, #0
	tst r1, r0
	beq _021F7E44
	mov r0, #7
	pop {r3, r4, r5, pc}
_021F7E44:
	lsl r0, r0, #6
	tst r0, r2
	beq _021F7E4E
	mov r0, #4
	pop {r3, r4, r5, pc}
_021F7E4E:
	mov r0, #3
	add r1, r2, #0
	tst r1, r0
	beq _021F7E5A
	mov r0, #5
	pop {r3, r4, r5, pc}
_021F7E5A:
	sub r0, r0, #4
_021F7E5C:
	pop {r3, r4, r5, pc}
	nop
_021F7E60: .word ov18_021FB7E0
_021F7E64: .word ov18_021FB7C0
_021F7E68: .word gSystem
_021F7E6C: .word 0x000018C7
	thumb_func_end ov18_021F7DCC

	thumb_func_start ov18_021F7E70
ov18_021F7E70: ; 0x021F7E70
	push {r4, lr}
	add r4, r1, #0
	bl ov18_021F7B94
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021F7EC8
	bl System_GetTouchNew
	cmp r0, #1
	bne _021F7EA2
	ldr r0, _021F7ECC ; =ov18_021FB630
	bl TouchscreenHitbox_FindHitboxAtTouchNew
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	bne _021F7E9A
	add r0, r1, #0
	pop {r4, pc}
_021F7E9A:
	mov r0, #1
	str r0, [r4]
	mov r0, #4
	pop {r4, pc}
_021F7EA2:
	mov r0, #0
	ldr r2, _021F7ED0 ; =gSystem
	str r0, [r4]
	ldr r3, [r2, #0x4c]
	mov r1, #0x20
	tst r1, r3
	beq _021F7EB4
	mov r0, #2
	pop {r4, pc}
_021F7EB4:
	mov r1, #0x10
	tst r1, r3
	bne _021F7EC8
	ldr r1, [r2, #0x48]
	mov r0, #1
	tst r1, r0
	beq _021F7EC6
	mov r0, #3
	pop {r4, pc}
_021F7EC6:
	sub r0, r0, #2
_021F7EC8:
	pop {r4, pc}
	nop
_021F7ECC: .word ov18_021FB630
_021F7ED0: .word gSystem
	thumb_func_end ov18_021F7E70


    .rodata

ov18_021FB618:
	.byte 0x3E, 0x3E, 0x23, 0x23
	.size ov18_021FB618,.-ov18_021FB618

	.global ov18_021FB61C
ov18_021FB61C:
	.byte 0x3E, 0x3E, 0x23, 0x23
	.size ov18_021FB61C,.-ov18_021FB61C

	.global ov18_021FB620
ov18_021FB620:
	.byte 0x26, 0x26, 0x26, 0x26, 0x23, 0x23, 0x00, 0x00
	.size ov18_021FB620,.-ov18_021FB620

	.global ov18_021FB628
ov18_021FB628:
	.byte 0x27, 0x27, 0x27, 0x27, 0x27, 0x27, 0x23, 0x23
	.size ov18_021FB628,.-ov18_021FB628

	.global ov18_021FB630
ov18_021FB630:
	.byte 0x48, 0x67, 0x30, 0xCF, 0xFF, 0x00, 0x00, 0x00
	.size ov18_021FB630,.-ov18_021FB630

	.global ov18_021FB638
ov18_021FB638:
	.word ov18_021F7B90
	.word ov18_021F7B90
	.word ov18_021F71DC
	.word ov18_021F7334
	.size ov18_021FB638,.-ov18_021FB638

	.global ov18_021FB648
ov18_021FB648:
	.word ov18_021F7B90
	.word ov18_021F7B90
	.word ov18_021F74B0
	.word ov18_021F74C4
	.size ov18_021FB648,.-ov18_021FB648

	.global ov18_021FB658
ov18_021FB658:
	.word ov18_021F7B90
	.word ov18_021F7B90
	.word ov18_021F7800
	.word ov18_021F7954
	.size ov18_021FB658,.-ov18_021FB658

	.global ov18_021FB668
ov18_021FB668:
	.word ov18_021F7B90
	.word ov18_021F7B90
	.word ov18_021F6F78
	.word ov18_021F6F8C
	.size ov18_021FB668,.-ov18_021FB668

	.global ov18_021FB678
ov18_021FB678:
	.word ov18_021F7B90
	.word ov18_021F7B90
	.word ov18_021F7634
	.word ov18_021F7648
	.size ov18_021FB678,.-ov18_021FB678

	.global ov18_021FB688
ov18_021FB688:
	.word ov18_021F7B90
	.word ov18_021F7B90
	.word ov18_021F6E98
	.word ov18_021F6EAC
	.size ov18_021FB688,.-ov18_021FB688

	.global ov18_021FB698
ov18_021FB698:
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.size ov18_021FB698,.-ov18_021FB698

	.global ov18_021FB6A8
ov18_021FB6A8:
	.word ov18_021F7B90
	.word ov18_021F7B90
	.word ov18_021F7060
	.word ov18_021F7104
	.size ov18_021FB6A8,.-ov18_021FB6A8

	.global ov18_021FB6B8
ov18_021FB6B8:
	.word ov18_021F7B90
	.word ov18_021F7B90
	.word ov18_021F7720
	.word ov18_021F7734
	.size ov18_021FB6B8,.-ov18_021FB6B8

	.global ov18_021FB6C8
ov18_021FB6C8:
	.byte 0x2E, 0x49, 0x1A, 0xE5, 0x76, 0x91, 0x1A, 0xE5
	.byte 0xA4, 0xBB, 0x04, 0x4B, 0xA4, 0xBB, 0xB4, 0xFB, 0xFF, 0x00, 0x00, 0x00
	.size ov18_021FB6C8,.-ov18_021FB6C8

	.global ov18_021FB6DC
ov18_021FB6DC:
	.byte 0x2E, 0x49, 0x1A, 0xE5
	.byte 0x76, 0x91, 0x1A, 0xE5, 0xA4, 0xBB, 0x04, 0x4B, 0xA4, 0xBB, 0xB4, 0xFB, 0xFF, 0x00, 0x00, 0x00
	.size ov18_021FB6DC,.-ov18_021FB6DC

	.global ov18_021FB6F0
ov18_021FB6F0:
	.byte 0x06, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00, 0x00
	.byte 0x02, 0x00, 0x00, 0x00
	.size ov18_021FB6F0,.-ov18_021FB6F0

	.global ov18_021FB704
ov18_021FB704:
	.byte 0xA8, 0xB7, 0x07, 0x39, 0xA8, 0xB7, 0x47, 0x79, 0xA8, 0xB7, 0x87, 0xB9
	.byte 0xA8, 0xB7, 0xC7, 0xF9, 0xFF, 0x00, 0x00, 0x00
	.size ov18_021FB704,.-ov18_021FB704

	.global ov18_021FB718
ov18_021FB718:
	.byte 0x31, 0x46, 0xE6, 0xF5, 0x31, 0x46, 0x0A, 0x19
	.byte 0x79, 0x8E, 0xE6, 0xF5, 0x79, 0x8E, 0x0A, 0x19, 0xFF, 0x00, 0x00, 0x00
	.size ov18_021FB718,.-ov18_021FB718

	.global ov18_021FB72C
ov18_021FB72C:
	.byte 0x70, 0x8F, 0x60, 0xA0
	.byte 0x00, 0x97, 0x00, 0xFF, 0x98, 0xBB, 0x00, 0x3F, 0x98, 0xBB, 0x40, 0xBF, 0x98, 0xBB, 0xC0, 0xFF
	.byte 0xFF, 0x00, 0x00, 0x00
	.size ov18_021FB72C,.-ov18_021FB72C

	.global ov18_021FB744
ov18_021FB744:
	.byte 0x40, 0x4F, 0x30, 0x67, 0x40, 0x4F, 0x98, 0xCF, 0x78, 0x87, 0x30, 0x67
	.byte 0x78, 0x87, 0x98, 0xCF, 0xA4, 0xBB, 0x04, 0x4B, 0xA4, 0xBB, 0xB4, 0xFB, 0xFF, 0x00, 0x00, 0x00
	.size ov18_021FB744,.-ov18_021FB744

	.global ov18_021FB760
ov18_021FB760:
	.byte 0x04, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00
	.byte 0x08, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00
	.size ov18_021FB760,.-ov18_021FB760

	.global ov18_021FB780
ov18_021FB780:
	.byte 0x34, 0x3C, 0x00, 0x00, 0x02, 0x01, 0x00, 0x00, 0xCC, 0x84, 0x00, 0x00, 0x00, 0x82, 0x01, 0x01
	.byte 0x28, 0xB0, 0x00, 0x00, 0x01, 0x00, 0x03, 0x03, 0xD8, 0xB0, 0x00, 0x00, 0x01, 0x00, 0x02, 0x02
	.size ov18_021FB780,.-ov18_021FB780

	.global ov18_021FB7A0
ov18_021FB7A0:
	.byte 0x34, 0x3C, 0x00, 0x00, 0x02, 0x01, 0x00, 0x00, 0xCC, 0x84, 0x00, 0x00, 0x00, 0x82, 0x01, 0x01
	.byte 0x28, 0xB0, 0x00, 0x00, 0x01, 0x00, 0x03, 0x03, 0xD8, 0xB0, 0x00, 0x00, 0x01, 0x00, 0x02, 0x02
	.size ov18_021FB7A0,.-ov18_021FB7A0

	.global ov18_021FB7C0
ov18_021FB7C0:
	.byte 0x00, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00, 0x07, 0x00, 0x00, 0x00
	.size ov18_021FB7C0,.-ov18_021FB7C0

	.global ov18_021FB7E0
ov18_021FB7E0:
	.byte 0x30, 0x3F, 0x38, 0x47, 0x78, 0x88, 0x38, 0x47, 0x30, 0x3F, 0xB8, 0xC7, 0x78, 0x88, 0xB8, 0xC7
	.byte 0xA0, 0xB7, 0x08, 0x77, 0xA0, 0xB7, 0x80, 0xFF, 0x43, 0x74, 0x02, 0x72, 0x43, 0x74, 0x82, 0xFD
	.byte 0xFF, 0x00, 0x00, 0x00
	.size ov18_021FB7E0,.-ov18_021FB7E0

	.global ov18_021FB804
ov18_021FB804:
	.byte 0x08, 0x17, 0x22, 0xD5, 0x20, 0x2F, 0x22, 0xD5, 0x68, 0x77, 0x22, 0xD5
	.byte 0x50, 0x5F, 0x22, 0xD5, 0x05, 0x14, 0xE7, 0xFC, 0x6B, 0x7A, 0xE7, 0xFC, 0x15, 0x6A, 0xE7, 0xFC
	.byte 0x86, 0x9A, 0x86, 0xFF, 0xFF, 0x00, 0x00, 0x00
	.size ov18_021FB804,.-ov18_021FB804

	.global ov18_021FB828
ov18_021FB828:
	.byte 0x30, 0x3F, 0x18, 0x6F, 0x30, 0x3F, 0x90, 0xE7
	.byte 0x50, 0x5F, 0x18, 0x6F, 0x50, 0x5F, 0x90, 0xE7, 0x70, 0x7F, 0x18, 0x6F, 0x70, 0x7F, 0x90, 0xE7
	.byte 0xA4, 0xBB, 0x04, 0x4B, 0xA4, 0xBB, 0xB4, 0xFB, 0xFF, 0x00, 0x00, 0x00
	.size ov18_021FB828,.-ov18_021FB828

	.global ov18_021FB84C
ov18_021FB84C:
	.byte 0x00, 0x00, 0x00, 0x00
	.byte 0x0E, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x0B, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00
	.byte 0x07, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x02, 0x00, 0x00, 0x00, 0x03, 0x00, 0x00, 0x00
	.byte 0x04, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00
	.size ov18_021FB84C,.-ov18_021FB84C

	.global ov18_021FB878
ov18_021FB878:
	.byte 0x08, 0x17, 0x80, 0xD7, 0x20, 0x2F, 0x38, 0x7F
	.byte 0x38, 0x47, 0x38, 0xB1, 0x50, 0x5F, 0x38, 0xB7, 0x68, 0x77, 0x38, 0xEF, 0x80, 0x8F, 0x38, 0x6F
	.byte 0x38, 0x57, 0xD0, 0xEF, 0xA4, 0xBB, 0x04, 0x4B, 0xA4, 0xBB, 0x5C, 0xA3, 0xA4, 0xBB, 0xB4, 0xFB
	.byte 0xFF, 0x00, 0x00, 0x00
	.size ov18_021FB878,.-ov18_021FB878

	.global ov18_021FB8A4
ov18_021FB8A4:
	.byte 0x04, 0x7B, 0x1B, 0xE2, 0x00, 0x7C, 0x00, 0x17, 0x05, 0x14, 0xE7, 0xFC
	.byte 0x83, 0x92, 0xE7, 0xFC, 0x15, 0x82, 0xE7, 0xFC, 0x80, 0x8F, 0x30, 0x4F, 0x80, 0x8F, 0xA8, 0xC7
	.byte 0x98, 0xBB, 0x00, 0x3F, 0x98, 0xBB, 0x40, 0x7F, 0x98, 0xBB, 0x80, 0xBF, 0x98, 0xBB, 0xC0, 0xFF
	.byte 0xFF, 0x00, 0x00, 0x00
	.size ov18_021FB8A4,.-ov18_021FB8A4

	.global ov18_021FB8D4
ov18_021FB8D4:
	.byte 0x4C, 0x48, 0x00, 0x00, 0x04, 0x02, 0x01, 0x01, 0xB4, 0x48, 0x00, 0x00
	.byte 0x05, 0x03, 0x00, 0x00, 0x4C, 0x80, 0x00, 0x00, 0x00, 0x04, 0x03, 0x03, 0xB4, 0x80, 0x00, 0x00
	.byte 0x01, 0x05, 0x02, 0x02, 0x28, 0xB0, 0x00, 0x00, 0x02, 0x00, 0x05, 0x05, 0xD8, 0xB0, 0x00, 0x00
	.byte 0x03, 0x01, 0x04, 0x04
	.size ov18_021FB8D4,.-ov18_021FB8D4

	.global ov18_021FB904
ov18_021FB904:
	.byte 0x04, 0x00, 0x00, 0x00, 0x05, 0x00, 0x00, 0x00, 0x06, 0x00, 0x00, 0x00
	.byte 0x07, 0x00, 0x00, 0x00, 0x08, 0x00, 0x00, 0x00, 0x09, 0x00, 0x00, 0x00, 0x0A, 0x00, 0x00, 0x00
	.byte 0x0B, 0x00, 0x00, 0x00, 0x0C, 0x00, 0x00, 0x00, 0x0D, 0x00, 0x00, 0x00, 0x0E, 0x00, 0x00, 0x00
	.byte 0x0F, 0x00, 0x00, 0x00
	.size ov18_021FB904,.-ov18_021FB904

	.global ov18_021FB934
ov18_021FB934:
	.byte 0x28, 0x37, 0x52, 0xDD, 0x40, 0x4F, 0x52, 0xDD, 0x88, 0x97, 0x52, 0xDD
	.byte 0x70, 0x7F, 0x52, 0xDD, 0x25, 0x34, 0xE7, 0xFC, 0x8B, 0x9A, 0xE7, 0xFC, 0x35, 0x8A, 0xE7, 0xFC
	.byte 0x06, 0x19, 0x46, 0x81, 0x06, 0x19, 0xBE, 0xF7, 0xFE, 0x21, 0x4D, 0x0D, 0xFE, 0x21, 0x6D, 0x0D
	.byte 0xFE, 0x21, 0x8D, 0x0D, 0xFF, 0x00, 0x00, 0x00
	.size ov18_021FB934,.-ov18_021FB934

	.global ov18_021FB968
ov18_021FB968:
	.byte 0x44, 0x38, 0x00, 0x00, 0x06, 0x02, 0x01, 0x01
	.byte 0xBC, 0x38, 0x00, 0x00, 0x07, 0x03, 0x00, 0x00, 0x44, 0x58, 0x00, 0x00, 0x00, 0x04, 0x03, 0x03
	.byte 0xBC, 0x58, 0x00, 0x00, 0x01, 0x05, 0x02, 0x02, 0x44, 0x78, 0x00, 0x00, 0x02, 0x06, 0x05, 0x05
	.byte 0xBC, 0x78, 0x00, 0x00, 0x03, 0x07, 0x04, 0x04, 0x28, 0xB0, 0x00, 0x00, 0x04, 0x00, 0x07, 0x07
	.byte 0xD8, 0xB0, 0x00, 0x00, 0x05, 0x01, 0x06, 0x06
	.size ov18_021FB968,.-ov18_021FB968

	.global ov18_021FB9A8
ov18_021FB9A8:
	.byte 0x28, 0x47, 0x10, 0x2F, 0x28, 0x47, 0x40, 0x5F
	.byte 0x28, 0x47, 0x70, 0x8F, 0x28, 0x47, 0xA0, 0xBF, 0x28, 0x47, 0xD0, 0xEF, 0x50, 0x6F, 0x10, 0x2F
	.byte 0x50, 0x6F, 0x40, 0x5F, 0x50, 0x6F, 0x70, 0x8F, 0x50, 0x6F, 0xA0, 0xBF, 0x50, 0x6F, 0xD0, 0xEF
	.byte 0x78, 0x97, 0x10, 0x2F, 0x78, 0x97, 0x40, 0x5F, 0x78, 0x97, 0x70, 0x8F, 0x78, 0x97, 0xA0, 0xBF
	.byte 0x78, 0x97, 0xD0, 0xEF, 0xA4, 0xBB, 0x04, 0x4B, 0xA4, 0xBB, 0xB4, 0xFB, 0xFF, 0x00, 0x00, 0x00
	.size ov18_021FB9A8,.-ov18_021FB9A8

	.global ov18_021FB9F0
ov18_021FB9F0:
	.byte 0xAC, 0x10, 0x00, 0x00, 0x00, 0x01, 0x00, 0x00, 0x5C, 0x28, 0x00, 0x00, 0x00, 0x02, 0x01, 0x06
	.byte 0x74, 0x40, 0x00, 0x00, 0x01, 0x03, 0x02, 0x06, 0x70, 0x58, 0x00, 0x00, 0x02, 0x04, 0x03, 0x06
	.byte 0x88, 0x70, 0x00, 0x00, 0x03, 0x05, 0x04, 0x04, 0x54, 0x88, 0x00, 0x00, 0x04, 0x88, 0x05, 0x05
	.byte 0xE0, 0x48, 0x00, 0x00, 0x00, 0x04, 0x81, 0x06, 0x28, 0xB0, 0x00, 0x00, 0x05, 0x07, 0x07, 0x08
	.byte 0x80, 0xB0, 0x00, 0x00, 0x05, 0x08, 0x07, 0x09, 0xD8, 0xB0, 0x00, 0x00, 0x05, 0x09, 0x08, 0x09
	.size ov18_021FB9F0,.-ov18_021FB9F0

	.global ov18_021FBA40
ov18_021FBA40:
	.byte 0x28, 0x37, 0x03, 0x3C, 0x28, 0x37, 0x43, 0x7C, 0x28, 0x37, 0x83, 0xBC, 0x28, 0x37, 0xC3, 0xFC
	.byte 0x40, 0x4F, 0x03, 0x3C, 0x40, 0x4F, 0x43, 0x7C, 0x40, 0x4F, 0x83, 0xBC, 0x40, 0x4F, 0xC3, 0xFC
	.byte 0x58, 0x68, 0x03, 0x3C, 0x58, 0x68, 0x43, 0x7C, 0x58, 0x68, 0x83, 0xBC, 0x58, 0x68, 0xC3, 0xFC
	.byte 0x70, 0x7F, 0x03, 0x3C, 0x70, 0x7F, 0x43, 0x7C, 0x70, 0x7F, 0x83, 0xBC, 0x70, 0x7F, 0xC3, 0xFC
	.byte 0x88, 0x97, 0x03, 0x3C, 0x88, 0x97, 0x43, 0x7C, 0xA4, 0xBB, 0x04, 0x4B, 0xA4, 0xBB, 0xB4, 0xFB
	.byte 0xFF, 0x00, 0x00, 0x00
	.size ov18_021FBA40,.-ov18_021FBA40

	.global ov18_021FBA94
ov18_021FBA94:
	.byte 0x28, 0x37, 0x18, 0x27
	.byte 0x28, 0x37, 0x38, 0x47
	.byte 0x28, 0x37, 0x58, 0x67
	.byte 0x28, 0x37, 0x78, 0x87
	.byte 0x28, 0x37, 0x98, 0xA7
	.byte 0x28, 0x37, 0xB8, 0xC7
	.byte 0x28, 0x37, 0xD8, 0xE7
	.byte 0x48, 0x57, 0x18, 0x27
	.byte 0x48, 0x57, 0x38, 0x47
	.byte 0x48, 0x57, 0x58, 0x67
	.byte 0x48, 0x57, 0x78, 0x87
	.byte 0x48, 0x57, 0x98, 0xA7
	.byte 0x48, 0x57, 0xB8, 0xC7
	.byte 0x48, 0x57, 0xD8, 0xE7
	.byte 0x68, 0x77, 0x18, 0x27
	.byte 0x68, 0x77, 0x38, 0x47
	.byte 0x68, 0x77, 0x58, 0x67
	.byte 0x68, 0x77, 0x78, 0x87
	.byte 0x68, 0x77, 0x98, 0xA7
	.byte 0x68, 0x77, 0xB8, 0xC7
	.byte 0x68, 0x77, 0xD8, 0xE7
	.byte 0x88, 0x97, 0x18, 0x27
	.byte 0x88, 0x97, 0x38, 0x47
	.byte 0x88, 0x97, 0x58, 0x67
	.byte 0x88, 0x97, 0x78, 0x87
	.byte 0x88, 0x97, 0x98, 0xA7
	.byte 0x88, 0x97, 0xD8, 0xE7
	.byte 0xA4, 0xBB, 0x04, 0x4B
	.byte 0xA4, 0xBB, 0xB4, 0xFB
	.byte 0xFF, 0x00, 0x00, 0x00
	.size ov18_021FBA94,.-ov18_021FBA94

	.global ov18_021FBB0C
ov18_021FBB0C:
	.byte 0x20, 0x38, 0x00, 0x00
	.byte 0x0F, 0x05, 0x04, 0x01, 0x50, 0x38, 0x00, 0x00, 0x0F, 0x06, 0x00, 0x02, 0x80, 0x38, 0x00, 0x00
	.byte 0x0F, 0x07, 0x01, 0x03, 0xB0, 0x38, 0x00, 0x00, 0x10, 0x08, 0x02, 0x04, 0xE0, 0x38, 0x00, 0x00
	.byte 0x10, 0x09, 0x03, 0x00, 0x20, 0x60, 0x00, 0x00, 0x00, 0x0A, 0x09, 0x06, 0x50, 0x60, 0x00, 0x00
	.byte 0x01, 0x0B, 0x05, 0x07, 0x80, 0x60, 0x00, 0x00, 0x02, 0x0C, 0x06, 0x08, 0xB0, 0x60, 0x00, 0x00
	.byte 0x03, 0x0D, 0x07, 0x09, 0xE0, 0x60, 0x00, 0x00, 0x04, 0x0E, 0x08, 0x05, 0x20, 0x88, 0x00, 0x00
	.byte 0x05, 0x0F, 0x0E, 0x0B, 0x50, 0x88, 0x00, 0x00, 0x06, 0x0F, 0x0A, 0x0C, 0x80, 0x88, 0x00, 0x00
	.byte 0x07, 0x0F, 0x0B, 0x0D, 0xB0, 0x88, 0x00, 0x00, 0x08, 0x10, 0x0C, 0x0E, 0xE0, 0x88, 0x00, 0x00
	.byte 0x09, 0x10, 0x0D, 0x0A, 0x28, 0xB0, 0x00, 0x00, 0x0A, 0x00, 0x10, 0x10, 0xD8, 0xB0, 0x00, 0x00
	.byte 0x0E, 0x04, 0x0F, 0x0F
	.size ov18_021FBB0C,.-ov18_021FBB0C

	.global ov18_021FBB94
ov18_021FBB94:
	.byte 0x20, 0x30, 0x00, 0x00, 0x12, 0x04, 0x03, 0x01, 0x60, 0x30, 0x00, 0x00
	.byte 0x12, 0x05, 0x00, 0x02, 0xA0, 0x30, 0x00, 0x00, 0x13, 0x06, 0x01, 0x03, 0xE0, 0x30, 0x00, 0x00
	.byte 0x13, 0x07, 0x02, 0x00, 0x20, 0x48, 0x00, 0x00, 0x00, 0x08, 0x07, 0x05, 0x60, 0x48, 0x00, 0x00
	.byte 0x01, 0x09, 0x04, 0x06, 0xA0, 0x48, 0x00, 0x00, 0x02, 0x0A, 0x05, 0x07, 0xE0, 0x48, 0x00, 0x00
	.byte 0x03, 0x0B, 0x06, 0x04, 0x20, 0x60, 0x00, 0x00, 0x04, 0x0C, 0x0B, 0x09, 0x60, 0x60, 0x00, 0x00
	.byte 0x05, 0x0D, 0x08, 0x0A, 0xA0, 0x60, 0x00, 0x00, 0x06, 0x0E, 0x09, 0x0B, 0xE0, 0x60, 0x00, 0x00
	.byte 0x07, 0x0F, 0x0A, 0x08, 0x20, 0x78, 0x00, 0x00, 0x08, 0x10, 0x0F, 0x0D, 0x60, 0x78, 0x00, 0x00
	.byte 0x09, 0x11, 0x0C, 0x0E, 0xA0, 0x78, 0x00, 0x00, 0x0A, 0x13, 0x0D, 0x0F, 0xE0, 0x78, 0x00, 0x00
	.byte 0x0B, 0x13, 0x0E, 0x0C, 0x20, 0x90, 0x00, 0x00, 0x0C, 0x12, 0x11, 0x11, 0x60, 0x90, 0x00, 0x00
	.byte 0x0D, 0x12, 0x10, 0x10, 0x28, 0xB0, 0x00, 0x00, 0x10, 0x00, 0x13, 0x13, 0xD8, 0xB0, 0x00, 0x00
	.byte 0x0F, 0x03, 0x12, 0x12
	.size ov18_021FBB94,.-ov18_021FBB94

	.global ov18_021FBC34
ov18_021FBC34:
	.byte 0x20, 0x30, 0x00, 0x00, 0x1B, 0x07, 0x06, 0x01
	.byte 0x40, 0x30, 0x00, 0x00, 0x1B, 0x08, 0x00, 0x02
	.byte 0x60, 0x30, 0x00, 0x00, 0x1B, 0x09, 0x01, 0x03
	.byte 0x80, 0x30, 0x00, 0x00, 0x1B, 0x0A, 0x02, 0x04
	.byte 0xA0, 0x30, 0x00, 0x00, 0x1C, 0x0B, 0x03, 0x05
	.byte 0xC0, 0x30, 0x00, 0x00, 0x1C, 0x0C, 0x04, 0x06
	.byte 0xE0, 0x30, 0x00, 0x00, 0x1C, 0x0D, 0x05, 0x00
	.byte 0x20, 0x50, 0x00, 0x00, 0x00, 0x0E, 0x0D, 0x08
	.byte 0x40, 0x50, 0x00, 0x00, 0x01, 0x0F, 0x07, 0x09
	.byte 0x60, 0x50, 0x00, 0x00, 0x02, 0x10, 0x08, 0x0A
	.byte 0x80, 0x50, 0x00, 0x00, 0x03, 0x11, 0x09, 0x0B
	.byte 0xA0, 0x50, 0x00, 0x00, 0x04, 0x12, 0x0A, 0x0C
	.byte 0xC0, 0x50, 0x00, 0x00, 0x05, 0x13, 0x0B, 0x0D
	.byte 0xE0, 0x50, 0x00, 0x00, 0x06, 0x14, 0x0C, 0x07
	.byte 0x20, 0x70, 0x00, 0x00, 0x07, 0x15, 0x14, 0x0F
	.byte 0x40, 0x70, 0x00, 0x00, 0x08, 0x16, 0x0E, 0x10
	.byte 0x60, 0x70, 0x00, 0x00, 0x09, 0x17, 0x0F, 0x11
	.byte 0x80, 0x70, 0x00, 0x00, 0x0A, 0x18, 0x10, 0x12
	.byte 0xA0, 0x70, 0x00, 0x00, 0x0B, 0x19, 0x11, 0x13
	.byte 0xC0, 0x70, 0x00, 0x00, 0x0C, 0x1C, 0x12, 0x14
	.byte 0xE0, 0x70, 0x00, 0x00, 0x0D, 0x1A, 0x13, 0x0E
	.byte 0x20, 0x90, 0x00, 0x00, 0x0E, 0x1B, 0x1A, 0x16
	.byte 0x40, 0x90, 0x00, 0x00, 0x0F, 0x1B, 0x15, 0x17
	.byte 0x60, 0x90, 0x00, 0x00, 0x10, 0x1B, 0x16, 0x18
	.byte 0x80, 0x90, 0x00, 0x00, 0x11, 0x1B, 0x17, 0x19
	.byte 0xA0, 0x90, 0x00, 0x00, 0x12, 0x1C, 0x18, 0x1A
	.byte 0xE0, 0x90, 0x00, 0x00, 0x14, 0x1C, 0x19, 0x15
	.byte 0x28, 0xB0, 0x00, 0x00, 0x15, 0x00, 0x1C, 0x1C
	.byte 0xD8, 0xB0, 0x00, 0x00, 0x1A, 0x06, 0x1B, 0x1B
	.size ov18_021FBC34,.-ov18_021FBC34

	; file boundary
	.balign 4, 0

	.global ov18_021FBD1C
ov18_021FBD1C:
	.byte 0x27, 0x23, 0x24, 0x3B
	.byte 0x3C, 0x26, 0x22, 0x23, 0x23, 0x23, 0x00, 0x00
	.size ov18_021FBD1C,.-ov18_021FBD1C

	.global ov18_021FBD28
ov18_021FBD28:
	.byte 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22
	.byte 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x22, 0x23, 0x23, 0x00, 0x00, 0x00
	.size ov18_021FBD28,.-ov18_021FBD28

	.global ov18_021FBD3C
ov18_021FBD3C:
	.byte 0x26, 0x26, 0x26, 0x26
	.byte 0x26, 0x26, 0x26, 0x26, 0x26, 0x26, 0x26, 0x26, 0x26, 0x26, 0x26, 0x26, 0x26, 0x26, 0x23, 0x23
	.size ov18_021FBD3C,.-ov18_021FBD3C

	.global ov18_021FBD50
