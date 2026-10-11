	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_02227FA4
	.extern ov07_0221C448
	.extern ov07_02222508
	.extern ov07_02222558
	.extern ov07_022366CC
	.extern ov07_022366CD
	.extern ov07_022366CE

	.text

	.text
	thumb_func_start ov07_02227FA4
ov07_02227FA4: ; 0x02227FA4
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r2, r0, #0
	ldrb r0, [r4]
	cmp r0, #0
	beq _02227FB6
	cmp r0, #1
	beq _02228010
	b _02228050
_02227FB6:
	ldrb r1, [r4, #2]
	ldr r5, _02228060 ; =ov07_022366CD
	mov r2, #0x64
	lsl r0, r1, #1
	add r3, r1, r0
	ldr r0, _02228064 ; =ov07_022366CE
	ldr r1, _02228068 ; =ov07_022366CC
	ldrb r0, [r0, r3]
	ldrb r1, [r1, r3]
	ldrb r3, [r5, r3]
	str r0, [sp]
	add r0, r4, #0
	add r0, #0xc
	bl ov07_02222508
	ldrb r0, [r4, #2]
	cmp r0, #0
	ldr r0, _0222806C ; =0x00007FFF
	bne _02227FEC
	str r0, [sp]
	mov r1, #0
	ldr r0, [r4, #8]
	mov r2, #6
	add r3, r1, #0
	bl Pokepic_StartPaletteFade
	b _02227FFA
_02227FEC:
	str r0, [sp]
	mov r2, #0
	ldr r0, [r4, #8]
	mov r1, #6
	add r3, r2, #0
	bl Pokepic_StartPaletteFade
_02227FFA:
	ldrb r1, [r4, #2]
	mov r0, #1
	eor r0, r1
	strb r0, [r4, #2]
	ldrb r0, [r4, #1]
	add r0, r0, #1
	strb r0, [r4, #1]
	ldrb r0, [r4]
	add r0, r0, #1
	strb r0, [r4]
	pop {r3, r4, r5, pc}
_02228010:
	add r0, r4, #0
	add r0, #0xc
	bl ov07_02222558
	cmp r0, #0
	bne _02228038
	ldr r0, [r4, #8]
	bl Pokepic_ResumePaletteFade
	cmp r0, #0
	bne _02228038
	ldrb r0, [r4, #1]
	cmp r0, #4
	ldrb r0, [r4]
	bhs _02228034
	sub r0, r0, #1
	strb r0, [r4]
	b _02228038
_02228034:
	add r0, r0, #1
	strb r0, [r4]
_02228038:
	mov r1, #0xc
	ldrsh r2, [r4, r1]
	ldr r0, [r4, #8]
	bl Pokepic_SetAttr
	mov r2, #0xe
	ldrsh r2, [r4, r2]
	ldr r0, [r4, #8]
	mov r1, #0xd
	bl Pokepic_SetAttr
	pop {r3, r4, r5, pc}
_02228050:
	ldr r0, [r4, #4]
	add r1, r2, #0
	bl ov07_0221C448
	add r0, r4, #0
	bl Heap_Free
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02228060: .word ov07_022366CD
_02228064: .word ov07_022366CE
_02228068: .word ov07_022366CC
_0222806C: .word 0x00007FFF
	thumb_func_end ov07_02227FA4

