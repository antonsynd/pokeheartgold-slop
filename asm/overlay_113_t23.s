	.include "asm/macros.inc"
	.include "overlay_113.inc"
	.include "global.inc"
	.public ov113_021E629C
	.public ov113_021E62B0
	.public ov113_021E62E0
	.public ov113_021E6300
	.extern ov113_021E6274
	.extern ov113_021E6B94
	.extern ov113_021E6BE8
	.extern ov113_021E6C04
	.extern ov113_021E6C20
	.extern ov113_021E6C3C
	.extern ov113_021E6C58
	.extern ov113_021E6C74
	.extern ov113_021E6CD0

	.text

	.text
	thumb_func_start ov113_021E629C
ov113_021E629C: ; 0x021E629C
	push {r3, r4, lr}
	sub sp, #4
	add r4, r2, #0
	str r3, [sp]
	mov r2, #0
	add r3, r4, #0
	bl ov113_021E6274
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end ov113_021E629C

	thumb_func_start ov113_021E62B0
ov113_021E62B0: ; 0x021E62B0
	push {r4, lr}
	add r4, r0, #0
	add r0, #0xac
	ldr r0, [r0]
	cmp r0, #0
	beq _021E62C0
	bl SpriteSystem_TransferOam
_021E62C0:
	bl GF_RunVramTransferTasks
	ldr r0, [r4, #0x40]
	bl DoScheduledBgGpuUpdates
	ldr r3, _021E62D8 ; =0x027E0000
	ldr r1, _021E62DC ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	.balign 4, 0
_021E62D8: .word 0x027E0000
_021E62DC: .word 0x00003FF8
	thumb_func_end ov113_021E62B0

	thumb_func_start ov113_021E62E0
ov113_021E62E0: ; 0x021E62E0
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021E62FC ; =ov113_021E6CD0
	add r3, sp, #0
	mov r2, #5
_021E62EA:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021E62EA
	add r0, sp, #0
	bl GfGfx_SetBanks
	add sp, #0x28
	pop {r4, pc}
	.balign 4, 0
_021E62FC: .word ov113_021E6CD0
	thumb_func_end ov113_021E62E0

	thumb_func_start ov113_021E6300
ov113_021E6300: ; 0x021E6300
	push {r3, r4, r5, lr}
	sub sp, #0xb8
	add r4, r0, #0
	bl ov113_021E62E0
	ldr r0, [r4]
	bl BgConfig_Alloc
	add r3, sp, #0xa8
	ldr r5, _021E646C ; =ov113_021E6B94
	str r0, [r4, #0x40]
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl SetBothScreensModesAndDisable
	ldr r2, _021E6470 ; =0x04000304
	ldr r0, _021E6474 ; =0xFFFF7FFF
	ldrh r1, [r2]
	ldr r5, _021E6478 ; =ov113_021E6C3C
	add r3, sp, #0x8c
	and r0, r1
	strh r0, [r2]
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #5
	str r0, [r3]
	ldr r0, [r4, #0x40]
	mov r3, #0
	bl InitBgFromTemplate
	ldr r0, [r4, #0x40]
	mov r1, #5
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021E647C ; =ov113_021E6C74
	add r3, sp, #0x70
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #6
	str r0, [r3]
	ldr r0, [r4, #0x40]
	mov r3, #0
	bl InitBgFromTemplate
	ldr r0, [r4, #0x40]
	mov r1, #6
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021E6480 ; =ov113_021E6BE8
	add r3, sp, #0x54
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #7
	str r0, [r3]
	ldr r0, [r4, #0x40]
	mov r3, #0
	bl InitBgFromTemplate
	ldr r0, [r4, #0x40]
	mov r1, #7
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021E6484 ; =ov113_021E6C04
	add r3, sp, #0x38
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	str r0, [r3]
	ldr r0, [r4, #0x40]
	mov r1, #1
	mov r3, #0
	bl InitBgFromTemplate
	ldr r0, [r4, #0x40]
	mov r1, #1
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021E6488 ; =ov113_021E6C20
	add r3, sp, #0x1c
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
	ldr r0, [r4, #0x40]
	mov r3, #0
	bl InitBgFromTemplate
	ldr r0, [r4, #0x40]
	mov r1, #2
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021E648C ; =ov113_021E6C58
	add r3, sp, #0
	ldmia r5!, {r0, r1}
	add r2, r3, #0
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldr r0, [r5]
	mov r1, #3
	str r0, [r3]
	ldr r0, [r4, #0x40]
	mov r3, #0
	bl InitBgFromTemplate
	ldr r0, [r4, #0x40]
	mov r1, #3
	bl BgClearTilemapBufferAndCommit
	ldr r3, [r4]
	mov r0, #5
	mov r1, #0x20
	mov r2, #0
	bl BG_ClearCharDataRange
	ldr r3, [r4]
	mov r0, #6
	mov r1, #0x20
	mov r2, #0
	bl BG_ClearCharDataRange
	ldr r3, [r4]
	mov r0, #7
	mov r1, #0x20
	mov r2, #0
	bl BG_ClearCharDataRange
	ldr r3, [r4]
	mov r0, #1
	mov r1, #0x20
	mov r2, #0
	bl BG_ClearCharDataRange
	ldr r3, [r4]
	mov r0, #2
	mov r1, #0x20
	mov r2, #0
	bl BG_ClearCharDataRange
	ldr r3, [r4]
	mov r0, #3
	mov r1, #0x20
	mov r2, #0
	bl BG_ClearCharDataRange
	add sp, #0xb8
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E646C: .word ov113_021E6B94
_021E6470: .word 0x04000304
_021E6474: .word 0xFFFF7FFF
_021E6478: .word ov113_021E6C3C
_021E647C: .word ov113_021E6C74
_021E6480: .word ov113_021E6BE8
_021E6484: .word ov113_021E6C04
_021E6488: .word ov113_021E6C20
_021E648C: .word ov113_021E6C58
	thumb_func_end ov113_021E6300

