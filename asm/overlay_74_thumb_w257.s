#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_02231460
	.extern ov74_02230018
	.extern ov74_022310AC
	.extern ov74_02231448
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
	thumb_func_start ov74_02231460
ov74_02231460: ; 0x02231460
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r6, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	bl ov74_022310AC
	lsl r0, r0, #0x10
	lsl r3, r5, #0x10
	lsr r0, r0, #0x10
	str r4, [sp]
	str r0, [sp, #4]
	mov r0, #2
	str r0, [sp, #8]
	ldr r0, _0223149C ; =ov74_02230018
	mov r1, #0
	add r2, r6, #0
	lsr r3, r3, #0x10
	bl WM_SetMPDataToPortEx
	cmp r0, #2
	beq _02231496
	bl ov74_02231448
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_02231496:
	mov r0, #1
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_0223149C: .word ov74_02230018
	thumb_func_end ov74_02231460

