	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_022406C8
	.extern ov40_0222BF80
	.extern ov40_0222DD9C
	.extern ov40_0222DE40
	.extern ov40_0222FB90
	.extern ov40_0223077C
	.extern ov40_02230CDC
	.extern ov40_0223D540
	.extern ov40_0223D5CC

	.text

	.text
	thumb_func_start ov40_022406C8
ov40_022406C8: ; 0x022406C8
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	mov r1, #0x86
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r5, [r4, r1]
	mov r1, #0x75
	lsl r1, r1, #2
	add r6, r5, r1
	ldr r1, [r4, #8]
	cmp r1, #4
	bls _022406E2
	b _0224081A
_022406E2:
	add r2, r1, r1
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_022406EE: ; jump table
	.short _022406F8 - _022406EE - 2 ; case 0
	.short _02240736 - _022406EE - 2 ; case 1
	.short _02240764 - _022406EE - 2 ; case 2
	.short _02240806 - _022406EE - 2 ; case 3
	.short _02240814 - _022406EE - 2 ; case 4
_022406F8:
	mov r1, #0x75
	bl ov40_0222DD9C
	ldr r1, _0224083C ; =0x000006F4
	add r0, r4, #0
	ldr r1, [r4, r1]
	mov r2, #0x80
	mov r3, #0x60
	bl ov40_0223077C
	ldr r0, _0224083C ; =0x000006F4
	mov r1, #1
	ldr r0, [r4, r0]
	bl sub_020879E0
	ldr r0, _0224083C ; =0x000006F4
	mov r1, #0x18
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl sub_02087A08
	ldr r0, _02240840 ; =0x000004B8
	mov r1, #0
	str r1, [r5, r0]
	add r0, #0xc5
	bl PlaySE
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02240834
_02240736:
	bl ov40_0223D5CC
	cmp r0, #0
	bne _02240744
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_02240744:
	add r0, r4, #0
	bl ov40_0223D540
	mov r2, #0xb3
	lsl r2, r2, #2
	ldr r1, [r6, r2]
	add r2, r2, #4
	ldr r2, [r6, r2]
	bl ov39_02227720
	cmp r0, #1
	bne _02240834
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02240834
_02240764:
	bl ov40_0223D5CC
	cmp r0, #0
	bne _02240772
	add sp, #4
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_02240772:
	add r0, r4, #0
	bl ov40_0222DE40
	add r0, r4, #0
	bl ov40_0223D540
	add r1, sp, #0
	bl ov39_02227D44
	cmp r0, #1
	ldr r0, _02240844 ; =0x0000057D
	bne _022407BA
	mov r1, #0
	bl StopSE
	ldr r0, _02240848 ; =0x04000050
	mov r1, #0
	strh r1, [r0]
	ldr r3, [sp]
	add r0, r4, #0
	ldr r2, [r3, #0xc]
	ldr r3, [r3, #4]
	mov r1, #8
	bl ov40_02230CDC
	add r0, r4, #0
	mov r1, #0
	bl ov40_0222FB90
	ldr r0, [r4, #8]
	mov r1, #0
	add r0, r0, #1
	str r0, [r4, #8]
	ldr r0, _02240840 ; =0x000004B8
	str r1, [r5, r0]
	b _022407EE
_022407BA:
	mov r1, #0
	bl StopSE
	mov r0, #0xff
	str r0, [r4, #8]
	ldr r0, _02240840 ; =0x000004B8
	mov r1, #1
	str r1, [r5, r0]
	add r0, #0xbf
	bl PlaySE
	ldr r0, _0224084C ; =0x00002604
	ldr r1, _02240850 ; =0x00000878
	add r0, r4, r0
	str r0, [r4, r1]
	add r0, r1, #0
	add r0, #0x3c
	ldr r2, [r4, r0]
	ldr r0, _02240854 ; =0x000004BC
	add r1, #0x40
	str r2, [r5, r0]
	ldr r0, [r5, r0]
	ldr r2, _02240858 ; =0x00001D4C
	add r1, r4, r1
	bl MI_CpuCopy8
_022407EE:
	ldr r0, _0224083C ; =0x000006F4
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_020879E0
	ldr r0, _0224083C ; =0x000006F4
	mov r1, #0
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl sub_02087A08
	b _02240834
_02240806:
	mov r1, #1
	bl ov40_0222FB90
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02240834
_02240814:
	add r0, r1, #1
	str r0, [r4, #8]
	b _02240834
_0224081A:
	ldr r0, _02240840 ; =0x000004B8
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _0224082C
	add r0, r4, #0
	mov r1, #7
	bl ov40_0222BF80
	b _02240834
_0224082C:
	add r0, r4, #0
	mov r1, #5
	bl ov40_0222BF80
_02240834:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_0224083C: .word 0x000006F4
_02240840: .word 0x000004B8
_02240844: .word 0x0000057D
_02240848: .word 0x04000050
_0224084C: .word 0x00002604
_02240850: .word 0x00000878
_02240854: .word 0x000004BC
_02240858: .word 0x00001D4C
	thumb_func_end ov40_022406C8

