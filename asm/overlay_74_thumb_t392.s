#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_02236620
	.public ov74_02236644
	.extern ov74_02236168
	.extern ov74_022361B8
	.extern ov74_022365AC
	.extern ov74_0223E2FC
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
	thumb_func_start ov74_02236620
ov74_02236620: ; 0x02236620
	push {r3, lr}
	mov r0, #3
	bl ov74_02236168
	ldr r0, _02236640 ; =ov74_02236644
	bl WM_Reset
	cmp r0, #2
	beq _0223663A
	bl ov74_022361B8
	mov r0, #0
	pop {r3, pc}
_0223663A:
	mov r0, #1
	pop {r3, pc}
	nop
_02236640: .word ov74_02236644
	thumb_func_end ov74_02236620

	thumb_func_start ov74_02236644
ov74_02236644: ; 0x02236644
	push {r4, lr}
	add r4, r0, #0
	ldrh r0, [r4, #2]
	cmp r0, #0
	beq _0223666C
	mov r0, #9
	bl ov74_02236168
	ldrh r0, [r4, #2]
	bl ov74_022361B8
	ldr r0, _02236678 ; =ov74_0223E2FC
	ldr r1, [r0]
	ldr r0, _0223667C ; =0x0000117C
	ldr r1, [r1, r0]
	cmp r1, #0
	beq _02236676
	mov r0, #4
	blx r1
	pop {r4, pc}
_0223666C:
	mov r0, #1
	bl ov74_02236168
	bl ov74_022365AC
_02236676:
	pop {r4, pc}
	.balign 4, 0
_02236678: .word ov74_0223E2FC
_0223667C: .word 0x0000117C
	thumb_func_end ov74_02236644

