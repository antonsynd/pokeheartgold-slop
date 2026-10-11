	.include "asm/macros.inc"
	.include "overlay_72.inc"
	.include "global.inc"
	.public ov72_022380FC
	.public ov72_02238124
	.public ov72_0223B37C

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

	thumb_func_start ov72_02238124
ov72_02238124: ; 0x02238124
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _02238140 ; =ov72_0223B37C
	add r3, sp, #0
	mov r2, #5
_0223812E:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0223812E
	add r0, sp, #0
	bl GfGfx_SetBanks
	add sp, #0x28
	pop {r4, pc}
	.balign 4, 0
_02238140: .word ov72_0223B37C
	thumb_func_end ov72_02238124

