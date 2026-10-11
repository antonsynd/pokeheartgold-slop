	.include "asm/macros.inc"
	.include "overlay_92.inc"
	.include "global.inc"
	.public ov92_02263218
	.public ov92_0226325C

	.text

	thumb_func_start ov92_0226325C
ov92_0226325C: ; 0x0226325C
	push {r4, lr}
	add r4, r0, #0
	bl ov92_02263218
	mov r1, #0
	bl _fgr
	bls _02263286
	add r0, r4, #0
	bl ov92_02263218
	add r1, r0, #0
	ldr r0, _022632B0 ; =0x45800000
	bl _fmul
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _0226329C
_02263286:
	add r0, r4, #0
	bl ov92_02263218
	add r1, r0, #0
	ldr r0, _022632B0 ; =0x45800000
	bl _fmul
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_0226329C:
	bl _ffix
	bl FX_Sqrt
	bl _fflt
	ldr r1, _022632B0 ; =0x45800000
	bl _fdiv
	pop {r4, pc}
	.balign 4, 0
_022632B0: .word 0x45800000
	thumb_func_end ov92_0226325C

