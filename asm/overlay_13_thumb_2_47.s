	.include "asm/macros.inc"
	.include "overlay_13_thumb_2.inc"
	.include "global.inc"
	.public ov13_02223CA0
	.extern ov13_02223A7C
	.extern ov13_0224DF30

	.text

	.text
	thumb_func_start ov13_02223CA0
ov13_02223CA0: ; 0x02223CA0
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	bl OS_DisableInterrupts
	ldr r1, _02223D20 ; =ov13_0224DF30
	add r4, r0, #0
	str r6, [r1, #0x58]
	cmp r5, #0
	beq _02223CC2
	ldr r1, [r1, #0x28]
	add r0, r5, #0
	mov r2, #0x60
	bl MI_CpuCopy8
	b _02223CCC
_02223CC2:
	ldr r0, [r1, #0x28]
	mov r1, #0
	mov r2, #0x60
	bl MI_CpuFill8
_02223CCC:
	ldr r1, _02223D20 ; =ov13_0224DF30
	add r0, r7, #0
	ldr r1, [r1, #0x4c]
	mov r2, #0xc0
	bl MIi_CpuCopy32
	bl ov13_02223A7C
	cmp r0, #1
	bne _02223CF0
	ldr r0, _02223D20 ; =ov13_0224DF30
	mov r1, #8
	str r1, [r0, #0x2c]
	add r0, r4, #0
	bl OS_RestoreInterrupts
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02223CF0:
	ldr r2, _02223D20 ; =ov13_0224DF30
	ldr r0, [r2, #0x2c]
	cmp r0, #3
	bne _02223D16
	ldr r0, [r2, #0x4c]
	ldr r1, [r2, #0x28]
	ldr r2, [r2, #0x58]
	bl WCM_ConnectAsync
	cmp r0, #3
	bne _02223D16
	ldr r0, _02223D20 ; =ov13_0224DF30
	mov r1, #8
	str r1, [r0, #0x2c]
	add r0, r4, #0
	bl OS_RestoreInterrupts
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02223D16:
	add r0, r4, #0
	bl OS_RestoreInterrupts
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02223D20: .word ov13_0224DF30
	thumb_func_end ov13_02223CA0

