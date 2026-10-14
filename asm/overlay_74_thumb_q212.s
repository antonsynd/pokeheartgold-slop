#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_022305E4
	.extern ov74_0222FE4C
	.extern ov74_0222FE78
	.extern ov74_02231070
	.extern ov74_0223110C
	.extern ov74_02231118
	.extern ov74_02231124
	.extern ov74_02231130
	.extern ov74_02231448
	.extern ov74_0223144C
	.extern ov74_02231670
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
	thumb_func_start ov74_022305E4
ov74_022305E4: ; 0x022305E4
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4, #8]
	bl ov74_0223144C
	ldrh r0, [r4, #2]
	cmp r0, #0
	bne _0223066A
	mov r0, #9
	bl ov74_02231070
	bl ov74_0222FE78
	cmp r0, #0
	bne _02230672
	ldrh r0, [r4, #8]
	cmp r0, #9
	bhi _0223065E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02230614: ; jump table
	.short _0223065E - _02230614 - 2 ; case 0
	.short _0223065E - _02230614 - 2 ; case 1
	.short _0223065E - _02230614 - 2 ; case 2
	.short _0223065E - _02230614 - 2 ; case 3
	.short _0223065E - _02230614 - 2 ; case 4
	.short _0223065E - _02230614 - 2 ; case 5
	.short _02230672 - _02230614 - 2 ; case 6
	.short _02230628 - _02230614 - 2 ; case 7
	.short _02230672 - _02230614 - 2 ; case 8
	.short _02230648 - _02230614 - 2 ; case 9
_02230628:
	ldrh r0, [r4, #0xa]
	bl ov74_0223110C
	mov r0, #1
	bl ov74_02231124
	mov r0, #0
	bl ov74_02231130
	bl ov74_02231670
	cmp r0, #0
	bne _02230672
	bl ov74_0222FE4C
	pop {r4, pc}
_02230648:
	bl ov74_02231118
	cmp r0, #0
	beq _02230656
	mov r0, #1
	bl ov74_02231130
_02230656:
	mov r0, #0
	bl ov74_02231124
	pop {r4, pc}
_0223065E:
	ldrh r0, [r4, #2]
	bl ov74_02231448
	bl ov74_0222FE4C
	pop {r4, pc}
_0223066A:
	bl ov74_02231448
	bl ov74_0222FE4C
_02230672:
	pop {r4, pc}
	thumb_func_end ov74_022305E4

