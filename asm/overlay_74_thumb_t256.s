#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_022314DC
	.extern ov74_022300A8
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
	thumb_func_start ov74_022314DC
ov74_022314DC: ; 0x022314DC
	push {r3, lr}
	add r3, r0, #0
	mov r0, #0x1e
	str r0, [sp]
	lsl r3, r3, #0x10
	ldr r0, _02231504 ; =ov74_022300A8
	mov r1, #3
	mov r2, #0x11
	lsr r3, r3, #0x10
	bl WM_MeasureChannel
	cmp r0, #2
	beq _022314FE
	bl ov74_02231448
	mov r0, #0
	pop {r3, pc}
_022314FE:
	mov r0, #1
	pop {r3, pc}
	nop
_02231504: .word ov74_022300A8
	thumb_func_end ov74_022314DC

