#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_022300A8
	.extern ov74_0222FE4C
	.extern ov74_0222FEC8
	.extern ov74_0222FF68
	.extern ov74_0223115C
	.extern ov74_02231448
	.extern ov74_022314DC
	.extern ov74_02231508
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
	thumb_func_start ov74_022300A8
ov74_022300A8: ; 0x022300A8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldrh r0, [r5, #2]
	cmp r0, #0
	bne _02230106
	bl ov74_0223115C
	add r4, r0, #0
	add r0, #0x61
	ldrh r1, [r5, #0xa]
	ldrb r0, [r0]
	cmp r0, r1
	ble _022300D0
	add r0, r4, #0
	add r0, #0x61
	strb r1, [r0]
	add r0, r4, #0
	ldrh r1, [r5, #8]
	add r0, #0x64
	strb r1, [r0]
_022300D0:
	bl ov74_0222FEC8
	cmp r0, #0
	beq _022300E6
	bl ov74_022314DC
	cmp r0, #0
	bne _0223010E
	bl ov74_0222FE4C
	pop {r3, r4, r5, pc}
_022300E6:
	add r4, #0x61
	ldrb r0, [r4]
	cmp r0, #0x66
	bhs _02230100
	bl ov74_0222FF68
	bl ov74_02231508
	cmp r0, #0
	bne _0223010E
	bl ov74_0222FE4C
	pop {r3, r4, r5, pc}
_02230100:
	bl ov74_0222FE4C
	pop {r3, r4, r5, pc}
_02230106:
	bl ov74_02231448
	bl ov74_0222FE4C
_0223010E:
	pop {r3, r4, r5, pc}
	thumb_func_end ov74_022300A8

