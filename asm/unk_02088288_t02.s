#include "constants/items.h"
#include "constants/moves.h"
#include "constants/pokemon.h"
#include "constants/ribbon.h"
#include "constants/field_move_response.h"
#include "msgdata/msg/msg_0300.h"
	.include "asm/macros.inc"
	.include "unk_02088288.inc"
	.include "global.inc"
	.public PokemonSummary_Init
	.public PokemonSummary_Main
	.extern sub_020885DC
	.extern sub_02088610
	.extern sub_02088630
	.extern sub_020887C4
	.extern sub_0208887C
	.extern sub_02088894
	.extern sub_020889D0
	.extern sub_02088B08
	.extern sub_02088B40
	.extern sub_02088D18
	.extern sub_02088D34
	.extern sub_02088D48
	.extern sub_02088E68
	.extern sub_02088E98
	.extern sub_02089028
	.extern sub_02089208
	.extern sub_020892F4
	.extern sub_02089308
	.extern sub_0208931C
	.extern sub_0208942C
	.extern sub_02089454
	.extern sub_02089478
	.extern sub_02089608
	.extern sub_02089658
	.extern sub_02089670
	.extern sub_02089680
	.extern sub_02089698
	.extern sub_02089794
	.extern sub_020897C0
	.extern sub_02089CB4

	.public gOverlayTemplate_Battle
	.public gNatureStatMods

	.text

	.text
	thumb_func_start PokemonSummary_Init
