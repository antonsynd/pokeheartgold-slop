	.include "asm/macros.inc"
	.include "overlay_18_021F6AB0.inc"
	.include "global.inc"
	.public ov18_021F7974
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

