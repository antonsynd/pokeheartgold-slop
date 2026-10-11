#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_0222CD94
	.extern _0223B410
	.extern _0223B420
	.extern gApplication_TitleScreen
	.extern ov74_02236034
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
	thumb_func_start ov74_0222CD94
ov74_0222CD94: ; 0x0222CD94
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl OverlayManager_GetData
	add r4, r0, #0
	mov r0, #0x11
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0222CDB2
	ldr r0, _0222CDF8 ; =FS_OVERLAY_ID(intro_title)
	ldr r1, _0222CDFC ; =gApplication_TitleScreen
	bl RegisterMainOverlay
	b _0222CDCC
_0222CDB2:
	cmp r0, #1
	bne _0222CDC0
	ldr r0, _0222CE00 ; =FS_OVERLAY_ID(OVY_74)
	ldr r1, _0222CE04 ; =_0223B410
	bl RegisterMainOverlay
	b _0222CDCC
_0222CDC0:
	cmp r0, #2
	bne _0222CDCC
	ldr r0, _0222CE00 ; =FS_OVERLAY_ID(OVY_74)
	ldr r1, _0222CE08 ; =_0223B420
	bl RegisterMainOverlay
_0222CDCC:
	mov r0, #0x59
	bl Heap_Destroy
	add r0, r5, #0
	bl OverlayManager_FreeData
	mov r0, #0x54
	bl Heap_Destroy
	ldr r0, _0222CE0C ; =0x000015D4
	ldr r0, [r4, r0]
	cmp r0, #2
	bne _0222CDEC
	mov r0, #0
	bl sub_0201A4B0
_0222CDEC:
	mov r0, #0
	bl ov74_02236034
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_0222CDF8: .word FS_OVERLAY_ID(intro_title)
_0222CDFC: .word gApplication_TitleScreen
_0222CE00: .word FS_OVERLAY_ID(OVY_74)
_0222CE04: .word _0223B410
_0222CE08: .word _0223B420
_0222CE0C: .word 0x000015D4
	thumb_func_end ov74_0222CD94

