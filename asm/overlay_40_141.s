	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222BF80
	.public ov40_0222D980
	.public ov40_0222DA00
	.public ov40_02230964
	.public ov40_0223655C
	.public ov40_02236578
	.public ov40_022367B8
	.public ov40_02237030
	.public ov40_02237144
	.public ov40_022371A0
	.public ov40_022371E4
	.public ov40_022373E4
	.public ov40_02237410
	.public ov40_02237548
	.public ov40_02237564
	.public ov40_02237644

	.text

	thumb_func_start ov40_022367B8
ov40_022367B8: ; 0x022367B8
	push {r4, r5, lr}
	sub sp, #0xc
	mov r1, #0x86
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r5, [r4, r1]
	ldr r1, [r4, #8]
	cmp r1, #3
	bls _022367CC
	b _022368DC
_022367CC:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022367D8: ; jump table
	.short _022367E0 - _022367D8 - 2 ; case 0
	.short _02236822 - _022367D8 - 2 ; case 1
	.short _0223685A - _022367D8 - 2 ; case 2
	.short _02236886 - _022367D8 - 2 ; case 3
_022367E0:
	mov r2, #8
	mov r1, #0x69
	str r2, [sp]
	mov r3, #0x12
	str r3, [sp, #4]
	mov r0, #1
	lsl r1, r1, #2
	str r0, [sp, #8]
	add r0, r5, r1
	add r1, r1, #4
	add r1, r5, r1
	bl ov40_0222D980
	add r0, r4, #0
	mov r1, #1
	bl ov40_02230964
	add r0, r4, #0
	bl ov40_02237564
	add r0, r4, #0
	bl ov40_02237410
	add r0, r4, #0
	bl ov40_022371A0
	add r0, r4, #0
	mov r1, #0
	bl ov40_02230964
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_02236822:
	mov r1, #0x69
	lsl r1, r1, #2
	add r0, r5, r1
	add r1, r1, #4
	mov r2, #1
	add r1, r5, r1
	add r3, r2, #0
	bl ov40_0222DA00
	cmp r0, #0
	beq _022368DC
	mov r0, #0x83
	mov r2, #0x1a
	lsl r0, r0, #4
	lsl r2, r2, #4
	ldr r0, [r4, r0]
	ldr r1, [r5]
	ldr r2, [r5, r2]
	add r3, r5, #4
	bl ov40_02236578
	add r0, r5, #0
	bl ov40_0223655C
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022368DC
_0223685A:
	mov r1, #1
	bl ov40_02230964
	add r0, r4, #0
	bl ov40_02237644
	add r0, r4, #0
	mov r1, #1
	bl ov40_02237548
	add r0, r4, #0
	mov r1, #0
	bl ov40_022373E4
	add r0, r4, #0
	mov r1, #0
	bl ov40_02230964
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _022368DC
_02236886:
	mov r1, #0x69
	lsl r1, r1, #2
	add r0, r5, r1
	add r1, r1, #4
	add r1, r5, r1
	mov r2, #0
	mov r3, #1
	bl ov40_0222DA00
	cmp r0, #0
	beq _022368DC
	mov r1, #0x1b
	lsl r1, r1, #4
	ldr r1, [r5, r1]
	add r0, r4, #0
	bl ov40_022371E4
	add r0, r4, #0
	bl ov40_02237144
	ldr r1, _022368E4 ; =0x0000010E
	add r0, r4, #0
	bl ov40_02237030
	add r0, r4, #0
	mov r1, #0
	bl ov40_02237548
	add r0, r4, #0
	mov r1, #1
	bl ov40_022373E4
	mov r0, #1
	add r1, r0, #0
	bl GfGfx_EngineATogglePlanes
	ldr r0, _022368E8 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	add r0, r4, #0
	mov r1, #3
	bl ov40_0222BF80
_022368DC:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_022368E4: .word 0x0000010E
_022368E8: .word 0x04000050
	thumb_func_end ov40_022367B8

