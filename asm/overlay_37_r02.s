	.include "asm/macros.inc"
	.include "overlay_37.inc"
	.include "global.inc"
	.public ov37_021E5CC8
	.public ov37_021E5CF0
	.public ov37_021E5D10
	.extern ov37_021E7978
	.extern ov37_021E7998
	.extern ov37_021E79B4
	.extern ov37_021E79D0
	.extern ov37_021E79EC
	.extern ov37_021E7A08
	.extern ov37_021E7A24

	.text

	.text
	thumb_func_start ov37_021E5CC8
ov37_021E5CC8: ; 0x021E5CC8
	push {r4, lr}
	add r4, r0, #0
	bl GF_RunVramTransferTasks
	bl OamManager_ApplyAndResetBuffers
	add r0, r4, #0
	bl DoScheduledBgGpuUpdates
	ldr r3, _021E5CE8 ; =0x027E0000
	ldr r1, _021E5CEC ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	.balign 4, 0
_021E5CE8: .word 0x027E0000
_021E5CEC: .word 0x00003FF8
	thumb_func_end ov37_021E5CC8

	thumb_func_start ov37_021E5CF0
ov37_021E5CF0: ; 0x021E5CF0
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021E5D0C ; =ov37_021E7A24
	add r3, sp, #0
	mov r2, #5
_021E5CFA:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021E5CFA
	add r0, sp, #0
	bl GfGfx_SetBanks
	add sp, #0x28
	pop {r4, pc}
	.balign 4, 0
_021E5D0C: .word ov37_021E7A24
	thumb_func_end ov37_021E5CF0

	thumb_func_start ov37_021E5D10
ov37_021E5D10: ; 0x021E5D10
	push {r4, r5, lr}
	sub sp, #0x9c
	ldr r5, _021E5E18 ; =ov37_021E7978
	add r3, sp, #0x8c
	add r4, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl SetBothScreensModesAndDisable
	ldr r5, _021E5E1C ; =ov37_021E7998
	add r3, sp, #0x70
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #0
	str r0, [r3]
	add r0, r4, #0
	add r3, r1, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #0
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021E5E20 ; =ov37_021E79D0
	add r3, sp, #0x54
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #1
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #1
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021E5E24 ; =ov37_021E79EC
	add r3, sp, #0x38
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #2
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	ldr r5, _021E5E28 ; =ov37_021E7A08
	add r3, sp, #0x1c
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #4
	str r0, [r3]
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #4
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021E5E2C ; =ov37_021E79B4
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	str r0, [r3]
	add r0, r4, #0
	mov r1, #5
	mov r3, #0
	bl InitBgFromTemplate
	mov r0, #0
	mov r1, #0x20
	add r2, r0, #0
	mov r3, #0x27
	bl BG_ClearCharDataRange
	mov r0, #4
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x27
	bl BG_ClearCharDataRange
	mov r0, #1
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x27
	bl BG_ClearCharDataRange
	mov r0, #5
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x27
	bl BG_ClearCharDataRange
	add sp, #0x9c
	pop {r4, r5, pc}
	nop
_021E5E18: .word ov37_021E7978
_021E5E1C: .word ov37_021E7998
_021E5E20: .word ov37_021E79D0
_021E5E24: .word ov37_021E79EC
_021E5E28: .word ov37_021E7A08
_021E5E2C: .word ov37_021E79B4
	thumb_func_end ov37_021E5D10

