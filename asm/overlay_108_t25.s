	.include "asm/macros.inc"
	.include "overlay_108.inc"
	.include "global.inc"
	.public ov108_021E6BA0
	.public ov108_021E6C48
	.public ov108_021E6C68
	.public ov108_021E6D24
	.extern ov108_021E8490
	.extern ov108_021EA738
	.extern ov108_021EA780
	.extern ov108_021EA898

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

	thumb_func_start ov108_021E6C48
ov108_021E6C48: ; 0x021E6C48
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021E6C64 ; =ov108_021EA780
	add r3, sp, #0
	mov r2, #5
_021E6C52:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021E6C52
	add r0, sp, #0
	bl GfGfx_SetBanks
	add sp, #0x28
	pop {r4, pc}
	.balign 4, 0
_021E6C64: .word ov108_021EA780
	thumb_func_end ov108_021E6C48

	thumb_func_start ov108_021E6C68
ov108_021E6C68: ; 0x021E6C68
	push {r4, r5, r6, r7, lr}
	sub sp, #0xf4
	add r5, r0, #0
	bl ov108_021E6C48
	ldr r2, _021E6D0C ; =0x04000304
	ldr r0, _021E6D10 ; =0xFFFF7FFF
	ldrh r1, [r2]
	and r0, r1
	strh r0, [r2]
	ldr r0, [r5]
	bl BgConfig_Alloc
	mov r1, #0xd
	lsl r1, r1, #6
	add r3, sp, #4
	ldr r4, _021E6D14 ; =ov108_021EA738
	str r0, [r5, r1]
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl SetBothScreensModesAndDisable
	ldr r4, _021E6D18 ; =ov108_021EA898
	add r3, sp, #0x14
	mov r2, #0x1c
_021E6CA2:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021E6CA2
	mov r4, #0
	add r7, r4, #0
	add r6, sp, #0x14
_021E6CB0:
	mov r0, #0xd
	lsl r0, r0, #6
	lsl r1, r4, #0x18
	ldr r0, [r5, r0]
	lsr r1, r1, #0x18
	add r2, r6, #0
	mov r3, #0
	bl InitBgFromTemplate
	mov r0, #0xd
	lsl r0, r0, #6
	lsl r1, r4, #0x18
	ldr r0, [r5, r0]
	lsr r1, r1, #0x18
	bl BgClearTilemapBufferAndCommit
	lsl r0, r4, #0x18
	ldr r3, [r5]
	lsr r0, r0, #0x18
	mov r1, #0x40
	mov r2, #0
	bl BG_ClearCharDataRange
	add r7, r7, #1
	add r4, r4, #1
	add r6, #0x1c
	cmp r7, #8
	blt _021E6CB0
	mov r0, #4
	str r0, [sp]
	mov r2, #0x1c
	ldr r0, _021E6D1C ; =0x04000050
	mov r1, #2
	add r3, r2, #0
	bl G2x_SetBlendAlpha_
	mov r0, #4
	str r0, [sp]
	ldr r0, _021E6D20 ; =0x04001050
	mov r1, #1
	mov r2, #0x1e
	mov r3, #0x1c
	bl G2x_SetBlendAlpha_
	add sp, #0xf4
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_021E6D0C: .word 0x04000304
_021E6D10: .word 0xFFFF7FFF
_021E6D14: .word ov108_021EA738
_021E6D18: .word ov108_021EA898
_021E6D1C: .word 0x04000050
_021E6D20: .word 0x04001050
	thumb_func_end ov108_021E6C68

	thumb_func_start ov108_021E6D24
ov108_021E6D24: ; 0x021E6D24
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	mov r1, #0
	add r5, r0, #0
	ldr r0, _021E6D74 ; =0x04000050
	add r2, r1, #0
	mov r3, #0x1f
	str r1, [sp]
	bl G2x_SetBlendAlpha_
	mov r1, #0
	ldr r0, _021E6D78 ; =0x04001050
	add r2, r1, #0
	mov r3, #0x1f
	str r1, [sp]
	bl G2x_SetBlendAlpha_
	mov r6, #0xd
	mov r4, #0
	lsl r6, r6, #6
_021E6D4C:
	lsl r1, r4, #0x18
	ldr r0, [r5, r6]
	lsr r1, r1, #0x18
	bl FreeBgTilemapBuffer
	add r4, r4, #1
	cmp r4, #8
	blt _021E6D4C
	mov r0, #0xd
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	bl Heap_Free
	ldr r2, _021E6D7C ; =0x04000304
	ldrh r1, [r2]
	lsr r0, r2, #0xb
	orr r0, r1
	strh r0, [r2]
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_021E6D74: .word 0x04000050
_021E6D78: .word 0x04001050
_021E6D7C: .word 0x04000304
	thumb_func_end ov108_021E6D24

