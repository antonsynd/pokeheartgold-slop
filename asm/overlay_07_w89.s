	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_0221DEC0
	.public ov07_0221DF1C
	.extern ov07_0221C4A8
	.extern ov07_0221DEB0
	.extern ov07_02234BA8
	.extern ov07_02234C40

	.text

	.text
	thumb_func_start ov07_0221DEC0
ov07_0221DEC0: ; 0x0221DEC0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	ldr r3, _0221DF14 ; =ov07_02234BA8
	add r2, sp, #0
	add r5, r0, #0
	add r4, r2, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r7, _0221DF18 ; =ov07_02234C40
	mov r6, #0
_0221DEDC:
	ldr r0, [r5, #0x18]
	ldr r1, [r4]
	bl ov07_0221DEB0
	cmp r0, #0
	beq _0221DF06
	ldr r0, [r4]
	mov r1, #0
	lsr r2, r0, #0x10
	cmp r2, #2
	blt _0221DEFE
_0221DEF2:
	lsr r0, r2, #0x1f
	add r0, r2, r0
	asr r2, r0, #1
	add r1, r1, #1
	cmp r2, #2
	bge _0221DEF2
_0221DEFE:
	lsl r1, r1, #2
	ldr r1, [r7, r1]
	add r0, r5, #0
	blx r1
_0221DF06:
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #6
	blo _0221DEDC
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0221DF14: .word ov07_02234BA8
_0221DF18: .word ov07_02234C40
	thumb_func_end ov07_0221DEC0

	thumb_func_start ov07_0221DF1C
ov07_0221DF1C: ; 0x0221DF1C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5]
	mov r1, #0x4c
	bl Heap_Alloc
	add r4, r0, #0
	bne _0221DF34
	bl GF_AssertFail
	mov r0, #0
	pop {r3, r4, r5, pc}
_0221DF34:
	mov r1, #0
	mov r2, #0x4c
	bl memset
	mov r0, #0
	str r0, [r4]
	strb r0, [r4, #5]
	strb r0, [r4, #0xf]
	strb r0, [r4, #0xe]
	str r5, [r4, #0x48]
	strb r0, [r4, #9]
	mov r0, #0x1f
	strb r0, [r4, #0xa]
	mov r0, #0x1d
	strb r0, [r4, #0xb]
	mov r0, #2
	strb r0, [r4, #0xc]
	add r0, r5, #0
	mov r1, #5
	bl ov07_0221C4A8
	cmp r0, #1
	bne _0221DF72
	mov r0, #0
	strb r0, [r4, #9]
	mov r0, #0x1f
	strb r0, [r4, #0xa]
	mov r0, #0xf
	strb r0, [r4, #0xb]
	mov r0, #7
	strb r0, [r4, #0xc]
_0221DF72:
	add r0, r5, #0
	mov r1, #5
	bl ov07_0221C4A8
	cmp r0, #2
	bne _0221DF8E
	mov r0, #7
	strb r0, [r4, #9]
	mov r0, #0xf
	strb r0, [r4, #0xa]
	mov r0, #0x1d
	strb r0, [r4, #0xb]
	mov r0, #2
	strb r0, [r4, #0xc]
_0221DF8E:
	mov r1, #0
	add r2, r5, #0
	add r3, r4, #0
_0221DF94:
	add r0, r2, #0
	add r0, #0x94
	ldr r0, [r0]
	add r1, r1, #1
	str r0, [r3, #0x1c]
	add r2, r2, #4
	add r3, r3, #4
	cmp r1, #0xa
	blt _0221DF94
	mov r0, #0x5f
	mov r1, #1
	lsl r0, r0, #2
	strb r1, [r5, r0]
	add r0, r4, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov07_0221DF1C

