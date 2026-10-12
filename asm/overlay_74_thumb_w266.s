#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_02231638
	.extern ov74_022305E4
	.extern ov74_02231100
	.extern ov74_022311E8
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
	thumb_func_start ov74_02231638
ov74_02231638: ; 0x02231638
	push {r3, r4, lr}
	sub sp, #4
	bl ov74_022311E8
	add r4, r0, #0
	bl ov74_02231100
	add r1, r0, #0
	mov r0, #0
	str r0, [sp]
	ldr r0, _0223166C ; =ov74_022305E4
	add r2, r4, #0
	mov r3, #1
	bl WM_StartConnectEx
	cmp r0, #2
	beq _02231664
	bl ov74_02231448
	add sp, #4
	mov r0, #0
	pop {r3, r4, pc}
_02231664:
	mov r0, #1
	add sp, #4
	pop {r3, r4, pc}
	nop
_0223166C: .word ov74_022305E4
	thumb_func_end ov74_02231638

