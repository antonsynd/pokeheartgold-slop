	.include "asm/macros.inc"
	.include "overlay_68.inc"
	.include "global.inc"
	.public ov68_021E5B6C
	.public ov68_021E5BA0
	.public ov68_021E5BC0
	.extern ov68_021E7BF8
	.extern ov68_021E7C44
	.extern ov68_021E7C60
	.extern ov68_021E7C7C
	.extern ov68_021E7C98
	.extern ov68_021E7CB4
	.extern ov68_021E7D14

	.text

	.text
	thumb_func_start ov68_021E5B6C
ov68_021E5B6C: ; 0x021E5B6C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #4]
	bl DoScheduledBgGpuUpdates
	mov r0, #0x56
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl PokepicManager_HandleLoadImgAndOrPltt
	bl GF_RunVramTransferTasks
	bl SpriteSystem_TransferOam
	ldr r3, _021E5B98 ; =0x027E0000
	ldr r1, _021E5B9C ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r4, pc}
	nop
_021E5B98: .word 0x027E0000
_021E5B9C: .word 0x00003FF8
	thumb_func_end ov68_021E5B6C

	thumb_func_start ov68_021E5BA0
ov68_021E5BA0: ; 0x021E5BA0
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021E5BBC ; =ov68_021E7D14
	add r3, sp, #0
	mov r2, #5
_021E5BAA:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021E5BAA
	add r0, sp, #0
	bl GfGfx_SetBanks
	add sp, #0x28
	pop {r4, pc}
	.balign 4, 0
_021E5BBC: .word ov68_021E7D14
	thumb_func_end ov68_021E5BA0

	thumb_func_start ov68_021E5BC0
ov68_021E5BC0: ; 0x021E5BC0
	push {r4, r5, lr}
	sub sp, #0x9c
	ldr r5, _021E5CC0 ; =ov68_021E7BF8
	add r3, sp, #0x8c
	add r4, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl SetBothScreensModesAndDisable
	ldr r5, _021E5CC4 ; =ov68_021E7C60
	add r3, sp, #0x70
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
	add r0, r4, #0
	mov r1, #2
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021E5CC8 ; =ov68_021E7C44
	add r3, sp, #0x54
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
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #3
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021E5CCC ; =ov68_021E7C7C
	add r3, sp, #0x38
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
	ldr r5, _021E5CD0 ; =ov68_021E7C98
	add r3, sp, #0x1c
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
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #6
	bl BgClearTilemapBufferAndCommit
	ldr r5, _021E5CD4 ; =ov68_021E7CB4
	add r3, sp, #0
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
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #7
	bl BgClearTilemapBufferAndCommit
	mov r0, #2
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x42
	bl BG_ClearCharDataRange
	mov r0, #4
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x42
	bl BG_ClearCharDataRange
	add sp, #0x9c
	pop {r4, r5, pc}
	nop
_021E5CC0: .word ov68_021E7BF8
_021E5CC4: .word ov68_021E7C60
_021E5CC8: .word ov68_021E7C44
_021E5CCC: .word ov68_021E7C7C
_021E5CD0: .word ov68_021E7C98
_021E5CD4: .word ov68_021E7CB4
	thumb_func_end ov68_021E5BC0

