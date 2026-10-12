	.include "asm/macros.inc"
	.include "overlay_111.inc"
	.include "global.inc"
	.public ov111_021E5D2C
	.public ov111_021E5DF0
	.public ov111_021E5E34
	.extern ov111_021E5C94
	.extern ov111_021E5CB4
	.extern ov111_021E5CD4
	.extern ov111_021E5F50
	.extern ov111_021E6000
	.extern ov111_021E60D4
	.extern ov111_021E6180
	.extern ov111_021E66DC
	.extern ov111_021E67C4
	.extern ov111_021E67EC

	.text

	.text
	thumb_func_start ov111_021E5D2C
ov111_021E5D2C: ; 0x021E5D2C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r4, r0, #0
	add r5, r1, #0
	add r7, r2, #0
	bl GetWindowBgConfig
	str r0, [sp, #0x1c]
	add r0, r4, #0
	bl GetWindowBgId
	str r0, [sp, #0x18]
	add r0, r4, #0
	bl GetWindowX
	str r0, [sp, #0x10]
	add r0, r4, #0
	bl GetWindowY
	str r0, [sp, #0x14]
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #0x30
	bl CalculateHpBarPixelsLength
	add r4, r0, #0
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #0x30
	bl CalculateHpBarColor
	cmp r0, #4
	bhi _021E5D90
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021E5D7A: ; jump table
	.short _021E5D84 - _021E5D7A - 2 ; case 0
	.short _021E5D8C - _021E5D7A - 2 ; case 1
	.short _021E5D88 - _021E5D7A - 2 ; case 2
	.short _021E5D84 - _021E5D7A - 2 ; case 3
	.short _021E5D84 - _021E5D7A - 2 ; case 4
_021E5D84:
	mov r6, #1
	b _021E5D94
_021E5D88:
	mov r6, #0xa
	b _021E5D94
_021E5D8C:
	mov r6, #0x13
	b _021E5D94
_021E5D90:
	bl GF_AssertFail
_021E5D94:
	add r0, r6, #0
	add r0, #8
	lsl r0, r0, #0x10
	mov r5, #0
	lsr r7, r0, #0x10
_021E5D9E:
	cmp r4, #8
	blo _021E5DA6
	add r2, r7, #0
	b _021E5DAC
_021E5DA6:
	add r0, r6, r4
	lsl r0, r0, #0x10
	lsr r2, r0, #0x10
_021E5DAC:
	ldr r0, [sp, #0x14]
	ldr r3, [sp, #0x10]
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0x11
	str r0, [sp, #0xc]
	add r3, r3, r5
	lsl r3, r3, #0x18
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	lsr r3, r3, #0x18
	bl FillBgTilemapRect
	cmp r4, #8
	bhs _021E5DD2
	mov r4, #0
	b _021E5DD8
_021E5DD2:
	sub r4, #8
	lsl r0, r4, #0x18
	lsr r4, r0, #0x18
_021E5DD8:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
	cmp r5, #6
	blo _021E5D9E
	ldr r0, [sp, #0x1c]
	ldr r1, [sp, #0x18]
	bl ScheduleBgTilemapBufferTransfer
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov111_021E5D2C

	thumb_func_start ov111_021E5DF0
ov111_021E5DF0: ; 0x021E5DF0
	push {r4, lr}
	add r4, r0, #0
	bne _021E5DFA
	bl GF_AssertFail
_021E5DFA:
	ldr r0, [r4, #0x10]
	cmp r0, #0
	bne _021E5E04
	bl GF_AssertFail
_021E5E04:
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _021E5E0E
	bl GF_AssertFail
_021E5E0E:
	ldr r0, [r4, #0x10]
	bl SpriteSystem_DrawSprites
	bl SpriteSystem_TransferOam
	ldr r0, [r4, #8]
	bl DoScheduledBgGpuUpdates
	ldr r3, _021E5E2C ; =0x027E0000
	ldr r1, _021E5E30 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	.balign 4, 0
_021E5E2C: .word 0x027E0000
_021E5E30: .word 0x00003FF8
	thumb_func_end ov111_021E5DF0

	thumb_func_start ov111_021E5E34
ov111_021E5E34: ; 0x021E5E34
	push {r3, r4, r5, lr}
	sub sp, #8
	add r4, r0, #0
	bl OverlayManager_GetArgs
	add r5, r0, #0
	bne _021E5E46
	bl GF_AssertFail
_021E5E46:
	mov r0, #3
	mov r1, #0x94
	lsl r2, r0, #0x10
	bl Heap_Create
	add r0, r4, #0
	mov r1, #0x34
	mov r2, #0x94
	bl OverlayManager_CreateAndGetData
	mov r1, #0
	mov r2, #0x34
	add r4, r0, #0
	bl MI_CpuFill8
	mov r0, #0x94
	str r0, [r4]
	str r5, [r4, #4]
	ldr r0, [r5, #8]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl ov111_021E5C94
	str r0, [r4, #0x2c]
	bl ov111_021E5CD4
	ldr r2, _021E5EF8 ; =0x04000304
	ldr r0, _021E5EFC ; =0xFFFF7FFF
	ldrh r1, [r2]
	and r0, r1
	strh r0, [r2]
	bl ov111_021E5CB4
	add r0, r4, #0
	bl ov111_021E5F50
	add r0, r4, #0
	bl ov111_021E6000
	add r0, r4, #0
	bl ov111_021E60D4
	add r0, r4, #0
	bl ov111_021E6180
	ldr r0, [r4]
	bl YesNoPrompt_Create
	str r0, [r4, #0x18]
	ldr r0, [r4]
	bl ov111_021E67C4
	str r0, [r4, #0x24]
	ldr r1, [r4, #8]
	ldr r3, [r5, #0xc]
	mov r2, #1
	bl ov111_021E67EC
	ldr r0, [r4, #0x10]
	str r0, [sp]
	mov r0, #0x28
	ldrsb r0, [r4, r0]
	str r0, [sp, #4]
	ldr r0, [r4]
	ldr r1, [r4, #8]
	ldr r2, [r4, #0x24]
	ldr r3, [r4, #0xc]
	bl ov111_021E66DC
	str r0, [r4, #0x20]
	mov r0, #0
	bl ResetVisibleHardwareWindows
	mov r0, #1
	bl ResetVisibleHardwareWindows
	mov r0, #1
	bl TextFlags_SetCanABSpeedUpPrint
	mov r0, #1
	bl TextFlags_SetCanTouchSpeedUpPrint
	ldr r0, _021E5F00 ; =ov111_021E5DF0
	add r1, r4, #0
	bl Main_SetVBlankIntrCB
	add sp, #8
	pop {r3, r4, r5, pc}
	nop
_021E5EF8: .word 0x04000304
_021E5EFC: .word 0xFFFF7FFF
_021E5F00: .word ov111_021E5DF0
	thumb_func_end ov111_021E5E34

