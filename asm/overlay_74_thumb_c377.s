#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public TranslateAgbSpecies
	.extern ov74_0223CC5C
	.extern ov74_0223CC5E
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
	thumb_func_start TranslateAgbSpecies
TranslateAgbSpecies: ; 0x022349DC
	ldr r1, _02234A00 ; =0x00000115
	cmp r0, r1
	blt _022349FC
	ldr r3, _02234A04 ; =ov74_0223CC5C
	mov r2, #0
_022349E6:
	ldrh r1, [r3]
	cmp r0, r1
	bne _022349F4
	ldr r0, _02234A08 ; =ov74_0223CC5E
	lsl r1, r2, #2
	ldrh r0, [r0, r1]
	bx lr
_022349F4:
	add r2, r2, #1
	add r3, r3, #4
	cmp r2, #0x90
	blo _022349E6
_022349FC:
	bx lr
	nop
_02234A00: .word 0x00000115
_02234A04: .word ov74_0223CC5C
_02234A08: .word ov74_0223CC5E
	thumb_func_end TranslateAgbSpecies

