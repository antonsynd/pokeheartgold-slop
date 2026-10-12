#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_02233060
	.extern AGB_GetBoxMonData
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
	thumb_func_start ov74_02233060
ov74_02233060: ; 0x02233060
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	ldr r0, [r0, #0x10]
	bl Save_MigratedPokemon_Get
	mov r6, #0
	str r0, [sp, #8]
	str r6, [sp, #4]
	add r7, r6, #0
_02233074:
	mov r4, #0
	add r5, r4, #0
_02233078:
	ldr r1, [sp]
	ldr r0, _022330CC ; =0x0000E880
	mov r2, #0
	ldr r0, [r1, r0]
	mov r1, #5
	add r0, r0, #4
	add r0, r0, r7
	add r0, r0, r5
	bl AGB_GetBoxMonData
	cmp r0, #0
	beq _02233092
	add r6, r6, #1
_02233092:
	add r4, r4, #1
	add r5, #0x50
	cmp r4, #0x1e
	blt _02233078
	mov r0, #0x96
	lsl r0, r0, #4
	add r7, r7, r0
	ldr r0, [sp, #4]
	add r0, r0, #1
	str r0, [sp, #4]
	cmp r0, #0xe
	blt _02233074
	cmp r6, #6
	bge _022330B4
	add sp, #0xc
	mov r0, #5
	pop {r4, r5, r6, r7, pc}
_022330B4:
	ldr r0, [sp, #8]
	bl MigratedPokemon_CountPokemon
	cmp r0, #0
	beq _022330C4
	add sp, #0xc
	mov r0, #6
	pop {r4, r5, r6, r7, pc}
_022330C4:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_022330CC: .word 0x0000E880
	thumb_func_end ov74_02233060

