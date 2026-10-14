	.include "asm/macros.inc"
	.include "overlay_93_thumb_1.inc"
	.include "global.inc"
	.public ov93_0225D1D8
	.extern ov93_02262A44
	.extern ov93_02262AC8
	.extern ov93_02262B40
	.extern ov93_02262B94

	.text

	.text
	thumb_func_start ov93_0225D1D8
ov93_0225D1D8: ; 0x0225D1D8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x8c
	add r5, r0, #0
	bl GfGfx_DisableEngineAPlanes
	ldr r4, _0225D36C ; =ov93_02262AC8
	add r3, sp, #0x10
	mov r2, #5
_0225D1E8:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0225D1E8
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
	ldr r4, _0225D370 ; =ov93_02262A44
	add r3, sp, #0
	add r2, r3, #0
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl SetBothScreensModesAndDisable
	ldr r4, _0225D374 ; =ov93_02262B40
	add r3, sp, #0x38
	mov r2, #0xa
_0225D248:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _0225D248
	ldr r0, [r4]
	mov r1, #1
	str r0, [r3]
	add r0, r5, #0
	add r2, sp, #0x38
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r5, #0
	mov r1, #1
	bl BgClearTilemapBufferAndCommit
	mov r2, #0
	add r0, r5, #0
	mov r1, #1
	add r3, r2, #0
	bl BgSetPosTextAndCommit
	add r0, r5, #0
	mov r1, #1
	mov r2, #3
	mov r3, #0
	bl BgSetPosTextAndCommit
	add r0, r5, #0
	mov r1, #2
	add r2, sp, #0x54
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r5, #0
	mov r1, #2
	bl BgClearTilemapBufferAndCommit
	mov r2, #0
	add r0, r5, #0
	mov r1, #2
	add r3, r2, #0
	bl BgSetPosTextAndCommit
	add r0, r5, #0
	mov r1, #2
	mov r2, #3
	mov r3, #0
	bl BgSetPosTextAndCommit
	add r0, r5, #0
	mov r1, #3
	add r2, sp, #0x70
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r5, #0
	mov r1, #3
	bl BgClearTilemapBufferAndCommit
	mov r2, #0
	add r0, r5, #0
	mov r1, #3
	add r3, r2, #0
	bl BgSetPosTextAndCommit
	mov r1, #3
	add r0, r5, #0
	add r2, r1, #0
	mov r3, #0
	bl BgSetPosTextAndCommit
	ldr r1, _0225D378 ; =0x04000008
	mov r0, #3
	ldrh r2, [r1]
	bic r2, r0
	mov r0, #2
	orr r0, r2
	strh r0, [r1]
	mov r0, #1
	add r1, r0, #0
	bl GfGfx_EngineATogglePlanes
	mov r4, #0
	ldr r6, _0225D37C ; =ov93_02262B94
	add r7, r4, #0
_0225D2F4:
	cmp r4, #3
	bge _0225D30A
	add r1, r4, #4
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	add r2, r6, #0
	add r3, r7, #0
	bl InitBgFromTemplate
	b _0225D31A
_0225D30A:
	add r1, r4, #4
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	add r2, r6, #0
	mov r3, #1
	bl InitBgFromTemplate
_0225D31A:
	add r0, r4, #4
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x75
	bl BG_ClearCharDataRange
	add r1, r4, #4
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl BgClearTilemapBufferAndCommit
	add r1, r4, #4
	lsl r1, r1, #0x18
	mov r2, #0
	add r0, r5, #0
	lsr r1, r1, #0x18
	add r3, r2, #0
	bl BgSetPosTextAndCommit
	add r1, r4, #4
	lsl r1, r1, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r2, #3
	mov r3, #0
	bl BgSetPosTextAndCommit
	add r4, r4, #1
	add r6, #0x1c
	cmp r4, #4
	blo _0225D2F4
	mov r0, #7
	mov r1, #0
	bl ToggleBgLayer
	add sp, #0x8c
	pop {r4, r5, r6, r7, pc}
	nop
_0225D36C: .word ov93_02262AC8
_0225D370: .word ov93_02262A44
_0225D374: .word ov93_02262B40
_0225D378: .word 0x04000008
_0225D37C: .word ov93_02262B94
	thumb_func_end ov93_0225D1D8

