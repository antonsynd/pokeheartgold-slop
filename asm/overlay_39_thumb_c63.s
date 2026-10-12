#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_39_thumb.inc"
	.include "global.inc"
	.public ov39_02228418

	.text

	.text
	thumb_func_start ov39_02228418
ov39_02228418: ; 0x02228418
	push {r4, lr}
	add r4, r0, #0
	bl GF_RunVramTransferTasks
	bl OamManager_ApplyAndResetBuffers
	ldr r0, [r4, #4]
	bl DoScheduledBgGpuUpdates
	ldr r3, _02228438 ; =0x027E0000
	ldr r1, _0222843C ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	.balign 4, 0
_02228438: .word 0x027E0000
_0222843C: .word 0x00003FF8
	thumb_func_end ov39_02228418