PokemonSummary_Init: ; 0x02088298
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	mov r0, #0
	add r1, r0, #0
	bl Main_SetVBlankIntrCB
	bl HBlankInterruptDisable
	bl GfGfx_DisableEngineAPlanes
	bl GfGfx_DisableEngineBPlanes
	mov r1, #1
	lsl r1, r1, #0x1a
	ldr r0, [r1]
	ldr r2, _02088408 ; =0xFFFFE0FF
	and r0, r2
	str r0, [r1]
	ldr r0, _0208840C ; =0x04001000
	ldr r3, [r0]
	and r2, r3
	str r2, [r0]
	ldr r3, [r1]
	ldr r2, _02088410 ; =0xFFFF1FFF
	and r3, r2
	str r3, [r1]
	ldr r3, [r0]
	add r1, #0x50
	and r2, r3
	str r2, [r0]
	mov r2, #0
	strh r2, [r1]
	add r0, #0x50
	strh r2, [r0]
	mov r0, #4
	mov r1, #8
	bl SetKeyRepeatTimers
	mov r2, #0x45
	mov r0, #3
	mov r1, #0x13
	lsl r2, r2, #0xc
	bl Heap_Create
	mov r0, #0x27
	mov r1, #0x13
	bl NARC_New
	add r7, r0, #0
	mov r0, #0xa2
	mov r1, #0x13
	bl NARC_New
	add r5, r0, #0
	ldr r1, _02088414 ; =0x000007D8
	add r0, r6, #0
	mov r2, #0x13
	bl OverlayManager_CreateAndGetData
	ldr r2, _02088414 ; =0x000007D8
	mov r1, #0
	add r4, r0, #0
	bl memset
	add r0, r6, #0
	bl OverlayManager_GetArgs
	mov r1, #0x8b
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0x13
	bl BgConfig_Alloc
	str r0, [r4]
	mov r0, #0x8b
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	str r1, [r0, #0x38]
	mov r1, #1
	mov r0, #0x13
	add r2, r1, #0
	bl sub_02016EDC
	mov r1, #0xb3
	lsl r1, r1, #2
	str r0, [r4, r1]
	mov r0, #0xb4
	mov r1, #0x13
	bl NARC_New
	ldr r1, _02088418 ; =0x000007B8
	str r0, [r4, r1]
	mov r0, #0
	mov r1, #0x13
	bl FontID_SetAccessDirect
	bl sub_020210BC
	mov r0, #4
	bl sub_02021148
	bl sub_02088610
	ldr r0, [r4]
	bl sub_02088630
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl sub_020887C4
	bl sub_0208887C
	add r0, r4, #0
	bl sub_0208DE40
	mov r0, #4
	mov r1, #0x13
	bl FontID_Alloc
	add r0, r4, #0
	bl sub_02088894
	add r0, r4, #0
	add r1, r5, #0
	bl sub_020889D0
	add r0, r4, #0
	bl sub_020897C0
	add r0, r4, #0
	bl sub_0208B1AC
	add r0, r4, #0
	bl sub_0208B2C0
	add r0, r4, #0
	bl sub_0208E3AC
	add r0, r4, #0
	bl sub_0208B48C
	add r0, r4, #0
	bl sub_0208B4EC
	add r0, r4, #0
	bl sub_0208BECC
	add r0, r4, #0
	bl sub_0208C3E4
	add r0, r4, #0
	bl sub_02089CB4
	add r0, r4, #0
	bl sub_0208DF2C
	ldr r0, _0208841C ; =sub_020885DC
	add r1, r4, #0
	bl Main_SetVBlankIntrCB
	ldr r2, _02088420 ; =0x04000304
	ldrh r1, [r2]
	lsr r0, r2, #0xb
	orr r0, r1
	strh r0, [r2]
	bl GfGfx_BothDispOn
	mov r1, #0
	mov r0, #0x3d
	add r2, r1, #0
	bl Sound_SetSceneAndPlayBGM
	bl sub_0203A964
	add r0, r5, #0
	bl NARC_Delete
	add r0, r7, #0
	bl NARC_Delete
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02088408: .word 0xFFFFE0FF
_0208840C: .word 0x04001000
_02088410: .word 0xFFFF1FFF
_02088414: .word 0x000007D8
_02088418: .word 0x000007B8
_0208841C: .word sub_020885DC
_02088420: .word 0x04000304
	thumb_func_end PokemonSummary_Init

	thumb_func_start PokemonSummary_Main
PokemonSummary_Main: ; 0x02088424
	push {r3, r4, r5, lr}
	add r4, r1, #0
	bl OverlayManager_GetData
	ldr r1, [r4]
	add r5, r0, #0
	cmp r1, #0x16
	bls _02088436
	b _0208854A
_02088436:
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02088442: ; jump table
	.short _02088470 - _02088442 - 2 ; case 0
	.short _0208848C - _02088442 - 2 ; case 1
	.short _02088494 - _02088442 - 2 ; case 2
	.short _0208849C - _02088442 - 2 ; case 3
	.short _020884A4 - _02088442 - 2 ; case 4
	.short _020884AC - _02088442 - 2 ; case 5
	.short _020884BC - _02088442 - 2 ; case 6
	.short _020884B4 - _02088442 - 2 ; case 7
	.short _020884C4 - _02088442 - 2 ; case 8
	.short _020884CC - _02088442 - 2 ; case 9
	.short _020884D4 - _02088442 - 2 ; case 10
	.short _020884DC - _02088442 - 2 ; case 11
	.short _020884E4 - _02088442 - 2 ; case 12
	.short _020884EC - _02088442 - 2 ; case 13
	.short _020884F4 - _02088442 - 2 ; case 14
	.short _020884FC - _02088442 - 2 ; case 15
	.short _02088504 - _02088442 - 2 ; case 16
	.short _0208850C - _02088442 - 2 ; case 17
	.short _02088514 - _02088442 - 2 ; case 18
	.short _02088530 - _02088442 - 2 ; case 19
	.short _02088544 - _02088442 - 2 ; case 20
	.short _0208851C - _02088442 - 2 ; case 21
	.short _02088524 - _02088442 - 2 ; case 22
_02088470:
	mov r0, #0
	mov r1, #0x13
	bl sub_020880CC
	mov r0, #0x2d
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #6
	mov r2, #0
	bl Pokepic_SetAttr
	mov r0, #1
	str r0, [r4]
	b _0208854A
_0208848C:
	bl sub_02088B08
	str r0, [r4]
	b _0208854A
_02088494:
	bl sub_02088B40
	str r0, [r4]
	b _0208854A
_0208849C:
	bl sub_02088D18
	str r0, [r4]
	b _0208854A
_020884A4:
	bl sub_02088D34
	str r0, [r4]
	b _0208854A
_020884AC:
	bl sub_02088D48
	str r0, [r4]
	b _0208854A
_020884B4:
	bl sub_02088E68
	str r0, [r4]
	b _0208854A
_020884BC:
	bl sub_02088E98
	str r0, [r4]
	b _0208854A
_020884C4:
	bl sub_02089028
	str r0, [r4]
	b _0208854A
_020884CC:
	bl sub_02089208
	str r0, [r4]
	b _0208854A
_020884D4:
	bl sub_020892F4
	str r0, [r4]
	b _0208854A
_020884DC:
	bl sub_02089308
	str r0, [r4]
	b _0208854A
_020884E4:
	bl sub_0208931C
	str r0, [r4]
	b _0208854A
_020884EC:
	bl sub_0208942C
	str r0, [r4]
	b _0208854A
_020884F4:
	bl sub_02089454
	str r0, [r4]
	b _0208854A
_020884FC:
	bl sub_02089698
	str r0, [r4]
	b _0208854A
_02088504:
	bl sub_02089478
	str r0, [r4]
	b _0208854A
_0208850C:
	bl sub_02089608
	str r0, [r4]
	b _0208854A
_02088514:
	bl sub_02089658
	str r0, [r4]
	b _0208854A
_0208851C:
	bl sub_02089670
	str r0, [r4]
	b _0208854A
_02088524:
	bl sub_02089680
	cmp r0, #1
	bne _0208854A
	mov r0, #1
	pop {r3, r4, r5, pc}
_02088530:
	mov r0, #0x2d
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #6
	mov r2, #0
	bl Pokepic_SetAttr
	mov r0, #2
	str r0, [r4]
	b _0208854A
_02088544:
	bl sub_02089794
	str r0, [r4]
_0208854A:
	add r0, r5, #0
	bl sub_0208B278
	add r0, r5, #0
	bl sub_0208C3C0
	mov r0, #1
	lsl r0, r0, #0xa
	ldr r0, [r5, r0]
	bl SpriteSystem_DrawSprites
	add r0, r5, #0
	bl sub_0208DEDC
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end PokemonSummary_Main

