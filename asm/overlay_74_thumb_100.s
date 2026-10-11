#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_0222CEC0
	.extern ov74_0223D0A8
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
	thumb_func_start ov74_0222CEC0
ov74_0222CEC0: ; 0x0222CEC0
	push {r3, lr}
	bl sub_02034DE0
	ldr r0, _0222CEDC ; =ov74_0223D0A8
	ldr r0, [r0, #4]
	bl Heap_Free
	bl sub_0203A914
	ldr r0, _0222CEDC ; =ov74_0223D0A8
	mov r1, #0
	str r1, [r0, #4]
	pop {r3, pc}
	nop
_0222CEDC: .word ov74_0223D0A8
	thumb_func_end ov74_0222CEC0

