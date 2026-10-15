	.include "macros.inc"
	.include "overlay_92.inc"
	.include "global.inc"
	.public ov92_022634F8

	.text

	.text
	thumb_func_start ov92_022634F8
ov92_022634F8: ; 0x022634F8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5]
	add r4, r1, #0
	mov r1, #0
	bl _fgr
	ldr r0, _02263820 ; =0x45800000
	bls _0226351C
	ldr r1, [r5]
	bl _fmul
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _0226352A
_0226351C:
	ldr r1, [r5]
	bl _fmul
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_0226352A:
	bl _ffix
	str r0, [r4]
	ldr r0, [r5, #4]
	mov r1, #0
	bl _fgr
	ldr r0, _02263820 ; =0x45800000
	bls _0226354E
	ldr r1, [r5, #4]
	bl _fmul
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _0226355C
_0226354E:
	ldr r1, [r5, #4]
	bl _fmul
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_0226355C:
	bl _ffix
	str r0, [r4, #4]
	ldr r0, [r5, #8]
	mov r1, #0
	bl _fgr
	ldr r0, _02263820 ; =0x45800000
	bls _02263580
	ldr r1, [r5, #8]
	bl _fmul
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _0226358E
_02263580:
	ldr r1, [r5, #8]
	bl _fmul
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_0226358E:
	bl _ffix
	str r0, [r4, #8]
	ldr r0, [r5, #0xc]
	mov r1, #0
	bl _fgr
	ldr r0, _02263820 ; =0x45800000
	bls _022635B2
	ldr r1, [r5, #0xc]
	bl _fmul
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _022635C0
_022635B2:
	ldr r1, [r5, #0xc]
	bl _fmul
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_022635C0:
	bl _ffix
	str r0, [r4, #0xc]
	ldr r0, [r5, #0x10]
	mov r1, #0
	bl _fgr
	ldr r0, _02263820 ; =0x45800000
	bls _022635E4
	ldr r1, [r5, #0x10]
	bl _fmul
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _022635F2
_022635E4:
	ldr r1, [r5, #0x10]
	bl _fmul
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_022635F2:
	bl _ffix
	str r0, [r4, #0x10]
	ldr r0, [r5, #0x14]
	mov r1, #0
	bl _fgr
	ldr r0, _02263820 ; =0x45800000
	bls _02263616
	ldr r1, [r5, #0x14]
	bl _fmul
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _02263624
_02263616:
	ldr r1, [r5, #0x14]
	bl _fmul
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_02263624:
	bl _ffix
	str r0, [r4, #0x14]
	ldr r0, [r5, #0x18]
	mov r1, #0
	bl _fgr
	ldr r0, _02263820 ; =0x45800000
	bls _02263648
	ldr r1, [r5, #0x18]
	bl _fmul
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _02263656
_02263648:
	ldr r1, [r5, #0x18]
	bl _fmul
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_02263656:
	bl _ffix
	str r0, [r4, #0x18]
	ldr r0, [r5, #0x1c]
	mov r1, #0
	bl _fgr
	ldr r0, _02263820 ; =0x45800000
	bls _0226367A
	ldr r1, [r5, #0x1c]
	bl _fmul
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _02263688
_0226367A:
	ldr r1, [r5, #0x1c]
	bl _fmul
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_02263688:
	bl _ffix
	str r0, [r4, #0x1c]
	ldr r0, [r5, #0x20]
	mov r1, #0
	bl _fgr
	ldr r0, _02263820 ; =0x45800000
	bls _022636AC
	ldr r1, [r5, #0x20]
	bl _fmul
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _022636BA
_022636AC:
	ldr r1, [r5, #0x20]
	bl _fmul
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_022636BA:
	bl _ffix
	str r0, [r4, #0x20]
	ldr r0, [r5, #0x24]
	mov r1, #0
	bl _fgr
	ldr r0, _02263820 ; =0x45800000
	bls _022636DE
	ldr r1, [r5, #0x24]
	bl _fmul
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _022636EC
_022636DE:
	ldr r1, [r5, #0x24]
	bl _fmul
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_022636EC:
	bl _ffix
	str r0, [r4, #0x24]
	ldr r0, [r5, #0x28]
	mov r1, #0
	bl _fgr
	ldr r0, _02263820 ; =0x45800000
	bls _02263710
	ldr r1, [r5, #0x28]
	bl _fmul
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _0226371E
_02263710:
	ldr r1, [r5, #0x28]
	bl _fmul
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_0226371E:
	bl _ffix
	str r0, [r4, #0x28]
	ldr r0, [r5, #0x2c]
	mov r1, #0
	bl _fgr
	ldr r0, _02263820 ; =0x45800000
	bls _02263742
	ldr r1, [r5, #0x2c]
	bl _fmul
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _02263750
_02263742:
	ldr r1, [r5, #0x2c]
	bl _fmul
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_02263750:
	bl _ffix
	str r0, [r4, #0x2c]
	ldr r0, [r5, #0x30]
	mov r1, #0
	bl _fgr
	ldr r0, _02263820 ; =0x45800000
	bls _02263774
	ldr r1, [r5, #0x30]
	bl _fmul
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _02263782
_02263774:
	ldr r1, [r5, #0x30]
	bl _fmul
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_02263782:
	bl _ffix
	str r0, [r4, #0x30]
	ldr r0, [r5, #0x34]
	mov r1, #0
	bl _fgr
	ldr r0, _02263820 ; =0x45800000
	bls _022637A6
	ldr r1, [r5, #0x34]
	bl _fmul
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _022637B4
_022637A6:
	ldr r1, [r5, #0x34]
	bl _fmul
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_022637B4:
	bl _ffix
	str r0, [r4, #0x34]
	ldr r0, [r5, #0x38]
	mov r1, #0
	bl _fgr
	ldr r0, _02263820 ; =0x45800000
	bls _022637D8
	ldr r1, [r5, #0x38]
	bl _fmul
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _022637E6
_022637D8:
	ldr r1, [r5, #0x38]
	bl _fmul
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_022637E6:
	bl _ffix
	str r0, [r4, #0x38]
	ldr r0, [r5, #0x3c]
	mov r1, #0
	bl _fgr
	ldr r0, _02263820 ; =0x45800000
	bls _0226380A
	ldr r1, [r5, #0x3c]
	bl _fmul
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _02263818
_0226380A:
	ldr r1, [r5, #0x3c]
	bl _fmul
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_02263818:
	bl _ffix
	str r0, [r4, #0x3c]
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02263820: .word 0x45800000
	thumb_func_end ov92_022634F8

