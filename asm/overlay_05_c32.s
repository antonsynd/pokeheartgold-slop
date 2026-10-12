	.include "asm/macros.inc"
	.include "overlay_05.inc"
	.include "global.inc"
	.public ov05_0221CE88

	.text

	.text
	thumb_func_start ov05_0221CE88
ov05_0221CE88: ; 0x0221CE88
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0xc]
	bl DoScheduledBgGpuUpdates
	ldr r0, [r4, #8]
	bl PaletteData_PushTransparentBuffers
	bl GF_RunVramTransferTasks
	bl SpriteSystem_TransferOam
	ldr r3, _0221CEB0 ; =0x027E0000
	ldr r1, _0221CEB4 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	nop
_0221CEB0: .word 0x027E0000
_0221CEB4: .word 0x00003FF8
	thumb_func_end ov05_0221CE88

