#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_022306C8
	.extern ov74_0222FE4C
	.extern ov74_0222FE78
	.extern ov74_02231070
	.extern ov74_02231094
	.extern ov74_0223144C
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
	thumb_func_start ov74_022306C8
ov74_022306C8: ; 0x022306C8
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4, #4]
	bl ov74_0223144C
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _02230702
	ldrh r0, [r4]
	cmp r0, #0xe
	bne _022306E6
	bl ov74_0222FE78
	cmp r0, #0
	bne _02230712
_022306E6:
	bl ov74_02231094
	cmp r0, #1
	beq _022306FA
	cmp r0, #2
	bne _02230712
	mov r0, #0xa
	bl ov74_02231070
	pop {r4, pc}
_022306FA:
	mov r0, #0xb
	bl ov74_02231070
	pop {r4, pc}
_02230702:
	cmp r0, #9
	beq _02230712
	cmp r0, #0xd
	beq _02230712
	cmp r0, #0xf
	beq _02230712
	bl ov74_0222FE4C
_02230712:
	pop {r4, pc}
	thumb_func_end ov74_022306C8

