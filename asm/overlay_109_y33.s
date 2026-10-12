	.include "asm/macros.inc"
	.include "overlay_109.inc"
	.include "global.inc"
	.public ov109_021E685C
	.extern ov109_021E6898
	.extern ov109_021E68D4

	.text

	.text
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

