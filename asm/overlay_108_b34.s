	.include "asm/macros.inc"
	.include "overlay_108.inc"
	.include "global.inc"
	.public ov108_021E6BA0
	.extern ov108_021E8490

	.text

	.text
	thumb_func_start ov108_021E6BA0
ov108_021E6BA0: ; 0x021E6BA0
	push {r4, lr}
	add r4, r0, #0
	bl ov108_021E8490
	ldr r3, _021E6C34 ; =0x000184E2
	ldrb r0, [r4, r3]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _021E6C16
	mov r0, #0xd
	add r3, r3, #2
	lsl r0, r0, #6
	ldrsh r3, [r4, r3]
	ldr r0, [r4, r0]
	mov r1, #1
	mov r2, #3
	bl BgSetPosTextAndCommit
	ldr r3, _021E6C38 ; =0x000184E4
	mov r0, #0xd
	lsl r0, r0, #6
	ldrsh r3, [r4, r3]
	ldr r0, [r4, r0]
	mov r1, #2
	mov r2, #3
	bl BgSetPosTextAndCommit
	ldr r3, _021E6C3C ; =0x000184E6
	mov r0, #0xd
	lsl r0, r0, #6
	ldrsh r3, [r4, r3]
	ldr r0, [r4, r0]
	mov r1, #4
	mov r2, #3
	bl BgSetPosTextAndCommit
	ldr r3, _021E6C3C ; =0x000184E6
	mov r0, #0xd
	lsl r0, r0, #6
	ldrsh r3, [r4, r3]
	ldr r0, [r4, r0]
	mov r1, #6
	mov r2, #3
	bl BgSetPosTextAndCommit
	ldr r3, _021E6C3C ; =0x000184E6
	mov r0, #0xd
	lsl r0, r0, #6
	ldrsh r3, [r4, r3]
	ldr r0, [r4, r0]
	mov r1, #5
	mov r2, #3
	bl BgSetPosTextAndCommit
	ldr r1, _021E6C34 ; =0x000184E2
	mov r0, #1
	ldrb r2, [r4, r1]
	bic r2, r0
	strb r2, [r4, r1]
_021E6C16:
	bl GF_RunVramTransferTasks
	mov r0, #0xd
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	bl DoScheduledBgGpuUpdates
	ldr r3, _021E6C40 ; =0x027E0000
	ldr r1, _021E6C44 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	nop
_021E6C34: .word 0x000184E2
_021E6C38: .word 0x000184E4
_021E6C3C: .word 0x000184E6
_021E6C40: .word 0x027E0000
_021E6C44: .word 0x00003FF8
	thumb_func_end ov108_021E6BA0

