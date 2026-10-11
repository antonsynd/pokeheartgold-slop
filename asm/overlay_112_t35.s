#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021E79A8
	.public ov112_021E79D0
	.public ov112_021E79F0
	.extern ov112_021F3684
	.extern ov112_021F36DC
	.extern ov112_021F3704
	.extern ov112_021F3720
	.extern ov112_021F373C
	.extern ov112_021F3758
	.extern ov112_021F3774
	.extern ov112_021F3790
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021E79A8
ov112_021E79A8: ; 0x021E79A8
	push {r3, lr}
	ldr r0, [r0, #0x18]
	bl DoScheduledBgGpuUpdates
	bl GF_RunVramTransferTasks
	bl SpriteSystem_TransferOam
	ldr r3, _021E79C8 ; =0x027E0000
	ldr r1, _021E79CC ; =0x00003FF8
	mov r0, #1
	ldr r2, [r3, r1]
	orr r0, r2
	str r0, [r3, r1]
	pop {r3, pc}
	nop
_021E79C8: .word 0x027E0000
_021E79CC: .word 0x00003FF8
	thumb_func_end ov112_021E79A8

	thumb_func_start ov112_021E79D0
ov112_021E79D0: ; 0x021E79D0
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021E79EC ; =ov112_021F36DC
	add r3, sp, #0
	mov r2, #5
_021E79DA:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021E79DA
	add r0, sp, #0
	bl GfGfx_SetBanks
	add sp, #0x28
	pop {r4, pc}
	.balign 4, 0
_021E79EC: .word ov112_021F36DC
	thumb_func_end ov112_021E79D0

	thumb_func_start ov112_021E79F0
ov112_021E79F0: ; 0x021E79F0
	push {r3, r4, r5, lr}
	sub sp, #0x10
	ldr r5, _021E7AAC ; =ov112_021F3684
	add r3, sp, #0
	add r4, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl SetBothScreensModesAndDisable
	ldr r2, _021E7AB0 ; =ov112_021F3704
	add r0, r4, #0
	mov r1, #1
	mov r3, #0
	bl InitBgFromTemplate
	ldr r2, _021E7AB4 ; =ov112_021F3720
	add r0, r4, #0
	mov r1, #2
	mov r3, #0
	bl InitBgFromTemplate
	ldr r2, _021E7AB8 ; =ov112_021F373C
	add r0, r4, #0
	mov r1, #3
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
	ldr r2, _021E7ABC ; =ov112_021F3758
	add r0, r4, #0
	mov r1, #4
	mov r3, #0
	bl InitBgFromTemplate
	ldr r2, _021E7AC0 ; =ov112_021F3774
	add r0, r4, #0
	mov r1, #5
	mov r3, #0
	bl InitBgFromTemplate
	ldr r2, _021E7AC4 ; =ov112_021F3790
	add r0, r4, #0
	mov r1, #6
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
	mov r0, #4
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x9a
	bl BG_ClearCharDataRange
	mov r0, #5
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x9a
	bl BG_ClearCharDataRange
	mov r0, #6
	mov r1, #0x20
	mov r2, #0
	mov r3, #0x9a
	bl BG_ClearCharDataRange
	add sp, #0x10
	pop {r3, r4, r5, pc}
	nop
_021E7AAC: .word ov112_021F3684
_021E7AB0: .word ov112_021F3704
_021E7AB4: .word ov112_021F3720
_021E7AB8: .word ov112_021F373C
_021E7ABC: .word ov112_021F3758
_021E7AC0: .word ov112_021F3774
_021E7AC4: .word ov112_021F3790
	thumb_func_end ov112_021E79F0

