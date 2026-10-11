	.include "asm/macros.inc"
	.include "overlay_13_thumb_2.inc"
	.include "global.inc"
	.public ov13_02223634
	.extern ov13_022233CC
	.extern ov13_0224DEE0

	.text

	.text
	thumb_func_start ov13_02223634
ov13_02223634: ; 0x02223634
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r5, r1, #0
	add r6, r2, #0
	bl OS_DisableInterrupts
	ldr r1, _022236B4 ; =ov13_0224DEE0
	add r4, r0, #0
	str r6, [r1, #0xc]
	cmp r5, #0
	beq _02223656
	ldr r1, [r1, #0x24]
	add r0, r5, #0
	mov r2, #0x50
	bl MI_CpuCopy8
	b _02223660
_02223656:
	ldr r0, [r1, #0x24]
	mov r1, #0
	mov r2, #0x50
	bl MI_CpuFill8
_02223660:
	ldr r1, _022236B4 ; =ov13_0224DEE0
	add r0, r7, #0
	ldr r1, [r1, #0x20]
	mov r2, #0xc0
	bl MIi_CpuCopy32
	bl ov13_022233CC
	cmp r0, #1
	bne _02223684
	ldr r0, _022236B4 ; =ov13_0224DEE0
	mov r1, #8
	str r1, [r0, #0x18]
	add r0, r4, #0
	bl OS_RestoreInterrupts
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02223684:
	ldr r2, _022236B4 ; =ov13_0224DEE0
	ldr r0, [r2, #0x18]
	cmp r0, #3
	bne _022236AA
	ldr r0, [r2, #0x20]
	ldr r1, [r2, #0x24]
	ldr r2, [r2, #0xc]
	bl WCM_ConnectAsync
	cmp r0, #3
	bne _022236AA
	ldr r0, _022236B4 ; =ov13_0224DEE0
	mov r1, #8
	str r1, [r0, #0x18]
	add r0, r4, #0
	bl OS_RestoreInterrupts
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022236AA:
	add r0, r4, #0
	bl OS_RestoreInterrupts
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_022236B4: .word ov13_0224DEE0
	thumb_func_end ov13_02223634

