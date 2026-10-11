	.include "asm/macros.inc"
	.include "unk_02054648.inc"
	.include "global.inc"
	.public sub_02054790
	.public sub_020547A4
	.public sub_020547D8
	.public sub_02054824
	.extern sub_02054654

	.text
	thumb_func_start sub_02054790
sub_02054790: ; 0x02054790
	push {r4, lr}
	sub sp, #8
	ldr r4, [sp, #0x10]
	str r4, [sp]
	ldr r4, [sp, #0x14]
	str r4, [sp, #4]
	bl sub_02054654
	add sp, #8
	pop {r4, pc}
	thumb_func_end sub_02054790

	thumb_func_start sub_020547A4
sub_020547A4: ; 0x020547A4
	push {r3, lr}
	asr r1, r2, #0xf
	lsr r1, r1, #0x10
	add r1, r2, r1
	asr r2, r3, #0xf
	lsr r2, r2, #0x10
	add r2, r3, r2
	ldr r0, [r0, #0x2c]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	mov r3, #0
	bl ov01_021F654C
	ldr r1, [sp, #8]
	cmp r1, #0
	beq _020547D2
	cmp r0, #0
	beq _020547CC
	mov r1, #1
	b _020547CE
_020547CC:
	mov r1, #0
_020547CE:
	ldr r0, [sp, #8]
	strb r1, [r0]
_020547D2:
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end sub_020547A4

	thumb_func_start sub_020547D8
sub_020547D8: ; 0x020547D8
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, [r0, #0x2c]
	add r4, r3, #0
	add r0, r7, #0
	add r3, sp, #0
	add r5, r1, #0
	add r6, r2, #0
	bl ov01_021F654C
	cmp r0, #0
	bne _020547F6
	mov r0, #0xff
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_020547F6:
	add r1, sp, #0
	ldrb r1, [r1]
	add r0, r7, #0
	bl ov01_021F65E4
	lsr r2, r5, #0x1f
	lsl r1, r5, #0x1b
	sub r1, r1, r2
	mov r3, #0x1b
	ror r1, r3
	add r1, r2, r1
	lsr r5, r6, #0x1f
	lsl r2, r6, #0x1b
	sub r2, r2, r5
	ror r2, r3
	add r2, r5, r2
	lsl r2, r2, #5
	add r1, r1, r2
	lsl r1, r1, #1
	ldrh r0, [r0, r1]
	strh r0, [r4]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_020547D8

	thumb_func_start sub_02054824
sub_02054824: ; 0x02054824
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, [r6, #0x30]
	add r4, r2, #0
	add r5, r1, #0
	add r7, r3, #0
	bl MapMatrix_GetWidth
	asr r2, r4, #4
	asr r1, r5, #4
	lsr r2, r2, #0x1b
	lsr r1, r1, #0x1b
	add r2, r4, r2
	add r1, r5, r1
	asr r2, r2, #5
	asr r1, r1, #5
	mul r0, r2
	add r0, r1, r0
	ldr r1, [r6, #0x5c]
	bl TerrainAttributes_Get
	lsr r2, r5, #0x1f
	lsl r1, r5, #0x1b
	sub r1, r1, r2
	mov r3, #0x1b
	ror r1, r3
	add r1, r2, r1
	lsr r5, r4, #0x1f
	lsl r2, r4, #0x1b
	sub r2, r2, r5
	ror r2, r3
	add r2, r5, r2
	lsl r2, r2, #5
	add r1, r1, r2
	lsl r1, r1, #1
	ldrh r0, [r0, r1]
	strh r0, [r7]
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end sub_02054824

