	.include "asm/macros.inc"
	.include "overlay_48.inc"
	.include "global.inc"
	.public ov48_02258920
	.public ov48_02258F64
	.public ov48_02259030
	.public ov48_02259050

	.text

	thumb_func_start ov48_02258920
ov48_02258920: ; 0x02258920
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
	cmp r0, #6
	bhi _022589EE
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02258948: ; jump table
	.short _02258956 - _02258948 - 2 ; case 0
	.short _0225897C - _02258948 - 2 ; case 1
	.short _0225898C - _02258948 - 2 ; case 2
	.short _022589EE - _02258948 - 2 ; case 3
	.short _022589EE - _02258948 - 2 ; case 4
	.short _022589C0 - _02258948 - 2 ; case 5
	.short _022589E0 - _02258948 - 2 ; case 6
_02258956:
	mov r0, #6
	str r0, [sp]
	mov r1, #1
	str r1, [sp, #4]
	mov r0, #0x70
	str r0, [sp, #8]
	mov r0, #0
	add r2, r1, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	ldr r0, [r5, #0xc]
	mov r1, #1
	bl ov45_0222A520
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _022589EE
_0225897C:
	bl IsPaletteFadeFinished
	cmp r0, #1
	bne _022589EE
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _022589EE
_0225898C:
	add r0, r7, #0
	bl ov48_02258F64
	add r6, r0, #0
	add r0, r7, #0
	bl ov48_02259030
	ldr r0, [r5, #0xc]
	bl ov45_0222A330
	cmp r0, #1
	bne _022589AC
	ldr r0, [r5, #0xc]
	bl ov45_0222A4A8
	mov r6, #1
_022589AC:
	bl ov45_0222D844
	cmp r0, #1
	bne _022589B6
	mov r6, #1
_022589B6:
	cmp r6, #1
	bne _022589EE
	mov r0, #5
	str r0, [r4]
	b _022589EE
_022589C0:
	mov r0, #6
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x70
	str r0, [sp, #8]
	mov r0, #0
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	bl BeginNormalPaletteFade
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _022589EE
_022589E0:
	bl IsPaletteFadeFinished
	cmp r0, #1
	bne _022589EE
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_022589EE:
	add r0, r7, #0
	bl ov48_02259050
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov48_02258920

