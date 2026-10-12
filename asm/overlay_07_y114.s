	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_0221E87C
	.public ov07_0221E914
	.extern ov07_02222C60
	.extern ov07_02222C84
	.extern ov07_02222D88

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

