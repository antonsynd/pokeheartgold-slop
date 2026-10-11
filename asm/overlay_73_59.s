#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_73.inc"
	.include "global.inc"
	.public ov73_021E8100
	.public ov73_021E8128
	.public ov73_021EA6AC

	.text

	thumb_func_start ov73_021E8100
ov73_021E8100: ; 0x021E8100
	push {r4, lr}
	add r4, r0, #0
	bl GF_RunVramTransferTasks
	ldr r0, [r4, #4]
	bl DoScheduledBgGpuUpdates
	bl OamManager_ApplyAndResetBuffers
	ldr r3, _021E8120 ; =0x027E0000
	ldr r1, _021E8124 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	.balign 4, 0
_021E8120: .word 0x027E0000
_021E8124: .word 0x00003FF8
	thumb_func_end ov73_021E8100

	thumb_func_start ov73_021E8128
ov73_021E8128: ; 0x021E8128
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021E8144 ; =ov73_021EA6AC
	add r3, sp, #0
	mov r2, #5
_021E8132:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021E8132
	add r0, sp, #0
	bl GfGfx_SetBanks
	add sp, #0x28
	pop {r4, pc}
	.balign 4, 0
_021E8144: .word ov73_021EA6AC
	thumb_func_end ov73_021E8128

