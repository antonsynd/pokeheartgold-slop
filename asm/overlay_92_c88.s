	.include "asm/macros.inc"
	.include "overlay_92.inc"
	.include "global.inc"
	.public ov92_02260628
	.extern ov92_022630F8
	.extern ov92_02263108
	.extern ov92_022632E8
	.extern ov92_02263824

	.text

	.text
	thumb_func_start ov92_02260628
ov92_02260628: ; 0x02260628
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	mov r1, #0x7f
	lsl r1, r1, #2
	add r5, r0, #0
	add r0, r1, #4
	ldr r4, [r5, r1]
	ldr r0, [r5, r0]
	add r1, #8
	str r0, [sp]
	ldr r1, [r5, r1]
	add r0, r4, #0
	bl _fsub
	mov r1, #0x7f
	lsl r1, r1, #2
	str r0, [r5, r1]
	add r0, r1, #4
	add r1, #0xc
	ldr r0, [r5, r0]
	ldr r1, [r5, r1]
	bl _fsub
	mov r1, #2
	lsl r1, r1, #8
	str r0, [r5, r1]
	add r0, r1, #0
	sub r0, #8
	ldr r0, [r5, r0]
	sub r1, #8
	sub r0, r0, #1
	str r0, [r5, r1]
	add r0, r4, #0
	add r1, r4, #0
	bl _fmul
	add r6, r0, #0
	ldr r0, [sp]
	add r1, r0, #0
	bl _fmul
	add r1, r0, #0
	add r0, r6, #0
	bl _fadd
	mov r1, #0
	add r6, r0, #0
	bl _fgr
	ldr r0, _02260774 ; =0x45800000
	bls _022606A0
	add r1, r6, #0
	bl _fmul
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _022606AE
_022606A0:
	add r1, r6, #0
	bl _fmul
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_022606AE:
	bl _ffix
	bl FX_Sqrt
	add r6, r0, #0
	bl _fflt
	ldr r1, _02260774 ; =0x45800000
	bl _fdiv
	str r0, [sp, #4]
	bl _f2d
	add r2, r0, #0
	mov r0, #0
	add r3, r1, #0
	add r1, r0, #0
	bl _dneq
	beq _0226076E
	add r0, r6, #0
	bl FX_SinFx64c
	str r0, [sp, #8]
	add r0, r6, #0
	add r7, r1, #0
	bl FX_CosFx64c
	str r0, [sp, #0xc]
	add r6, r1, #0
	ldr r0, [sp, #8]
	add r1, r7, #0
	bl _f_lltof
	ldr r1, _02260778 ; =0x4F800000
	bl _fdiv
	add r7, r0, #0
	ldr r0, [sp, #0xc]
	add r1, r6, #0
	bl _f_lltof
	ldr r1, _02260778 ; =0x4F800000
	bl _fdiv
	add r6, r0, #0
	ldr r1, [sp, #4]
	add r0, r7, #0
	bl _fdiv
	add r7, r0, #0
	ldr r0, [sp]
	add r1, r7, #0
	str r6, [sp, #0x10]
	bl _fmul
	str r0, [sp, #0x14]
	add r0, r4, #0
	add r1, r7, #0
	bl _fmul
	mov r2, #0x19
	str r0, [sp, #0x18]
	mov r0, #0
	lsl r2, r2, #4
	str r0, [sp, #0x1c]
	add r0, r5, r2
	add r2, #0x10
	add r1, sp, #0x10
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
	add sp, #0x20
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0226076E:
	mov r0, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02260774: .word 0x45800000
_02260778: .word 0x4F800000
	thumb_func_end ov92_02260628

