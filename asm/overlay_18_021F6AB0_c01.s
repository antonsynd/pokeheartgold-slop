	.include "asm/macros.inc"
	.include "overlay_18_021F6AB0.inc"
	.include "global.inc"
	.public ov18_021F6B00
	.public ov18_021F6BBC
	.extern ov18_021FB6F0
	.extern ov18_021FB72C
	.extern ov18_021FB84C
	.extern ov18_021FB8A4

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

