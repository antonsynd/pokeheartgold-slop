#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public PmAgbCartridge_GetVersionInternal
	.extern sPmAgbCartridgeSpec
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
	thumb_func_start PmAgbCartridge_GetVersionInternal
PmAgbCartridge_GetVersionInternal: ; 0x022339BC
	ldr r0, _022339C4 ; =sPmAgbCartridgeSpec
	ldr r0, [r0]
	ldrb r0, [r0, #5]
	bx lr
	.balign 4, 0
_022339C4: .word sPmAgbCartridgeSpec
	thumb_func_end PmAgbCartridge_GetVersionInternal

