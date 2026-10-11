#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_022365AC
	.extern ov74_02236168
	.extern ov74_022364C0
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
	thumb_func_start ov74_022365AC
ov74_022365AC: ; 0x022365AC
	push {r3, lr}
	ldr r0, _022365EC ; =ov74_0223E2FC
	ldr r1, [r0]
	ldr r0, _022365F0 ; =0x00001150
	ldr r0, [r1, r0]
	cmp r0, #1
	beq _022365BE
	bl OS_Terminate
_022365BE:
	mov r0, #3
	bl ov74_02236168
	ldr r0, _022365F4 ; =ov74_022364C0
	bl WM_End
	cmp r0, #2
	beq _022365E8
	mov r0, #9
	bl ov74_02236168
	ldr r0, _022365EC ; =ov74_0223E2FC
	ldr r1, [r0]
	ldr r0, _022365F8 ; =0x0000117C
	ldr r1, [r1, r0]
	cmp r1, #0
	beq _022365E4
	mov r0, #4
	blx r1
_022365E4:
	mov r0, #0
	pop {r3, pc}
_022365E8:
	mov r0, #1
	pop {r3, pc}
	.balign 4, 0
_022365EC: .word ov74_0223E2FC
_022365F0: .word 0x00001150
_022365F4: .word ov74_022364C0
_022365F8: .word 0x0000117C
	thumb_func_end ov74_022365AC

