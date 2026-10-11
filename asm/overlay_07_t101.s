	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_0221E87C
	.public ov07_0221E914
	.public ov07_0221E9D4
	.extern ov07_0221DD38
	.extern ov07_02222C60
	.extern ov07_02222C84
	.extern ov07_02222D88
	.extern ov07_02237870

	.text

	.text
	thumb_func_start ov07_0221E87C
ov07_0221E87C: ; 0x0221E87C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	add r6, r0, #0
	ldr r0, [r5, #0x18]
	ldr r4, [r5, #0x20]
	cmp r0, #1
	bne _0221E8AA
	add r4, #0xc0
	ldr r0, [r4]
	bl ov07_02222C60
	ldr r0, [r5, #0x20]
	bl Heap_Free
	add r0, r5, #0
	bl Heap_Free
	add r0, r6, #0
	bl SysTask_Destroy
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_0221E8AA:
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0]
	bl ov07_02222C84
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
_0221E8BA:
	mov r0, #6
	ldrsh r1, [r4, r0]
	mov r0, #4
	ldrsh r0, [r4, r0]
	add r0, r1, r0
	strh r0, [r4, #6]
	mov r0, #0
	ldrsh r6, [r4, r0]
	mov r0, #2
	ldrsh r0, [r4, r0]
	cmp r6, r0
	bge _0221E902
	ldr r0, [sp]
	lsl r1, r6, #2
	add r5, r0, r1
	mov r7, #2
_0221E8DA:
	ldr r1, [r4, #8]
	mov r2, #6
	lsl r0, r1, #0x10
	asr r1, r1, #0x10
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	lsl r1, r1, #0x10
	ldrsh r2, [r4, r2]
	asr r0, r0, #0x10
	lsr r1, r1, #0x10
	add r0, r0, r2
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl ov07_02222D88
	stmia r5!, {r0}
	ldrsh r0, [r4, r7]
	add r6, r6, #1
	cmp r6, r0
	blt _0221E8DA
_0221E902:
	ldr r0, [sp, #4]
	add r4, #0xc
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #0x10
	blt _0221E8BA
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov07_0221E87C

	thumb_func_start ov07_0221E914
ov07_0221E914: ; 0x0221E914
	push {r4, r5, r6, lr}
	sub sp, #0x10
	add r6, r1, #0
	add r5, r0, #0
	ldr r0, [r6, #0x18]
	ldr r4, [r6, #0x24]
	cmp r0, #1
	bne _0221E93A
	add r0, r4, #0
	bl Heap_Free
	add r0, r6, #0
	bl Heap_Free
	add r0, r5, #0
	bl SysTask_Destroy
	add sp, #0x10
	pop {r4, r5, r6, pc}
_0221E93A:
	ldr r1, _0221E9CC ; =0x0000018B
	ldrb r0, [r4, r1]
	cmp r0, #0
	beq _0221E94A
	cmp r0, #1
	beq _0221E958
	add sp, #0x10
	pop {r4, r5, r6, pc}
_0221E94A:
	mov r2, #0xff
	add r0, r2, #0
	add r0, #0x8b
	strb r2, [r4, r0]
	ldrb r0, [r4, r1]
	add r0, r0, #1
	strb r0, [r4, r1]
_0221E958:
	mov r2, #0x63
	lsl r2, r2, #2
	ldrb r1, [r4, r2]
	sub r0, r2, #2
	ldrb r0, [r4, r0]
	lsl r3, r1, #1
	add r3, r4, r3
	add r3, #0x88
	ldrh r3, [r3]
	sub r3, r3, #2
	cmp r0, r3
	bge _0221E97E
	sub r0, r2, #2
	ldrb r0, [r4, r0]
	add sp, #0x10
	add r1, r0, #1
	sub r0, r2, #2
	strb r1, [r4, r0]
	pop {r4, r5, r6, pc}
_0221E97E:
	mov r0, #0
	str r0, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r2, #0x90
	str r2, [sp, #8]
	add r0, r4, r1
	ldrb r0, [r0, #8]
	add r2, #0xf9
	mov r1, #9
	lsl r0, r0, #0x14
	lsr r0, r0, #0x10
	str r0, [sp, #0xc]
	ldrb r2, [r4, r2]
	ldr r0, [r4, #4]
	ldr r3, [r4]
	bl PaletteData_LoadFromNarc
	ldr r1, _0221E9D0 ; =0x0000018A
	mov r0, #0
	strb r0, [r4, r1]
	add r2, r1, #2
	ldrb r3, [r4, r2]
	sub r2, r1, #2
	ldrb r2, [r4, r2]
	sub r2, r2, #1
	cmp r3, r2
	blt _0221E9BE
	add r1, r1, #2
	add sp, #0x10
	strb r0, [r4, r1]
	pop {r4, r5, r6, pc}
_0221E9BE:
	add r0, r1, #2
	ldrb r0, [r4, r0]
	add r2, r0, #1
	add r0, r1, #2
	strb r2, [r4, r0]
	add sp, #0x10
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0221E9CC: .word 0x0000018B
_0221E9D0: .word 0x0000018A
	thumb_func_end ov07_0221E914

	thumb_func_start ov07_0221E9D4
ov07_0221E9D4: ; 0x0221E9D4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r6, [r5, #0x48]
	mov r1, #0x28
	ldr r0, [r6]
	bl Heap_Alloc
	mov r1, #0
	mov r2, #0x28
	add r4, r0, #0
	bl MI_CpuFill8
	mov r1, #0x19
	ldr r0, [r6]
	lsl r1, r1, #4
	bl Heap_Alloc
	mov r2, #0x19
	mov r1, #0
	lsl r2, r2, #4
	str r0, [r4, #0x24]
	bl MI_CpuFill8
	add r0, r5, #0
	add r0, #0x44
	ldrh r1, [r0]
	mov r0, #4
	mov r2, #3
	orr r1, r0
	add r0, r5, #0
	add r0, #0x44
	strh r1, [r0]
	mov r0, #0
	str r0, [r4, #0x18]
	ldr r1, [r6]
	ldr r0, [r4, #0x24]
	str r1, [r0]
	add r0, r6, #0
	add r0, #0xc8
	ldr r1, [r0]
	ldr r0, [r4, #0x24]
	str r1, [r0, #4]
	mov r0, #6
	lsl r0, r0, #6
	add r0, r6, r0
	add r1, r4, #0
	bl ov07_0221DD38
	ldr r0, [r5, #0x10]
	cmp r0, #0x34
	bhi _0221EA8E
	bhs _0221EAB0
	cmp r0, #0x1d
	bhi _0221EA88
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0221EA4C: ; jump table
	.short _0221EAA0 - _0221EA4C - 2 ; case 0
	.short _0221EAA0 - _0221EA4C - 2 ; case 1
	.short _0221EAD4 - _0221EA4C - 2 ; case 2
	.short _0221EAA0 - _0221EA4C - 2 ; case 3
	.short _0221EAA4 - _0221EA4C - 2 ; case 4
	.short _0221EAA0 - _0221EA4C - 2 ; case 5
	.short _0221EAE0 - _0221EA4C - 2 ; case 6
	.short _0221EAC8 - _0221EA4C - 2 ; case 7
	.short _0221EAE0 - _0221EA4C - 2 ; case 8
	.short _0221EAE0 - _0221EA4C - 2 ; case 9
	.short _0221EAE0 - _0221EA4C - 2 ; case 10
	.short _0221EAD8 - _0221EA4C - 2 ; case 11
	.short _0221EAE0 - _0221EA4C - 2 ; case 12
	.short _0221EAE0 - _0221EA4C - 2 ; case 13
	.short _0221EACC - _0221EA4C - 2 ; case 14
	.short _0221EAE0 - _0221EA4C - 2 ; case 15
	.short _0221EAE0 - _0221EA4C - 2 ; case 16
	.short _0221EAD0 - _0221EA4C - 2 ; case 17
	.short _0221EAE0 - _0221EA4C - 2 ; case 18
	.short _0221EAA8 - _0221EA4C - 2 ; case 19
	.short _0221EAE0 - _0221EA4C - 2 ; case 20
	.short _0221EAE0 - _0221EA4C - 2 ; case 21
	.short _0221EAB4 - _0221EA4C - 2 ; case 22
	.short _0221EAE0 - _0221EA4C - 2 ; case 23
	.short _0221EAE0 - _0221EA4C - 2 ; case 24
	.short _0221EAE0 - _0221EA4C - 2 ; case 25
	.short _0221EAE0 - _0221EA4C - 2 ; case 26
	.short _0221EAE0 - _0221EA4C - 2 ; case 27
	.short _0221EABC - _0221EA4C - 2 ; case 28
	.short _0221EAC0 - _0221EA4C - 2 ; case 29
_0221EA88:
	cmp r0, #0x2c
	beq _0221EADC
	b _0221EAE0
_0221EA8E:
	cmp r0, #0x39
	bhi _0221EA9A
	bhs _0221EAC4
	cmp r0, #0x35
	beq _0221EAAC
	b _0221EAE0
_0221EA9A:
	cmp r0, #0x3a
	beq _0221EAB8
	b _0221EAE0
_0221EAA0:
	mov r5, #0
	b _0221EAEC
_0221EAA4:
	mov r5, #2
	b _0221EAEC
_0221EAA8:
	mov r5, #4
	b _0221EAEC
_0221EAAC:
	mov r5, #6
	b _0221EAEC
_0221EAB0:
	mov r5, #8
	b _0221EAEC
_0221EAB4:
	mov r5, #0xa
	b _0221EAEC
_0221EAB8:
	mov r5, #0xc
	b _0221EAEC
_0221EABC:
	mov r5, #0xe
	b _0221EAEC
_0221EAC0:
	mov r5, #0x10
	b _0221EAEC
_0221EAC4:
	mov r5, #0x1a
	b _0221EAEC
_0221EAC8:
	mov r5, #0x1c
	b _0221EAEC
_0221EACC:
	mov r5, #0x14
	b _0221EAEC
_0221EAD0:
	mov r5, #0x12
	b _0221EAEC
_0221EAD4:
	mov r5, #0x16
	b _0221EAEC
_0221EAD8:
	mov r5, #0x18
	b _0221EAEC
_0221EADC:
	mov r5, #0x1e
	b _0221EAEC
_0221EAE0:
	ldr r0, _0221EB70 ; =ov07_02237870
	cmp r0, #0
	beq _0221EAEA
	bl GF_AssertFail
_0221EAEA:
	mov r5, #0
_0221EAEC:
	mov r0, #1
	str r0, [sp]
	ldr r3, [r6]
	mov r0, #9
	add r1, r5, #0
	mov r2, #0
	bl GfGfxLoader_LoadFromNarc
	add r7, r0, #0
	bne _0221EB04
	bl GF_AssertFail
_0221EB04:
	ldr r1, [r4, #0x24]
	ldr r0, _0221EB74 ; =0x00000189
	add r2, r5, #1
	strb r2, [r1, r0]
	ldrb r3, [r7]
	mov r1, #0
	add r0, r7, #0
	cmp r3, #0xff
	beq _0221EB2A
_0221EB16:
	ldr r2, [r4, #0x24]
	add r0, r0, #1
	add r2, r2, r1
	strb r3, [r2, #8]
	add r1, r1, #1
	lsl r1, r1, #0x10
	ldrb r3, [r0]
	lsr r1, r1, #0x10
	cmp r3, #0xff
	bne _0221EB16
_0221EB2A:
	mov r0, #0x62
	ldr r2, [r4, #0x24]
	lsl r0, r0, #2
	strb r1, [r2, r0]
	add r0, r7, #0
	add r0, #0x80
	ldrh r5, [r0]
	add r3, r7, #0
	ldr r0, _0221EB78 ; =0x0000FF98
	mov r6, #0
	add r3, #0x80
	cmp r5, r0
	beq _0221EB5C
_0221EB44:
	ldr r2, [r4, #0x24]
	lsl r1, r6, #1
	add r1, r2, r1
	add r1, #0x88
	strh r5, [r1]
	add r3, r3, #2
	add r1, r6, #1
	lsl r1, r1, #0x10
	ldrh r5, [r3]
	lsr r6, r1, #0x10
	cmp r5, r0
	bne _0221EB44
_0221EB5C:
	add r0, r7, #0
	bl Heap_Free
	ldr r0, _0221EB7C ; =ov07_0221E914
	ldr r2, _0221EB80 ; =0x00001001
	add r1, r4, #0
	bl SysTask_CreateOnMainQueue
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0221EB70: .word ov07_02237870
_0221EB74: .word 0x00000189
_0221EB78: .word 0x0000FF98
_0221EB7C: .word ov07_0221E914
_0221EB80: .word 0x00001001
	thumb_func_end ov07_0221E9D4

