	.include "asm/macros.inc"
	.include "overlay_99.inc"
	.include "global.inc"
	.public ov99_021E6250

	.text

	thumb_func_start ov99_021E6250
ov99_021E6250: ; 0x021E6250
	push {r4, lr}
	add r4, r0, #0
	bl SpriteSystem_TransferOam
	ldr r0, [r4, #4]
	bl DoScheduledBgGpuUpdates
	ldr r3, _021E626C ; =0x027E0000
	ldr r1, _021E6270 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	.balign 4, 0
_021E626C: .word 0x027E0000
_021E6270: .word 0x00003FF8
	thumb_func_end ov99_021E6250

