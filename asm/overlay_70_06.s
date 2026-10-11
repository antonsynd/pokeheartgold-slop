#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_022387AC
	.public ov70_022387F8
	.public ov70_02245218

	.text

	thumb_func_start ov70_022387AC
ov70_022387AC: ; 0x022387AC
	push {r4, lr}
	ldr r1, _022387E8 ; =0x00001204
	add r4, r0, #0
	ldr r1, [r4, r1]
	cmp r1, #0
	beq _022387C0
	blx r1
	ldr r0, _022387E8 ; =0x00001204
	mov r1, #0
	str r1, [r4, r0]
_022387C0:
	ldr r0, _022387EC ; =0x00001208
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _022387CC
	add r0, r4, #0
	blx r1
_022387CC:
	ldr r0, [r4, #4]
	bl DoScheduledBgGpuUpdates
	bl GF_RunVramTransferTasks
	bl OamManager_ApplyAndResetBuffers
	ldr r3, _022387F0 ; =0x027E0000
	ldr r1, _022387F4 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	.balign 4, 0
_022387E8: .word 0x00001204
_022387EC: .word 0x00001208
_022387F0: .word 0x027E0000
_022387F4: .word 0x00003FF8
	thumb_func_end ov70_022387AC

	thumb_func_start ov70_022387F8
ov70_022387F8: ; 0x022387F8
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _02238814 ; =ov70_02245218
	add r3, sp, #0
	mov r2, #5
_02238802:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02238802
	add r0, sp, #0
	bl GfGfx_SetBanks
	add sp, #0x28
	pop {r4, pc}
	.balign 4, 0
_02238814: .word ov70_02245218
	thumb_func_end ov70_022387F8

