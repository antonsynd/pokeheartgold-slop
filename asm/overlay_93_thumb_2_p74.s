	.include "macros.inc"
	.include "overlay_93_thumb_2.inc"
	.include "global.inc"
	.public ov93_022625BC

	.text

	.text
	thumb_func_start ov93_022625BC
ov93_022625BC: ; 0x022625BC
	push {r3, r4, r5, lr}
	add r5, r1, #0
	bl OverlayManager_GetData
	add r4, r0, #0
	ldr r0, [r4]
	add r1, r0, #0
	add r1, #0x3d
	ldrb r1, [r1]
	cmp r1, #1
	bne _02262642
	add r1, r0, #0
	add r1, #0x3e
	ldrb r1, [r1]
	cmp r1, #0
	beq _022625E4
	cmp r1, #1
	beq _02262606
	cmp r1, #2
	b _0226261E
_022625E4:
	bl IsPaletteFadeFinished
	cmp r0, #1
	bne _022625F0
	bl sub_0200FB70
_022625F0:
	mov r0, #0
	bl sub_0200FC20
	ldr r1, [r4]
	add r0, r1, #0
	add r0, #0x3e
	ldrb r0, [r0]
	add r1, #0x3e
	add r0, r0, #1
	strb r0, [r1]
	b _0226263E
_02262606:
	bl ov90_02258B98
	cmp r0, #1
	bne _0226263E
	ldr r1, [r4]
	add r0, r1, #0
	add r0, #0x3e
	ldrb r0, [r0]
	add r1, #0x3e
	add r0, r0, #1
	strb r0, [r1]
	b _0226263E
_0226261E:
	ldr r0, [r4, #4]
	cmp r0, #0
	beq _0226262C
	bl ov90_02258938
	mov r0, #0
	str r0, [r4, #4]
_0226262C:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0226263A
	bl ov90_02258A04
	mov r0, #0
	str r0, [r4, #8]
_0226263A:
	mov r0, #1
	pop {r3, r4, r5, pc}
_0226263E:
	mov r0, #0
	pop {r3, r4, r5, pc}
_02262642:
	ldr r1, [r5]
	cmp r1, #5
	bhi _022626E0
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02262654: ; jump table
	.short _02262660 - _02262654 - 2 ; case 0
	.short _02262674 - _02262654 - 2 ; case 1
	.short _02262684 - _02262654 - 2 ; case 2
	.short _022626A8 - _02262654 - 2 ; case 3
	.short _022626BC - _02262654 - 2 ; case 4
	.short _022626E0 - _02262654 - 2 ; case 5
_02262660:
	add r0, #0x31
	ldrb r0, [r0]
	cmp r0, #0
	bne _0226266E
	mov r0, #1
	str r0, [r5]
	b _022626E4
_0226266E:
	mov r0, #3
	str r0, [r5]
	b _022626E4
_02262674:
	mov r1, #0x75
	bl ov90_0225892C
	str r0, [r4, #4]
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _022626E4
_02262684:
	ldr r0, [r4, #4]
	bl ov90_022589BC
	cmp r0, #1
	bne _022626E4
	ldr r0, [r4, #4]
	bl ov90_022589CC
	ldr r1, [r4]
	str r0, [r1, #0x34]
	ldr r0, [r4, #4]
	bl ov90_02258938
	mov r0, #0
	str r0, [r4, #4]
	mov r0, #5
	str r0, [r5]
	b _022626E4
_022626A8:
	add r1, r0, #0
	add r1, #0x10
	mov r2, #0x75
	bl ov90_022589F8
	str r0, [r4, #8]
	ldr r0, [r5]
	add r0, r0, #1
	str r0, [r5]
	b _022626E4
_022626BC:
	ldr r0, [r4, #8]
	bl ov90_02258AA0
	cmp r0, #1
	bne _022626E4
	ldr r0, [r4, #8]
	bl ov90_02258AA4
	ldr r1, [r4]
	str r0, [r1, #0x38]
	ldr r0, [r4, #8]
	bl ov90_02258A04
	mov r0, #0
	str r0, [r4, #8]
	mov r0, #5
	str r0, [r5]
	b _022626E4
_022626E0:
	mov r0, #1
	pop {r3, r4, r5, pc}
_022626E4:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end ov93_022625BC

