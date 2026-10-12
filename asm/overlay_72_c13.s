	.include "asm/macros.inc"
	.include "overlay_72.inc"
	.include "global.inc"
	.public ov72_022380FC

	.text

	.text
	thumb_func_start ov72_022380FC
ov72_022380FC: ; 0x022380FC
	push {r4, lr}
	add r4, r0, #0
	bl GF_RunVramTransferTasks
	ldr r0, [r4, #4]
	bl DoScheduledBgGpuUpdates
	bl OamManager_ApplyAndResetBuffers
	ldr r3, _0223811C ; =0x027E0000
	ldr r1, _02238120 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	.balign 4, 0
_0223811C: .word 0x027E0000
_02238120: .word 0x00003FF8
	thumb_func_end ov72_022380FC

