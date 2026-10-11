	.include "asm/macros.inc"
	.include "overlay_109.inc"
	.include "global.inc"
	.public ov109_021E682C
	.public ov109_021E685C
	.public ov109_021E6898
	.public ov109_021E68B8
	.public ov109_021E68D4
	.extern ov109_021E76F0
	.extern ov109_021E7748

	.text

	.text
	thumb_func_start ov109_021E682C
ov109_021E682C: ; 0x021E682C
	push {r4, lr}
	add r4, r0, #0
	ldrh r1, [r4, #8]
	cmp r1, #0
	beq _021E683C
	cmp r1, #1
	beq _021E6848
	b _021E6858
_021E683C:
	bl ov109_021E76F0
	ldrh r0, [r4, #8]
	add r0, r0, #1
	strh r0, [r4, #8]
	b _021E6858
_021E6848:
	bl ov109_021E7748
	cmp r0, #7
	beq _021E6858
	mov r0, #0
	strh r0, [r4, #8]
	mov r0, #1
	pop {r4, pc}
_021E6858:
	mov r0, #7
	pop {r4, pc}
	thumb_func_end ov109_021E682C

	thumb_func_start ov109_021E685C
ov109_021E685C: ; 0x021E685C
	push {r4, lr}
	add r4, r0, #0
	add r0, #0x90
	ldr r0, [r0]
	cmp r0, #0
	beq _021E686C
	bl SpriteSystem_TransferOam
_021E686C:
	add r0, r4, #0
	bl ov109_021E6898
	add r0, r4, #0
	bl ov109_021E68D4
	bl NNS_GfdDoVramTransfer
	ldr r0, [r4, #0x14]
	bl DoScheduledBgGpuUpdates
	ldr r3, _021E6890 ; =0x027E0000
	ldr r1, _021E6894 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	.balign 4, 0
_021E6890: .word 0x027E0000
_021E6894: .word 0x00003FF8
	thumb_func_end ov109_021E685C

	thumb_func_start ov109_021E6898
ov109_021E6898: ; 0x021E6898
	push {r4, lr}
	add r4, r0, #0
	ldrb r1, [r4, #0x18]
	lsl r0, r1, #0x1d
	lsr r0, r0, #0x1f
	beq _021E68AE
	lsl r1, r1, #0x1c
	mov r0, #2
	lsr r1, r1, #0x1f
	bl ToggleBgLayer
_021E68AE:
	ldrb r1, [r4, #0x18]
	mov r0, #4
	bic r1, r0
	strb r1, [r4, #0x18]
	pop {r4, pc}
	thumb_func_end ov109_021E6898

	thumb_func_start ov109_021E68B8
ov109_021E68B8: ; 0x021E68B8
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	lsl r1, r1, #0x1f
	ldrb r3, [r0, #0x18]
	mov r2, #8
	lsr r1, r1, #0x1c
	bic r3, r2
	orr r1, r3
	strb r1, [r0, #0x18]
	ldrb r2, [r0, #0x18]
	mov r1, #4
	orr r1, r2
	strb r1, [r0, #0x18]
	bx lr
	thumb_func_end ov109_021E68B8

	thumb_func_start ov109_021E68D4
ov109_021E68D4: ; 0x021E68D4
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	ldrb r0, [r4, #0x18]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	beq _021E6916
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	mov r0, #1
	lsl r0, r0, #0xc
	bl FX_Inv
	str r0, [sp, #0x10]
	mov r0, #0x1f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl FX_Inv
	str r0, [sp, #4]
	mov r0, #0x78
	str r0, [sp]
	ldr r0, [r4, #0x14]
	mov r1, #2
	add r2, sp, #4
	mov r3, #0x80
	bl SetBgAffine
	ldrb r1, [r4, #0x18]
	mov r0, #2
	bic r1, r0
	strb r1, [r4, #0x18]
_021E6916:
	add sp, #0x14
	pop {r3, r4, pc}
	.balign 4, 0
	thumb_func_end ov109_021E68D4

