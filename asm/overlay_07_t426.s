	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_02228510
	.extern ov07_0221C448
	.extern ov07_02222268
	.extern ov07_022222B4
	.extern ov07_02222590
	.extern ov07_0222260C
	.extern ov07_022226C4
	.extern ov07_022366D8
	.extern ov07_022366D9
	.extern ov07_022366DA
	.extern ov07_022366F5
	.extern ov07_022366F6
	.extern ov07_022366F7
	.extern ov07_022366F8
	.extern ov07_022366F9

	.text

	.text
	thumb_func_start ov07_02228510
ov07_02228510: ; 0x02228510
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r2, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _02228524
	cmp r0, #1
	beq _02228590
	b _02228604
_02228524:
	ldrb r1, [r4, #1]
	ldr r2, _02228618 ; =ov07_022366F6
	ldr r5, _0222861C ; =ov07_022366F7
	lsl r0, r1, #2
	add r3, r1, r0
	ldr r0, _02228620 ; =ov07_022366F8
	ldr r1, _02228624 ; =ov07_022366F5
	ldrb r0, [r0, r3]
	ldrb r1, [r1, r3]
	ldrb r2, [r2, r3]
	str r0, [sp]
	mov r0, #0x64
	str r0, [sp, #4]
	ldr r0, _02228628 ; =ov07_022366F9
	ldrb r0, [r0, r3]
	ldrb r3, [r5, r3]
	str r0, [sp, #8]
	add r0, r4, #0
	add r0, #0x10
	bl ov07_02222590
	ldrb r1, [r4, #1]
	ldr r6, _0222862C ; =ov07_022366D8
	lsl r0, r1, #1
	add r5, r1, r0
	mov r0, #4
	ldrsh r3, [r4, r0]
	ldr r0, _02228630 ; =ov07_022366D9
	mov r1, #0
	ldrb r0, [r0, r5]
	add r2, r1, #0
	add r0, r3, r0
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	str r0, [sp]
	ldr r0, _02228634 ; =ov07_022366DA
	ldrb r0, [r0, r5]
	ldrb r5, [r6, r5]
	str r0, [sp, #4]
	add r3, r3, r5
	add r0, r4, #0
	lsl r3, r3, #0x10
	add r0, #0x34
	asr r3, r3, #0x10
	bl ov07_02222268
	ldrb r0, [r4, #1]
	add sp, #0xc
	add r0, r0, #1
	strb r0, [r4, #1]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, r6, pc}
_02228590:
	add r0, r4, #0
	add r0, #0x10
	mov r5, #0
	bl ov07_0222260C
	cmp r0, #0
	bne _022285A0
	add r5, r5, #1
_022285A0:
	add r0, r4, #0
	add r0, #0x34
	bl ov07_022222B4
	cmp r0, #0
	bne _022285AE
	add r5, r5, #1
_022285AE:
	cmp r5, #2
	blt _022285D4
	ldrb r0, [r4, #1]
	cmp r0, #3
	blo _022285D0
	ldrb r0, [r4, #2]
	add r0, r0, #1
	strb r0, [r4, #2]
	mov r0, #0
	strb r0, [r4, #1]
	ldrb r0, [r4, #2]
	cmp r0, #3
	blo _022285D4
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	b _022285D4
_022285D0:
	mov r0, #0
	strb r0, [r4]
_022285D4:
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
	mov r0, #0
	str r0, [sp]
	mov r1, #0x36
	mov r2, #6
	ldrsh r1, [r4, r1]
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #0xc]
	ldr r3, [r4, #0x24]
	bl ov07_022226C4
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
_02228604:
	ldr r0, [r4, #8]
	add r1, r2, #0
	bl ov07_0221C448
	add r0, r4, #0
	bl Heap_Free
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	nop
_02228618: .word ov07_022366F6
_0222861C: .word ov07_022366F7
_02228620: .word ov07_022366F8
_02228624: .word ov07_022366F5
_02228628: .word ov07_022366F9
_0222862C: .word ov07_022366D8
_02228630: .word ov07_022366D9
_02228634: .word ov07_022366DA
	thumb_func_end ov07_02228510

