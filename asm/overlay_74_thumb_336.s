#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_02235230
	.extern ov74_022351FC
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
	thumb_func_start ov74_02235230
ov74_02235230: ; 0x02235230
	push {r3, lr}
	bl ov74_022351FC
	cmp r0, #0
	bne _0223523E
	mov r0, #0
	pop {r3, pc}
_0223523E:
	mov r0, #1
	bl CTRDG_Enable
	mov r0, #0x81
	lsl r0, r0, #0x14
	add r1, sp, #0
	bl CTRDG_Read32
	mov r0, #0
	bl CTRDG_Enable
	ldr r0, [sp]
	pop {r3, pc}
	thumb_func_end ov74_02235230

