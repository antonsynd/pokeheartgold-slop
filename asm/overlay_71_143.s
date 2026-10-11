	.include "asm/macros.inc"
	.include "overlay_71.inc"
	.include "global.inc"
	.public ov71_0224AF58
	.public ov71_0224AFB8
	.extern ov71_02247424

	.text

	.text
	thumb_func_start ov71_0224AF58
ov71_0224AF58: ; 0x0224AF58
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0224AF98
	ldr r1, [r4, #0xc]
	ldr r0, [r4, #0x14]
	mov r2, #3
	add r0, r1, r0
	str r0, [r4, #0xc]
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #0x14]
	add r0, r1, r0
	str r0, [r4, #0x10]
	ldr r3, [r4, #0xc]
	ldr r0, [r4, #4]
	mov r1, #2
	asr r3, r3, #0xc
	bl BgSetPosTextAndCommit
	ldr r3, [r4, #0x10]
	ldr r0, [r4, #4]
	mov r1, #6
	mov r2, #3
	asr r3, r3, #0xc
	bl BgSetPosTextAndCommit
	ldr r0, [r4, #8]
	sub r0, r0, #1
	str r0, [r4, #8]
	pop {r3, r4, r5, pc}
_0224AF98:
	ldr r0, [r4, #4]
	mov r1, #2
	mov r2, #3
	mov r3, #0
	bl BgSetPosTextAndCommit
	ldr r0, [r4, #4]
	mov r1, #6
	mov r2, #3
	mov r3, #0xc0
	bl BgSetPosTextAndCommit
	add r0, r5, #0
	bl ov71_0224AFB8
	pop {r3, r4, r5, pc}
	thumb_func_end ov71_0224AF58

	thumb_func_start ov71_0224AFB8
ov71_0224AFB8: ; 0x0224AFB8
	push {r4, lr}
	add r4, r0, #0
	beq _0224AFD2
	bl SysTask_GetData
	ldr r1, [r0, #0x1c]
	mov r2, #0
	str r2, [r1]
	bl ov71_02247424
	add r0, r4, #0
	bl SysTask_Destroy
_0224AFD2:
	pop {r4, pc}
	thumb_func_end ov71_0224AFB8

