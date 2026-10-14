	.include "macros.inc"
	.include "overlay_92.inc"
	.include "global.inc"
	.public ov92_02260428
	.extern ov92_022630F8
	.extern ov92_02263108
	.extern ov92_0226325C
	.extern ov92_022632B4
	.extern ov92_022632E8
	.extern ov92_02263824

	.text

	.text
	thumb_func_start ov92_02260428
ov92_02260428: ; 0x02260428
	push {r4, r5, r6, r7, lr}
	sub sp, #0x4c
	add r5, r0, #0
	ldr r0, [sp, #0x64]
	add r4, r1, #0
	add r6, r3, #0
	add r7, r2, #0
	bl _f2d
	str r0, [sp, #0x10]
	sub r0, r4, r6
	str r1, [sp, #4]
	bl _dflt
	add r2, r0, #0
	add r3, r1, #0
	ldr r0, _02260610 ; =0x147AE148
	ldr r1, _02260614 ; =0x3F7547AE
	bl _dmul
	add r2, r0, #0
	add r3, r1, #0
	ldr r0, [sp, #0x10]
	ldr r1, [sp, #4]
	bl _dmul
	bl _d2f
	add r6, r0, #0
	ldr r0, [sp, #0x64]
	bl _f2d
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x60]
	add r4, r1, #0
	sub r0, r7, r0
	bl _dflt
	add r2, r0, #0
	add r3, r1, #0
	ldr r0, _02260618 ; =0x55555555
	ldr r1, _0226061C ; =0x3F755555
	bl _dmul
	add r2, r0, #0
	add r3, r1, #0
	ldr r0, [sp, #0x14]
	add r1, r4, #0
	bl _dmul
	bl _d2f
	add r4, r0, #0
	ldr r0, [sp, #0x68]
	cmp r0, #0
	beq _022604DC
	mov r0, #0x7f
	lsl r0, r0, #2
	str r6, [r5, r0]
	add r1, r0, #4
	str r4, [r5, r1]
	sub r1, r0, #4
	mov r2, #8
	str r2, [r5, r1]
	sub r0, r0, #4
	ldr r0, [r5, r0]
	bl _fflt
	add r1, r0, #0
	mov r0, #0x7f
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl _fdiv
	mov r1, #0x81
	lsl r1, r1, #2
	str r0, [r5, r1]
	sub r1, #0xc
	ldr r0, [r5, r1]
	bl _fflt
	add r1, r0, #0
	mov r0, #2
	lsl r0, r0, #8
	ldr r0, [r5, r0]
	bl _fdiv
	mov r1, #0x82
	lsl r1, r1, #2
	str r0, [r5, r1]
_022604DC:
	add r0, r6, #0
	add r1, r6, #0
	bl _fmul
	add r7, r0, #0
	add r0, r4, #0
	add r1, r4, #0
	bl _fmul
	add r1, r0, #0
	add r0, r7, #0
	bl _fadd
	mov r1, #0
	add r7, r0, #0
	bl _fgr
	ldr r0, _02260620 ; =0x45800000
	bls _02260514
	add r1, r7, #0
	bl _fmul
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _02260522
_02260514:
	add r1, r7, #0
	bl _fmul
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_02260522:
	bl _ffix
	bl FX_Sqrt
	add r7, r0, #0
	bl _fflt
	ldr r1, _02260620 ; =0x45800000
	bl _fdiv
	str r0, [sp, #0x18]
	bl _f2d
	add r2, r0, #0
	mov r0, #0
	add r3, r1, #0
	add r1, r0, #0
	bl _dneq
	beq _0226060A
	add r0, r7, #0
	bl FX_SinFx64c
	str r0, [sp, #0x1c]
	str r1, [sp, #0xc]
	add r0, r7, #0
	bl FX_CosFx64c
	str r0, [sp, #0x20]
	add r7, r1, #0
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0xc]
	bl _f_lltof
	ldr r1, _02260624 ; =0x4F800000
	bl _fdiv
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x20]
	add r1, r7, #0
	bl _f_lltof
	ldr r1, _02260624 ; =0x4F800000
	bl _fdiv
	add r7, r0, #0
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x18]
	bl _fdiv
	str r0, [sp, #0x28]
	ldr r1, [sp, #0x28]
	add r0, r4, #0
	str r7, [sp, #0x3c]
	bl _fmul
	str r0, [sp, #0x40]
	ldr r1, [sp, #0x28]
	add r0, r6, #0
	bl _fmul
	mov r2, #0x19
	str r0, [sp, #0x44]
	mov r0, #0
	lsl r2, r2, #4
	str r0, [sp, #0x48]
	add r0, r5, r2
	add r2, #0x10
	add r1, sp, #0x3c
	add r2, r5, r2
	bl ov92_02263108
	mov r1, #0x15
	lsl r1, r1, #4
	add r0, r5, r1
	add r1, #0x40
	add r1, r5, r1
	bl ov92_022632E8
	mov r1, #0x1a
	lsl r1, r1, #4
	add r0, r5, r1
	sub r1, #0x10
	add r1, r5, r1
	bl ov92_022630F8
	mov r1, #0x15
	lsl r1, r1, #4
	add r0, r5, r1
	add r1, #0x60
	add r1, r5, r1
	bl ov92_02263824
	mov r0, #0x19
	lsl r0, r0, #4
	add r0, r5, r0
	bl ov92_0226325C
	mov r7, #0x19
	lsl r7, r7, #4
	add r3, sp, #0x2c
	add r4, r5, r7
	add r6, r0, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	add r0, r5, r7
	add r2, r6, #0
	bl ov92_022632B4
	add sp, #0x4c
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0226060A:
	mov r0, #0
	add sp, #0x4c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_02260610: .word 0x147AE148
_02260614: .word 0x3F7547AE
_02260618: .word 0x55555555
_0226061C: .word 0x3F755555
_02260620: .word 0x45800000
_02260624: .word 0x4F800000
	thumb_func_end ov92_02260428

