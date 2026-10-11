#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_02235138
	.extern ov74_0223D450
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
	thumb_func_start ov74_02235138
ov74_02235138: ; 0x02235138
	add r1, r0, #0
	ldr r0, _02235144 ; =ov74_0223D450
	ldr r3, _02235148 ; =Heap_Alloc
	ldr r0, [r0]
	bx r3
	nop
_02235144: .word ov74_0223D450
_02235148: .word Heap_Alloc
	thumb_func_end ov74_02235138

