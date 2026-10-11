#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02240500

	.text

	.text
	thumb_func_start ov70_02240500
ov70_02240500: ; 0x02240500
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5]
	add r4, r1, #0
	ldr r0, [r0, #0x28]
	mov r1, #0x18 ; SCORE_EVENT_GTS_TRADE
	bl GameStats_AddScore
	ldr r0, [r5]
	mov r1, #0x19 ; GAME_STAT_WIFI_TRADES
	ldr r0, [r0, #0x28]
	bl GameStats_Inc
	add r0, r4, #0
	mov r1, #0xc
	mov r2, #0
	bl GetMonData
	ldr r1, _0224053C ; =gGameLanguage
	ldrb r1, [r1]
	cmp r1, r0
	beq _0224053A
	ldr r0, [r5]
	ldr r0, [r0, #0x20]
	bl Save_Pokewalker_Get
	mov r1, #0x14
	bl Pokewalker_UnlockCourse
_0224053A:
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0224053C: .word gGameLanguage
	thumb_func_end ov70_02240500

