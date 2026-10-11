#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_trainer_card_main.inc"
	.include "global.inc"
	.public ov51_021E6B88
	.public ov51_021E6C00
	.public ov51_021E6C6C
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

	thumb_func_start ov51_021E6C00
ov51_021E6C00: ; 0x021E6C00
	push {r4, lr}
	sub sp, #0x18
	mov r0, #1
	lsl r0, r0, #0xc
	bl FX_Inv
	add r4, r0, #0
	mov r0, #1
	lsl r0, r0, #0xc
	bl FX_Inv
	mov r1, #0
	str r4, [sp, #8]
	str r1, [sp, #0xc]
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	bl OS_WaitVBlankIntr
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _021E6C60 ; =0x04001020
	add r1, sp, #8
	mov r2, #0x80
	mov r3, #0x60
	bl G2x_SetBGyAffine_
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	ldr r0, _021E6C64 ; =0x04001030
	add r1, sp, #8
	mov r2, #0x80
	mov r3, #0x60
	bl G2x_SetBGyAffine_
	bl OS_WaitVBlankIntr
	mov r3, #0
	str r3, [sp]
	ldr r0, _021E6C68 ; =0x04000030
	add r1, sp, #8
	mov r2, #0x80
	str r3, [sp, #4]
	bl G2x_SetBGyAffine_
	add sp, #0x18
	pop {r4, pc}
	.balign 4, 0
_021E6C60: .word 0x04001020
_021E6C64: .word 0x04001030
_021E6C68: .word 0x04000030
	thumb_func_end ov51_021E6C00

	thumb_func_start ov51_021E6C6C
ov51_021E6C6C: ; 0x021E6C6C
	push {r3, r4, lr}
	sub sp, #0x1c
	add r4, r0, #0
	ldr r0, _021E6CC4 ; =0x000030F0
	mov r1, #7
	ldr r3, [r4, r0]
	mov r0, #0
	str r0, [sp]
	ldr r2, [r3, #0x14]
	ldr r0, [r4]
	ldr r3, [r3, #0x10]
	bl BG_LoadCharTilesData
	ldr r0, _021E6CC8 ; =0x000033B4
	mov r1, #0xa
	ldr r0, [r4, r0]
	mov r2, #0x15
	str r1, [sp]
	mov r1, #0xb
	str r1, [sp, #4]
	add r1, r0, #0
	add r1, #0xc
	str r1, [sp, #8]
	str r2, [sp, #0xc]
	mov r3, #5
	str r3, [sp, #0x10]
	ldrh r1, [r0]
	lsl r1, r1, #0x15
	lsr r1, r1, #0x18
	str r1, [sp, #0x14]
	ldrh r0, [r0, #2]
	mov r1, #7
	lsl r0, r0, #0x15
	lsr r0, r0, #0x18
	str r0, [sp, #0x18]
	ldr r0, [r4]
	bl CopyToBgTilemapRect
	ldr r0, [r4]
	mov r1, #7
	bl BgCommitTilemapBufferToVram
	add sp, #0x1c
	pop {r3, r4, pc}
	.balign 4, 0
_021E6CC4: .word 0x000030F0
_021E6CC8: .word 0x000033B4
	thumb_func_end ov51_021E6C6C

