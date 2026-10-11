	.include "asm/macros.inc"
	.include "overlay_47.inc"
	.include "global.inc"
	.public ov47_02258898
	.extern ov47_02258A80
	.extern ov47_022593A0
	.extern ov47_02259FA8

	.text

	.text
	thumb_func_start ov47_02258898
ov47_02258898: ; 0x02258898
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	add r4, r1, #0
	bl OverlayManager_GetData
	add r7, r0, #0
	add r0, r5, #0
	bl OverlayManager_GetArgs
	add r5, r0, #0
	ldr r0, [r4]
	cmp r0, #4
	bhi _02258996
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022588C0: ; jump table
	.short _022588CA - _022588C0 - 2 ; case 0
	.short _022588F0 - _022588C0 - 2 ; case 1
	.short _02258900 - _022588C0 - 2 ; case 2
	.short _0225895E - _022588C0 - 2 ; case 3
	.short _0225897E - _022588C0 - 2 ; case 4
_022588CA:
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x81
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	ldr r0, [r5, #4]
	mov r1, #1
	bl ov45_0222A520
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _02258996
_022588F0:
	bl IsPaletteFadeFinished
	cmp r0, #1
	bne _02258996
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _02258996
_02258900:
	bl IsPaletteFadeFinished
	cmp r0, #1
	bne _02258930
	ldr r0, [r5, #4]
	bl ov45_0222A330
	cmp r0, #1
	bne _02258920
	ldr r0, [r5, #4]
	bl ov45_0222A4A8
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _02258996
_02258920:
	bl ov45_0222D844
	cmp r0, #1
	bne _02258930
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _02258996
_02258930:
	mov r1, #0x81
	str r5, [sp]
	str r1, [sp, #4]
	ldr r5, [r5, #8]
	add r0, r1, #0
	lsl r6, r5, #2
	ldr r5, _022589A4 ; =ov47_02259FA8
	mov r3, #0x9a
	add r0, #0xf7
	add r1, #0xc3
	lsl r3, r3, #2
	ldr r5, [r5, r6]
	add r0, r7, r0
	add r1, r7, r1
	add r2, r7, #0
	add r3, r7, r3
	blx r5
	cmp r0, #1
	bne _02258996
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _02258996
_0225895E:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x81
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _02258996
_0225897E:
	bl IsPaletteFadeFinished
	cmp r0, #1
	bne _02258996
	mov r0, #0x9a
	lsl r0, r0, #2
	add r0, r7, r0
	bl ov47_022593A0
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02258996:
	add r0, r7, #0
	bl ov47_02258A80
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_022589A4: .word ov47_02259FA8
	thumb_func_end ov47_02258898

