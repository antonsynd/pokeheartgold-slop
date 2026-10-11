	.include "asm/macros.inc"
	.include "overlay_92.inc"
	.include "global.inc"
	.public ov92_0225D894

	.text

	.text
	thumb_func_start ov92_0225D894
ov92_0225D894: ; 0x0225D894
	push {r4, lr}
	add r4, r0, #0
	bl GF_RunVramTransferTasks
	bl SpriteSystem_TransferOam
	ldr r0, [r4, #0x5c]
	bl PaletteData_PushTransparentBuffers
	ldr r0, [r4, #0x58]
	bl DoScheduledBgGpuUpdates
	ldr r3, _0225D8BC ; =0x027E0000
	ldr r1, _0225D8C0 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	nop
_0225D8BC: .word 0x027E0000
_0225D8C0: .word 0x00003FF8
	thumb_func_end ov92_0225D894

