	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_02236A70
	.extern ov40_0222BF80
	.extern ov40_0222D980
	.extern ov40_0222DA00
	.extern ov40_0222DA84
	.extern ov40_0222DD8C
	.extern ov40_0222DED0
	.extern ov40_0222DFB0
	.extern ov40_0222FB28
	.extern ov40_0223077C
	.extern ov40_02230964
	.extern ov40_02230CDC
	.extern ov40_02236FE0
	.extern ov40_022371A0
	.extern ov40_02237410
	.extern ov40_02237564
	.extern ov40_0223D540
	.extern ov40_0223D5CC

	.text

	.text
	thumb_func_start ov40_02236A70
ov40_02236A70: ; 0x02236A70
	push {r3, r4, r5, lr}
	sub sp, #0x10
	mov r1, #0x86
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r5, [r4, r1]
	bl ov40_0223D5CC
	cmp r0, #0
	bne _02236A8A
	add sp, #0x10
	mov r0, #0
	pop {r3, r4, r5, pc}
_02236A8A:
	ldr r0, [r4, #8]
	cmp r0, #7
	bls _02236A92
	b _02236C48
_02236A92:
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02236A9E: ; jump table
	.short _02236AAE - _02236A9E - 2 ; case 0
	.short _02236ACC - _02236A9E - 2 ; case 1
	.short _02236B18 - _02236A9E - 2 ; case 2
	.short _02236B5E - _02236A9E - 2 ; case 3
	.short _02236B62 - _02236A9E - 2 ; case 4
	.short _02236BA4 - _02236A9E - 2 ; case 5
	.short _02236BCE - _02236A9E - 2 ; case 6
	.short _02236C26 - _02236A9E - 2 ; case 7
_02236AAE:
	add r0, r4, #0
	bl ov40_02236FE0
	ldr r0, _02236C58 ; =0x000006F4
	mov r1, #0
	ldr r0, [r4, r0]
	bl sub_020879E0
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineBTogglePlanes
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_02236ACC:
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
	bl ov40_02237564
	add r0, r4, #0
	mov r1, #1
	bl ov40_02230964
	add r0, r4, #0
	bl ov40_02237410
	add r0, r4, #0
	mov r1, #0
	bl ov40_02230964
	add r0, r4, #0
	bl ov40_022371A0
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02236C50
_02236B18:
	mov r0, #0x6b
	lsl r0, r0, #2
	add r0, r5, r0
	mov r1, #1
	bl ov40_0222DA84
	mov r1, #0x69
	lsl r1, r1, #2
	add r0, r5, r1
	add r1, r1, #4
	add r1, r5, r1
	mov r2, #1
	mov r3, #0
	bl ov40_0222DA00
	cmp r0, #0
	beq _02236B40
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
_02236B40:
	ldr r0, [r4, #0x58]
	mov r3, #0x6b
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp]
	lsl r3, r3, #2
	ldr r3, [r5, r3]
	ldr r0, [r4, #0x28]
	lsl r3, r3, #0x18
	mov r1, #3
	mov r2, #0xc
	lsr r3, r3, #0x18
	bl PaletteData_BlendPalettes
	b _02236C50
_02236B5E:
	add r0, r0, #1
	str r0, [r4, #8]
_02236B62:
	mov r1, #0x6f
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	add r0, r4, #0
	mov r2, #0x80
	mov r3, #0x60
	bl ov40_0223077C
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_020879E0
	mov r0, #0x6f
	lsl r0, r0, #4
	mov r1, #0x18
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl sub_02087A08
	mov r1, #0x12
	add r0, r4, #0
	lsl r1, r1, #4
	bl ov40_0222DED0
	ldr r0, _02236C5C ; =0x0000057D
	bl PlaySE
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02236C50
_02236BA4:
	add r0, r4, #0
	bl ov40_0223D540
	mov r1, #0x1a
	lsl r1, r1, #4
	ldr r1, [r5, r1]
	mov r2, #0xe
	str r1, [sp]
	lsl r2, r2, #6
	ldr r1, [r5, r2]
	add r2, r2, #4
	ldr r2, [r5, r2]
	ldr r3, [r5]
	bl ov39_02227420
	cmp r0, #1
	bne _02236C50
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02236C50
_02236BCE:
	add r0, r4, #0
	bl ov40_0222DFB0
	add r0, r4, #0
	bl ov40_0223D540
	add r1, sp, #0xc
	bl ov39_02227D44
	cmp r0, #1
	ldr r0, _02236C5C ; =0x0000057D
	bne _02236C02
	mov r1, #0
	bl StopSE
	ldr r3, [sp, #0xc]
	add r0, r4, #0
	ldr r2, [r3, #0xc]
	ldr r3, [r3, #4]
	mov r1, #2
	bl ov40_02230CDC
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02236C50
_02236C02:
	mov r1, #0
	bl StopSE
	add r0, r4, #0
	mov r1, #0x25 ; SCORE_EVENT_UPLOADED_PC_BOX_RECORDS
	bl ov40_0222FB28
	add r0, r4, #0
	mov r1, #1
	bl ov40_0222DD8C
	ldr r0, _02236C60 ; =0x00000577
	bl PlaySE
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02236C50
_02236C26:
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_020879E0
	mov r0, #0x6f
	lsl r0, r0, #4
	mov r1, #0
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl sub_02087A08
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02236C50
_02236C48:
	add r0, r4, #0
	mov r1, #0xa
	bl ov40_0222BF80
_02236C50:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_02236C58: .word 0x000006F4
_02236C5C: .word 0x0000057D
_02236C60: .word 0x00000577
	thumb_func_end ov40_02236A70

