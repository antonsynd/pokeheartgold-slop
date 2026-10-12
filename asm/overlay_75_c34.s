	.include "asm/macros.inc"
	.include "overlay_75.inc"
	.include "global.inc"
	.public ov75_02247234
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov75_02247234
ov75_02247234: ; 0x02247234
	push {r4, lr}
	add r4, r0, #0
	bl GF_RunVramTransferTasks
	bl OamManager_ApplyAndResetBuffers
	ldr r0, [r4, #4]
	bl DoScheduledBgGpuUpdates
	ldr r3, _02247254 ; =0x027E0000
	ldr r1, _02247258 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	.balign 4, 0
_02247254: .word 0x027E0000
_02247258: .word 0x00003FF8
	thumb_func_end ov75_02247234

