	.include "asm/macros.inc"
	.include "overlay_41_02247828.inc"
	.include "global.inc"
	.public ov41_02247AB4
	.extern ov41_02247D1C

    .text

	.text
	thumb_func_start ov41_02247AB4
ov41_02247AB4: ; 0x02247AB4
	push {r4, r5, lr}
	sub sp, #0x14
	add r4, r0, #0
	ldr r0, [r4, #0x40]
	mov r1, #3
	bl BgClearTilemapBufferAndCommit
	mov r2, #0
	ldr r0, [r4, #0x40]
	mov r1, #3
	add r3, r2, #0
	bl BgSetPosTextAndCommit
	mov r1, #3
	ldr r0, [r4, #0x40]
	add r2, r1, #0
	mov r3, #0
	bl BgSetPosTextAndCommit
	add r0, sp, #0
	mov r1, #0
	mov r2, #0x14
	bl MI_CpuFill8
	ldr r0, [r4, #0x40]
	add r3, sp, #0
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #5
	str r0, [sp, #0xc]
	mov r0, #0x19
	strb r0, [r3, #0x10]
	mov r0, #4
	strb r0, [r3, #0x11]
	ldrb r0, [r3, #0x12]
	mov r1, #0xf
	ldr r2, _02247B54 ; =0x000006EC
	bic r0, r1
	ldr r1, [r4, r2]
	sub r2, #0x34
	lsl r1, r1, #0x18
	lsr r5, r1, #0x18
	mov r1, #0xf
	and r1, r5
	orr r0, r1
	strb r0, [r3, #0x12]
	ldr r0, [r4, r2]
	add r1, sp, #0
	bl YesNoPrompt_InitFromTemplate
	add r0, r4, #0
	mov r1, #1
	bl ov41_02247D1C
	ldr r0, _02247B58 ; =0x04000008
	mov r2, #3
	ldrh r3, [r0]
	mov r1, #2
	bic r3, r2
	orr r1, r3
	strh r1, [r0]
	ldrh r3, [r0, #2]
	mov r1, #1
	bic r3, r2
	orr r1, r3
	strh r1, [r0, #2]
	ldrh r3, [r0, #4]
	mov r1, #3
	bic r3, r2
	orr r1, r3
	strh r1, [r0, #4]
	ldrh r1, [r0, #6]
	bic r1, r2
	strh r1, [r0, #6]
	add sp, #0x14
	pop {r4, r5, pc}
	nop
_02247B54: .word 0x000006EC
_02247B58: .word 0x04000008
	thumb_func_end ov41_02247AB4

