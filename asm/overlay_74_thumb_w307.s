#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_02232974
	.public ov74_02232A48
	.extern _0223B4F8
	.extern _0223B508
	.extern _0223B524
	.extern _0223B540
	.extern _0223B55C
	.extern _0223B578
	.public gApplication_TitleScreen
	.public sub_020342C0

	.public MainMenuApp_Init
	.public MainMenuApp_Main
	.public MainMenuApp_Exit
	.public ov74_0223B2C0
	.public ov74_0223B2CC
	.public ov74_0223B2D8
	.public ov74_0223B2E8
	.public gApp_MainMenu_SelectOption_ConnectToRanger
	.public gApp_MainMenu_SelectOption_MigrateFromAgb
	.public gApp_MainMenu_SelectOption_MysteryGift

	.text

	.text
	thumb_func_start ov74_02232974
ov74_02232974: ; 0x02232974
	push {r3, r4, r5, lr}
	sub sp, #0x80
	ldr r5, _02232A34 ; =_0223B4F8
	add r3, sp, #0x70
	add r4, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r0, r2, #0
	bl SetBothScreensModesAndDisable
	ldr r5, _02232A38 ; =_0223B508
	add r3, sp, #0x54
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
	ldr r5, _02232A3C ; =_0223B524
	add r3, sp, #0x38
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
	ldr r5, _02232A40 ; =_0223B540
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
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #2
	bl BgClearTilemapBufferAndCommit
	ldr r5, _02232A44 ; =_0223B55C
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
	add r0, r4, #0
	mov r3, #0
	bl InitBgFromTemplate
	add r0, r4, #0
	mov r1, #3
	bl BgClearTilemapBufferAndCommit
	add sp, #0x80
	pop {r3, r4, r5, pc}
	nop
_02232A34: .word _0223B4F8
_02232A38: .word _0223B508
_02232A3C: .word _0223B524
_02232A40: .word _0223B540
_02232A44: .word _0223B55C
	thumb_func_end ov74_02232974

	thumb_func_start ov74_02232A48
ov74_02232A48: ; 0x02232A48
	push {r3, r4, r5, lr}
	sub sp, #0x38
	ldr r5, _02232AC0 ; =_0223B578
	add r4, r0, #0
	add r3, sp, #0x10
	mov r2, #5
_02232A54:
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _02232A54
	add r0, sp, #0x10
	bl GfGfx_SetBanks
	ldr r0, [r4, #0x20]
	bl ov74_02232974
	ldr r0, _02232AC4 ; =gSystem + 0x60
	mov r1, #1
	strb r1, [r0, #9]
	bl GfGfx_SwapDisplay
	bl ResetAllTextPrinters
	mov r1, #0x1e
	mov r0, #0
	lsl r1, r1, #4
	mov r2, #0x4c
	bl LoadFontPal0
	mov r0, #0xc0
	str r0, [sp]
	mov r0, #0x4c
	mov r2, #0
	str r0, [sp, #4]
	mov r0, #0x71
	mov r1, #0x17
	add r3, r2, #0
	bl GfGfxLoader_GXLoadPal
	mov r0, #0
	str r0, [sp]
	mov r0, #5
	lsl r0, r0, #0xa
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	mov r0, #0x4c
	str r0, [sp, #0xc]
	ldr r2, [r4, #0x20]
	mov r0, #0x71
	mov r1, #0x1a
	mov r3, #2
	bl GfGfxLoader_LoadCharData
	mov r0, #2
	mov r1, #0x4c
	bl FontID_Alloc
	add sp, #0x38
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02232AC0: .word _0223B578
_02232AC4: .word gSystem + 0x60
	thumb_func_end ov74_02232A48

