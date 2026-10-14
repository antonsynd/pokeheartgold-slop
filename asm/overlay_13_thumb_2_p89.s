	.include "asm/macros.inc"
	.include "overlay_13_thumb_2.inc"
	.include "global.inc"
	.public ov13_022236B8
	.extern ov13_02223114
	.extern ov13_0224DEE0

	.text

	.text
	thumb_func_start ov13_022236B8
ov13_022236B8: ; 0x022236B8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	str r2, [sp]
	bl OS_DisableInterrupts
	add r4, r0, #0
	add r0, r5, #0
	ldr r2, _02223764 ; =ov13_0224DEE0
	add r0, #0x53
	mov r1, #3
	bic r0, r1
	add r6, r0, #0
	str r5, [r2, #0x24]
	add r6, #0x2f
	mov r1, #0x1f
	ldr r3, _02223768 ; =0x0000231F
	str r0, [r2, #8]
	bic r6, r1
	str r6, [r2]
	add r6, r6, r3
	bic r6, r1
	str r6, [r2, #0x20]
	add r6, #0xdf
	bic r6, r1
	str r6, [r0, #4]
	ldr r1, [sp]
	ldr r0, [r2, #8]
	add r5, r5, r1
	ldr r1, [r0, #4]
	sub r1, r5, r1
	str r1, [r0, #8]
	ldr r0, [r2, #8]
	mov r1, #0
	str r1, [r0, #0xc]
	ldr r0, [r2, #8]
	mov r1, #3
	str r1, [r0]
	str r7, [r2, #0x1c]
	ldr r0, [r2, #0x18]
	cmp r0, #0
	bne _0222372A
	sub r3, #0x1f
	ldr r0, [r2]
	add r1, r3, #0
	bl WCM_Init
	cmp r0, #0
	beq _02223724
	add r0, r4, #0
	bl OS_RestoreInterrupts
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02223724:
	ldr r0, _02223764 ; =ov13_0224DEE0
	mov r1, #1
	str r1, [r0, #0x18]
_0222372A:
	ldr r0, _02223764 ; =ov13_0224DEE0
	ldr r1, [r0, #0x18]
	cmp r1, #1
	bne _02223758
	ldr r0, [r0, #8]
	ldr r1, _0222376C ; =ov13_02223114
	bl WCM_StartupAsync
	cmp r0, #3
	beq _02223748
	add r0, r4, #0
	bl OS_RestoreInterrupts
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02223748:
	ldr r0, _02223764 ; =ov13_0224DEE0
	mov r1, #4
	str r1, [r0, #0x18]
	add r0, r4, #0
	bl OS_RestoreInterrupts
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02223758:
	add r0, r4, #0
	bl OS_RestoreInterrupts
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02223764: .word ov13_0224DEE0
_02223768: .word 0x0000231F
_0222376C: .word ov13_02223114
	thumb_func_end ov13_022236B8

