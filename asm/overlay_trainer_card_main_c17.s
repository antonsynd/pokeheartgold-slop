#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_trainer_card_main.inc"
	.include "global.inc"
	.public ov51_021E6B88
	.extern ov51_021E69EC

	.text

	.text
	thumb_func_start ov51_021E6B88
ov51_021E6B88: ; 0x021E6B88
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _021E6BF0 ; =0x0000343F
	mov r1, #5
	ldrb r0, [r4, r0]
	mov r2, #0
	neg r5, r0
	ldr r0, [r4]
	add r3, r5, #0
	bl BgSetPosTextAndCommit
	ldr r0, [r4]
	mov r1, #5
	mov r2, #3
	add r3, r5, #0
	bl BgSetPosTextAndCommit
	ldr r0, [r4]
	mov r1, #3
	mov r2, #0
	add r3, r5, #0
	bl BgSetPosTextAndCommit
	mov r1, #3
	ldr r0, [r4]
	add r2, r1, #0
	add r3, r5, #0
	bl BgSetPosTextAndCommit
	ldr r0, _021E6BF4 ; =0x0000343A
	ldrb r0, [r4, r0]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	beq _021E6BD2
	add r0, r4, #0
	bl ov51_021E69EC
_021E6BD2:
	ldr r0, [r4]
	bl DoScheduledBgGpuUpdates
	bl GF_RunVramTransferTasks
	bl OamManager_ApplyAndResetBuffers
	ldr r3, _021E6BF8 ; =0x027E0000
	ldr r1, _021E6BFC ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r3, r4, r5, pc}
	nop
_021E6BF0: .word 0x0000343F
_021E6BF4: .word 0x0000343A
_021E6BF8: .word 0x027E0000
_021E6BFC: .word 0x00003FF8
	thumb_func_end ov51_021E6B88

