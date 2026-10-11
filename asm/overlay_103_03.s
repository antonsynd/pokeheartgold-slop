	.include "asm/macros.inc"
	.include "overlay_103.inc"
	.include "global.inc"
	.public ov103_021EC9B4

	.text

	thumb_func_start ov103_021EC9B4
ov103_021EC9B4: ; 0x021EC9B4
	push {r3, lr}
	ldr r0, [r0, #0xc]
	ldr r0, [r0]
	bl DoScheduledBgGpuUpdates
	bl SpriteSystem_TransferOam
	ldr r3, _021EC9D0 ; =0x027E0000
	ldr r1, _021EC9D4 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r3, pc}
	.balign 4, 0
_021EC9D0: .word 0x027E0000
_021EC9D4: .word 0x00003FF8
	thumb_func_end ov103_021EC9B4

