#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_65.inc"
	.include "global.inc"
	.public ov65_0221F4D4
	.public ov65_0221F5A0
	.extern ov65_0221E050
	.extern ov65_0221F4B0
	.extern ov65_0221FB90

	.text

	.text
	thumb_func_start ov65_0221F4D4
ov65_0221F4D4: ; 0x0221F4D4
	push {r4, lr}
	sub sp, #0x10
	add r4, r0, #0
	ldr r0, _0221F58C ; =0x000036C8
	ldr r0, [r4, r0]
	bl TouchscreenListMenu_HandleInput
	cmp r0, #0
	beq _0221F4F4
	cmp r0, #1
	beq _0221F540
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	beq _0221F540
	b _0221F586
_0221F4F4:
	mov r1, #0
	str r1, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	add r2, r1, #0
	add r3, r1, #0
	bl FillBgTilemapRect
	mov r3, #0x61
	lsl r3, r3, #2
	ldr r0, [r4, r3]
	add r3, #0xc
	str r0, [sp]
	ldr r0, _0221F590 ; =0x00000594
	ldr r3, [r4, r3]
	add r0, r4, r0
	mov r1, #0xf
	mov r2, #1
	bl ov65_0221FB90
	ldr r1, _0221F594 ; =ov65_0221E050
	ldr r0, _0221F598 ; =0x00002220
	str r1, [r4, r0]
	add r0, r4, #0
	bl ov65_0221F4B0
	ldr r0, _0221F59C ; =0x00000668
	ldr r0, [r4, r0]
	bl ListMenuItems_Delete
	add sp, #0x10
	mov r0, #3
	pop {r4, pc}
_0221F540:
	mov r1, #0
	str r1, [sp]
	mov r0, #0x20
	str r0, [sp, #4]
	mov r0, #0x18
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	add r2, r1, #0
	add r3, r1, #0
	bl FillBgTilemapRect
	mov r3, #0x61
	lsl r3, r3, #2
	ldr r0, [r4, r3]
	add r3, #0xc
	str r0, [sp]
	ldr r0, _0221F590 ; =0x00000594
	ldr r3, [r4, r3]
	add r0, r4, r0
	mov r1, #0xf
	mov r2, #1
	bl ov65_0221FB90
	add r0, r4, #0
	bl ov65_0221F4B0
	ldr r0, _0221F59C ; =0x00000668
	ldr r0, [r4, r0]
	bl ListMenuItems_Delete
	ldr r1, _0221F594 ; =ov65_0221E050
	ldr r0, _0221F598 ; =0x00002220
	str r1, [r4, r0]
_0221F586:
	mov r0, #0
	add sp, #0x10
	pop {r4, pc}
	.balign 4, 0
_0221F58C: .word 0x000036C8
_0221F590: .word 0x00000594
_0221F594: .word ov65_0221E050
_0221F598: .word 0x00002220
_0221F59C: .word 0x00000668
	thumb_func_end ov65_0221F4D4

	thumb_func_start ov65_0221F5A0
ov65_0221F5A0: ; 0x0221F5A0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, r0, #0
	mov r0, #0x1a
	str r1, [sp, #4]
	add r6, r2, #0
	str r3, [sp, #8]
	ldr r5, [sp, #0x30]
	bl AllocMonZeroed
	str r0, [sp, #0xc]
	mov r0, #0x1a
	bl AllocMonZeroed
	add r4, r0, #0
	add r0, r7, #0
	add r1, r6, #0
	bl Party_GetMonByIndex
	ldr r1, [sp, #0xc]
	bl CopyPokemonToPokemon
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	bl Party_GetMonByIndex
	add r1, r4, #0
	bl CopyPokemonToPokemon
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl GetMonData
	ldr r1, _0221F70C ; =0x000001ED
	cmp r0, r1
	bne _0221F62C
	add r0, r4, #0
	mov r1, #0x6e
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	bne _0221F614
	add r0, r4, #0
	mov r1, #0x99
	mov r2, #0
	bl GetMonData
	cmp r0, #0x56
	bne _0221F62C
	add r0, r4, #0
	mov r1, #0x6e
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	bne _0221F62C
_0221F614:
	ldr r0, [r5, #0x10]
	bl Save_VarsFlags_Get
	str r0, [sp, #0x10]
	bl Save_VarsFlags_GetVar404C
	cmp r0, #0
	bne _0221F62C
	ldr r0, [sp, #0x10]
	mov r1, #1
	bl Save_VarsFlags_SetVar404C
_0221F62C:
	add r0, r4, #0
	mov r1, #0x6f
	mov r2, #0
	bl SetMonData
	add r0, r4, #0
	mov r1, #0x4c
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	bne _0221F664
	mov r1, #0x46
	add r0, sp, #0x14
	strb r1, [r0, #1]
	mov r1, #0
	strb r1, [r0]
	add r2, sp, #0x14
	add r0, r4, #0
	mov r1, #9
	add r2, #1
	bl SetMonData
	add r0, r4, #0
	mov r1, #MON_DATA_MOOD
	add r2, sp, #0x14
	bl SetMonData
_0221F664:
	bl sub_0203769C
	bl sub_02034818
	add r1, r0, #0
	mov r0, #0xb
	str r0, [sp]
	add r0, r4, #0
	mov r2, #5
	mov r3, #0
	bl MonSetTrainerMemo
	add r0, r4, #0
	bl Pokemon_RemoveCapsule
	ldr r0, [sp, #0xc]
	ldr r1, [r5, #0x38]
	bl CopyPokemonToPokemon
	ldr r1, [r5, #0x3c]
	add r0, r4, #0
	bl CopyPokemonToPokemon
	bl sub_0203769C
	mov r1, #1
	eor r0, r1
	bl sub_02034818
	ldr r1, [r5, #0x34]
	bl PlayerProfile_Copy
	ldr r1, _0221F710 ; =0x000001B9
	add r0, r7, #0
	str r6, [r5, #0x28]
	bl Party_HasMon
	cmp r0, #0
	bne _0221F6BC
	ldr r0, [r5, #0x10]
	bl Save_Chatot_Get
	bl Chatot_Invalidate
_0221F6BC:
	ldr r0, [r5, #0x10]
	add r1, r4, #0
	bl UpdatePokedexWithReceivedSpecies
	add r0, r7, #0
	add r1, r6, #0
	bl Party_GetMonByIndex
	add r1, r0, #0
	add r0, r4, #0
	bl CopyPokemonToPokemon
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	bl Party_GetMonByIndex
	add r1, r0, #0
	ldr r0, [sp, #0xc]
	bl CopyPokemonToPokemon
	add r0, r7, #0
	add r1, r6, #0
	bl Party_ResetMonAprijuiceModifiers
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	bl Party_ResetMonAprijuiceModifiers
	ldr r0, [r5, #0x1c]
	mov r1, #0x14 ; GAME_STAT_LOCAL_LINK_TRADES
	bl GameStats_Inc
	ldr r0, [sp, #0xc]
	bl Heap_Free
	add r0, r4, #0
	bl Heap_Free
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0221F70C: .word 0x000001ED
_0221F710: .word 0x000001B9
	thumb_func_end ov65_0221F5A0

