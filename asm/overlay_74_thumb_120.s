#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_0222D774
	.extern ov74_0222D11C
	.extern ov74_0223C2D0
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
	thumb_func_start ov74_0222D774
ov74_0222D774: ; 0x0222D774
	push {r3, lr}
	add r3, r1, #0
	mov r1, #1
	str r1, [sp]
	ldr r1, _0222D788 ; =ov74_0223C2D0
	mov r2, #2
	bl ov74_0222D11C
	mov r0, #1
	pop {r3, pc}
	.balign 4, 0
_0222D788: .word ov74_0223C2D0
	thumb_func_end ov74_0222D774

