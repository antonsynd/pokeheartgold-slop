#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_73.inc"
	.include "global.inc"
	.public ov73_021E5CD8

	.text

	.text
	thumb_func_start ov73_021E5CD8
ov73_021E5CD8: ; 0x021E5CD8
	push {r4, lr}
	add r4, r0, #0
	bl GF_RunVramTransferTasks
	bl OamManager_ApplyAndResetBuffers
	ldr r0, [r4]
	bl DoScheduledBgGpuUpdates
	ldr r3, _021E5CF8 ; =0x027E0000
	ldr r1, _021E5CFC ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	.balign 4, 0
_021E5CF8: .word 0x027E0000
_021E5CFC: .word 0x00003FF8
	thumb_func_end ov73_021E5CD8

