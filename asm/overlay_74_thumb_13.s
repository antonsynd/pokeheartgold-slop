#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_02229BC0
	.public ov74_02229BD0
	.extern ov74_02229C0C
	.extern ov74_0223D0A4
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
	thumb_func_start ov74_02229BC0
ov74_02229BC0: ; 0x02229BC0
	ldr r2, _02229BCC ; =ov74_0223D0A4
	ldr r3, [r2]
	str r0, [r3, #0x20]
	ldr r0, [r2]
	strh r1, [r0, #0x24]
	bx lr
	.balign 4, 0
_02229BCC: .word ov74_0223D0A4
	thumb_func_end ov74_02229BC0

	thumb_func_start ov74_02229BD0
ov74_02229BD0: ; 0x02229BD0
	push {r4, lr}
	bl sub_0203769C
	bl sub_020373B4
	cmp r0, #0
	beq _02229BFE
	mov r4, #0
	ldr r1, _02229C00 ; =ov74_0223D0A4
	ldr r0, _02229C04 ; =0x000003C1
	add r3, r4, #0
_02229BE6:
	ldr r2, [r1]
	add r2, r2, r4
	add r4, r4, #1
	strb r3, [r2, r0]
	cmp r4, #0x10
	blt _02229BE6
	bl sub_02034434
	ldr r0, _02229C08 ; =ov74_02229C0C
	mov r1, #0
	bl ov74_02229BC0
_02229BFE:
	pop {r4, pc}
	.balign 4, 0
_02229C00: .word ov74_0223D0A4
_02229C04: .word 0x000003C1
_02229C08: .word ov74_02229C0C
	thumb_func_end ov74_02229BD0

