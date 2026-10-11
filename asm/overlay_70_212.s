#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_02237F38
	.public ov70_02237F58
	.public ov70_02238E50
	.public ov70_02240430
	.public ov70_022404D4
	.public ov70_02240500
	.public ov70_02240D54

	.text

	thumb_func_start ov70_02240430
ov70_02240430: ; 0x02240430
	push {r4, lr}
	add r4, r0, #0
	bl ov70_02237F38
	cmp r0, #0
	beq _022404B4
	bl ov70_02237F58
	ldr r2, _022404D0 ; =0x00001604
	mov r1, #0
	str r1, [r4, r2]
	add r2, r0, #0
	add r2, #0xf
	cmp r2, #0xf
	bhi _022404AC
	add r2, r2, r2
	add r2, pc
	ldrh r2, [r2, #6]
	lsl r2, r2, #0x10
	asr r2, r2, #0x10
	add pc, r2
_0224045A: ; jump table
	.short _0224049A - _0224045A - 2 ; case 0
	.short _0224049A - _0224045A - 2 ; case 1
	.short _022404A4 - _0224045A - 2 ; case 2
	.short _0224049A - _0224045A - 2 ; case 3
	.short _022404AC - _0224045A - 2 ; case 4
	.short _022404AC - _0224045A - 2 ; case 5
	.short _022404AC - _0224045A - 2 ; case 6
	.short _022404AC - _0224045A - 2 ; case 7
	.short _022404AC - _0224045A - 2 ; case 8
	.short _022404AC - _0224045A - 2 ; case 9
	.short _022404AC - _0224045A - 2 ; case 10
	.short _022404AC - _0224045A - 2 ; case 11
	.short _02240496 - _0224045A - 2 ; case 12
	.short _0224049A - _0224045A - 2 ; case 13
	.short _022404AC - _0224045A - 2 ; case 14
	.short _0224047A - _0224045A - 2 ; case 15
_0224047A:
	add r0, r4, #0
	bl ov70_02240D54
	cmp r0, #0
	beq _02240490
	mov r0, #0x16
	str r0, [r4, #0x2c]
	mov r0, #0
	strh r0, [r4, #0x36]
	mov r0, #3
	pop {r4, pc}
_02240490:
	mov r0, #1
	strh r0, [r4, #0x36]
	b _022404AC
_02240496:
	strh r1, [r4, #0x36]
	b _022404AC
_0224049A:
	str r0, [r4, #0x3c]
	mov r0, #0x26
	str r0, [r4, #0x2c]
	mov r0, #3
	pop {r4, pc}
_022404A4:
	bl sub_020399EC
	mov r0, #3
	pop {r4, pc}
_022404AC:
	add r0, r4, #0
	bl ov70_022404D4
	b _022404CA
_022404B4:
	ldr r0, _022404D0 ; =0x00001604
	ldr r1, [r4, r0]
	add r1, r1, #1
	str r1, [r4, r0]
	ldr r1, [r4, r0]
	mov r0, #0xe1
	lsl r0, r0, #4
	cmp r1, r0
	bne _022404CA
	bl sub_020399EC
_022404CA:
	mov r0, #3
	pop {r4, pc}
	nop
_022404D0: .word 0x00001604
	thumb_func_end ov70_02240430

	thumb_func_start ov70_022404D4
ov70_022404D4: ; 0x022404D4
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x1c]
	cmp r1, #1
	beq _022404E4
	cmp r1, #2
	beq _022404F2
	pop {r4, pc}
_022404E4:
	mov r1, #1
	mov r2, #0
	bl ov70_02238E50
	mov r0, #0x24
	str r0, [r4, #0x2c]
	pop {r4, pc}
_022404F2:
	mov r1, #2
	mov r2, #3
	bl ov70_02238E50
	mov r0, #0x24
	str r0, [r4, #0x2c]
	pop {r4, pc}
	thumb_func_end ov70_022404D4

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

