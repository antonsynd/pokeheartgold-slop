#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_02233E8C
	.extern ov74_02233DBC
	.extern ov74_0223D33C
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
	thumb_func_start ov74_02233E8C
ov74_02233E8C: ; 0x02233E8C
	push {r3, lr}
	ldr r1, _02233ECC ; =ov74_0223D33C
	ldr r0, [r1, #4]
	cmp r0, #0
	bne _02233EB2
	ldr r1, [r1]
	cmp r1, #1
	bne _02233EA2
	mov r2, #0
	ldr r1, _02233ED0 ; =sPmAgbCartridgeSpec
	b _02233EA6
_02233EA2:
	ldr r1, _02233ED0 ; =sPmAgbCartridgeSpec
	mov r2, #1
_02233EA6:
	str r2, [r1, #4]
	ldr r1, _02233ECC ; =ov74_0223D33C
	ldr r2, [r1, #0x10]
	add r2, r2, #1
	str r2, [r1, #0x10]
	b _02233EB6
_02233EB2:
	mov r0, #0
	pop {r3, pc}
_02233EB6:
	ldr r1, _02233ED0 ; =sPmAgbCartridgeSpec
	ldr r1, [r1, #4]
	cmp r1, #0
	bge _02233EC2
	mov r0, #0
	pop {r3, pc}
_02233EC2:
	bl ov74_02233DBC
	mov r0, #1
	pop {r3, pc}
	nop
_02233ECC: .word ov74_0223D33C
_02233ED0: .word sPmAgbCartridgeSpec
	thumb_func_end ov74_02233E8C

