	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_022280A8
	.extern ov07_0221C448
	.extern ov07_02222590
	.extern ov07_0222260C
	.extern ov07_02222674
	.extern ov07_02236713
	.extern ov07_02236714
	.extern ov07_02236715
	.extern ov07_02236716
	.extern ov07_02236717

	.text

	.text
	thumb_func_start ov07_022280A8
ov07_022280A8: ; 0x022280A8
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r2, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _022280BC
	cmp r0, #1
	beq _022280F6
	b _0222814E
_022280BC:
	ldrb r1, [r4, #1]
	ldr r2, _02228160 ; =ov07_02236714
	ldr r5, _02228164 ; =ov07_02236715
	lsl r0, r1, #2
	add r3, r1, r0
	ldr r0, _02228168 ; =ov07_02236716
	ldr r1, _0222816C ; =ov07_02236713
	ldrb r0, [r0, r3]
	ldrb r1, [r1, r3]
	ldrb r2, [r2, r3]
	str r0, [sp]
	mov r0, #0x64
	str r0, [sp, #4]
	ldr r0, _02228170 ; =ov07_02236717
	ldrb r0, [r0, r3]
	ldrb r3, [r5, r3]
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x10
	bl ov07_02222590
	ldrb r0, [r4, #1]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4, #1]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	pop {r4, r5, pc}
_022280F6:
	add r0, r4, #0
	add r0, #0x10
	bl ov07_0222260C
	cmp r0, #0
	bne _02228114
	ldrb r0, [r4, #1]
	cmp r0, #3
	ldrb r0, [r4]
	bhs _02228110
	sub r0, r0, #1
	strb r0, [r4]
	b _02228114
_02228110:
	add r0, r0, #1
	strb r0, [r4]
_02228114:
	mov r2, #0x10
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	mov r1, #0xc
	bl Pokepic_SetAttr
	mov r2, #0x12
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	mov r1, #0xd
	bl Pokepic_SetAttr
	mov r0, #2
	mov r1, #4
	ldrsh r0, [r4, r0]
	ldrsh r1, [r4, r1]
	ldr r2, [r4, #0x24]
	bl ov07_02222674
	mov r2, #2
	add r3, r0, #0
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	mov r1, #1
	add r2, r2, r3
	bl Pokepic_SetAttr
	add sp, #0xc
	pop {r4, r5, pc}
_0222814E:
	ldr r0, [r4, #8]
	add r1, r2, #0
	bl ov07_0221C448
	add r0, r4, #0
	bl Heap_Free
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
_02228160: .word ov07_02236714
_02228164: .word ov07_02236715
_02228168: .word ov07_02236716
_0222816C: .word ov07_02236713
_02228170: .word ov07_02236717
	thumb_func_end ov07_022280A8

