	.include "asm/macros.inc"
	.include "overlay_85.inc"
	.include "global.inc"
	.public ov85_021E8C14

	.text

	.text
	thumb_func_start ov85_021E8C14
ov85_021E8C14: ; 0x021E8C14
	push {r4, lr}
	add r4, r0, #0
	bl GF_RunVramTransferTasks
	bl OamManager_ApplyAndResetBuffers
	add r0, r4, #0
	bl DoScheduledBgGpuUpdates
	ldr r3, _021E8C34 ; =0x027E0000
	ldr r1, _021E8C38 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	.balign 4, 0
_021E8C34: .word 0x027E0000
_021E8C38: .word 0x00003FF8
	thumb_func_end ov85_021E8C14

