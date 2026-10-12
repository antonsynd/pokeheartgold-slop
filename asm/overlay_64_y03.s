	.include "asm/macros.inc"
	.include "overlay_64.inc"
	.include "global.inc"
	.public ov64_021E5A88

	.text

	.text
	thumb_func_start ov64_021E5A88
ov64_021E5A88: ; 0x021E5A88
	push {r3, lr}
	ldr r0, [r0, #4]
	bl DoScheduledBgGpuUpdates
	bl SpriteSystem_TransferOam
	ldr r3, _021E5AA4 ; =0x027E0000
	ldr r1, _021E5AA8 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r3, pc}
	nop
_021E5AA4: .word 0x027E0000
_021E5AA8: .word 0x00003FF8
	thumb_func_end ov64_021E5A88

