	.include "asm/macros.inc"
	.include "overlay_57.inc"
	.include "global.inc"
	.public ov57_02237CEC
	.public ov57_02237E38
	.extern _0223BC80
	.extern ov57_0223BC90
	.extern ov57_0223BCB8
	.extern ov57_0223BD0C

	.text

	.text
	thumb_func_start ov57_02237CEC
ov57_02237CEC: ; 0x02237CEC
	push {r4, r5, lr}
	sub sp, #0xfc
	add r4, r0, #0
	bl GfGfx_DisableEngineAPlanes
	ldr r5, _02237E24 ; =ov57_0223BC90
	add r3, sp, #0x10
	mov r2, #5
_02237CFC:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02237CFC
	add r0, sp, #0x10
	bl GfGfx_SetBanks
	mov r1, #6
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x18
	lsl r2, r2, #0x12
	bl MIi_CpuClear32
	mov r1, #0x62
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x14
	lsl r2, r2, #0x10
	bl MIi_CpuClear32
	mov r1, #0x19
	mov r2, #1
	mov r0, #0
	lsl r1, r1, #0x16
	lsl r2, r2, #0x12
	bl MIi_CpuClear32
	mov r1, #0x66
	mov r2, #2
	mov r0, #0
	lsl r1, r1, #0x14
	lsl r2, r2, #0x10
	bl MIi_CpuClear32
	ldr r5, _02237E28 ; =_0223BC80
	add r3, sp, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl SetBothScreensModesAndDisable
	ldr r5, _02237E2C ; =ov57_0223BCB8
	add r3, sp, #0xa8
	mov r2, #0xa
_02237D5C:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02237D5C
	ldr r0, [r5]
	mov r1, #1
	str r0, [r3]
	add r0, r4, #0
	add r2, sp, #0xa8
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #2
	add r2, sp, #0xc4
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #3
	add r2, sp, #0xe0
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #1
	bl BgClearTilemapBufferAndCommit
	add r0, r4, #0
	mov r1, #2
	bl BgClearTilemapBufferAndCommit
	add r0, r4, #0
	mov r1, #3
	bl BgClearTilemapBufferAndCommit
	ldr r1, _02237E30 ; =0x04000008
	mov r0, #3
	ldrh r2, [r1]
	bic r2, r0
	mov r0, #1
	orr r2, r0
	strh r2, [r1]
	add r1, r0, #0
	bl GfGfx_EngineATogglePlanes
	ldr r5, _02237E34 ; =ov57_0223BD0C
	add r3, sp, #0x38
	mov r2, #0xe
_02237DBE:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02237DBE
	add r0, r4, #0
	mov r1, #4
	add r2, sp, #0x38
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #5
	add r2, sp, #0x54
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #6
	add r2, sp, #0x70
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #7
	add r2, sp, #0x8c
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #4
	bl BgClearTilemapBufferAndCommit
	add r0, r4, #0
	mov r1, #5
	bl BgClearTilemapBufferAndCommit
	add r0, r4, #0
	mov r1, #6
	bl BgClearTilemapBufferAndCommit
	add r0, r4, #0
	mov r1, #7
	bl BgClearTilemapBufferAndCommit
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineBTogglePlanes
	add sp, #0xfc
	pop {r4, r5, pc}
	nop
_02237E24: .word ov57_0223BC90
_02237E28: .word _0223BC80
_02237E2C: .word ov57_0223BCB8
_02237E30: .word 0x04000008
_02237E34: .word ov57_0223BD0C
	thumb_func_end ov57_02237CEC

	thumb_func_start ov57_02237E38
ov57_02237E38: ; 0x02237E38
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl PokepicManager_HandleLoadImgAndOrPltt
	bl SpriteSystem_TransferOam
	add r0, r4, #0
	add r0, #0xe8
	ldr r0, [r0]
	bl PaletteData_PushTransparentBuffers
	add r4, #0xe4
	ldr r0, [r4]
	bl DoScheduledBgGpuUpdates
	bl GF_RunVramTransferTasks
	ldr r3, _02237E70 ; =0x027E0000
	ldr r1, _02237E74 ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	nop
_02237E70: .word 0x027E0000
_02237E74: .word 0x00003FF8
	thumb_func_end ov57_02237E38

