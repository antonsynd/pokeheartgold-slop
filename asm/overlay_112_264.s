#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021EE7A8
	.public ov112_021EE8BC
	.public ov112_021EE920
	.public ov112_021EE970
	.public ov112_021EE9A4
	.public ov112_021EE9E4
	.public ov112_021EEA7C
	.public ov112_021EEAF0
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021EE7A8
ov112_021EE7A8: ; 0x021EE7A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	bl SaveArray_PCStorage_Get
	str r0, [sp, #4]
	mov r0, #0x9a
	bl AllocMonZeroed
	add r4, r0, #0
	bl Mon_GetBoxMon
	add r6, r0, #0
	ldr r0, _021EE89C ; =0x0001E440
	add r2, sp, #8
	ldr r0, [r5, r0]
	add r1, sp, #8
	add r2, #2
	bl sub_02032688
	add r0, sp, #8
	ldrh r0, [r0, #2]
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, _021EE8A0 ; =0x000010E7
	ldrb r0, [r5, r0]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	bne _021EE81E
	ldr r0, _021EE89C ; =0x0001E440
	add r1, r6, #0
	ldr r0, [r5, r0]
	bl Pokewalker_TryGetBoxMon
	add r7, r0, #0
	beq _021EE804
	ldr r2, _021EE8A4 ; =0x0001EC7C
	add r0, r6, #0
	ldr r2, [r5, r2]
	add r1, r4, #0
	bl ov112_021EE8BC
	ldr r1, _021EE8A8 ; =0x0001F374
	strh r0, [r5, r1]
_021EE804:
	ldr r1, _021EE8A4 ; =0x0001EC7C
	add r0, r6, #0
	ldr r1, [r5, r1]
	bl ov112_021EE970
	ldr r0, _021EE8A4 ; =0x0001EC7C
	mov r1, #0
	str r1, [r5, r0]
	ldr r0, _021EE89C ; =0x0001E440
	ldr r0, [r5, r0]
	bl Pokewalker_ClearBoxMon
	b _021EE854
_021EE81E:
	ldr r7, _021EE8AC ; =0x00009D44
	bl MTRandom
	mov r1, #0x18
	bl _u32_div_f
	add r3, r1, #0
	mov r0, #0
	str r0, [sp]
	ldr r1, _021EE8B0 ; =0x0001E438
	add r0, r4, #0
	ldr r1, [r5, r1]
	add r2, r5, r7
	bl ov112_021EE9A4
	add r0, r4, #0
	bl Mon_GetBoxMon
	mov r1, #0x9a
	str r1, [sp]
	ldr r1, _021EE8B0 ; =0x0001E438
	mov r2, #0
	ldr r1, [r5, r1]
	mov r3, #0xe9
	bl BoxMonSetTrainerMemo
	mov r7, #1
_021EE854:
	cmp r7, #0
	beq _021EE890
	ldr r0, [sp, #4]
	add r1, sp, #0x10
	add r2, sp, #0xc
	bl PCStorage_FindFirstEmptySlot
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	add r3, r6, #0
	bl PCStorage_PlaceMonInBoxByIndexPair
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	bl PCStorage_GetMonByIndexPair
	ldr r1, _021EE8B4 ; =0x0001E430
	str r0, [r5, r1]
	add r1, #0x14
	ldr r0, [r5, r1]
	add r1, r4, #0
	bl Pokedex_SetMonSeenFlag
	ldr r0, _021EE8B8 ; =0x0001E444
	add r1, r4, #0
	ldr r0, [r5, r0]
	bl Pokedex_SetMonCaughtFlag
_021EE890:
	add r0, r4, #0
	bl Heap_Free
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021EE89C: .word 0x0001E440
_021EE8A0: .word 0x000010E7
_021EE8A4: .word 0x0001EC7C
_021EE8A8: .word 0x0001F374
_021EE8AC: .word 0x00009D44
_021EE8B0: .word 0x0001E438
_021EE8B4: .word 0x0001E430
_021EE8B8: .word 0x0001E444
	thumb_func_end ov112_021EE7A8

	thumb_func_start ov112_021EE8BC
ov112_021EE8BC: ; 0x021EE8BC
	push {r3, r4, r5, r6, r7, lr}
	mov r6, #0
	add r5, r1, #0
	add r4, r2, #0
	mov r1, #0xa1
	add r2, r6, #0
	add r7, r0, #0
	bl GetBoxMonData
	cmp r0, #0x64
	bhs _021EE91C
	cmp r4, #0
	bge _021EE8D8
	add r4, r6, #0
_021EE8D8:
	add r0, r7, #0
	bl CalcBoxMonExpToNextLevel
	cmp r4, r0
	blt _021EE8E6
	add r4, r0, #0
	mov r6, #1
_021EE8E6:
	add r0, r7, #0
	mov r1, #8
	mov r2, #0
	bl GetBoxMonData
	str r0, [sp]
	add r0, r0, r4
	str r0, [sp]
	add r0, r7, #0
	add r1, r5, #0
	bl CopyBoxPokemonToPokemon
	add r0, r5, #0
	mov r1, #8
	add r2, sp, #0
	bl SetMonData
	add r0, r5, #0
	bl CalcMonLevelAndStats
	cmp r6, #0
	beq _021EE91C
	add r0, r5, #0
	mov r1, #0
	mov r2, #8
	bl MonApplyFriendshipMod
_021EE91C:
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov112_021EE8BC

	thumb_func_start ov112_021EE920
ov112_021EE920: ; 0x021EE920
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021EE960 ; =0x0001F376
	mov r1, #0
	strh r1, [r4, r0]
	ldr r0, _021EE964 ; =0x00009D78
	ldrb r0, [r4, r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	beq _021EE95C
	ldr r0, _021EE968 ; =0x0001E440
	ldr r0, [r4, r0]
	bl sub_02032764
	cmp r0, #0
	bne _021EE95C
	ldr r0, _021EE968 ; =0x0001E440
	ldr r0, [r4, r0]
	bl sub_0203276C
	ldr r0, _021EE96C ; =0x0001E434
	mov r1, #0xcf
	ldr r0, [r4, r0]
	mov r2, #1
	mov r3, #0x9a
	bl Bag_AddItem
	ldr r0, _021EE960 ; =0x0001F376
	mov r1, #1
	strh r1, [r4, r0]
_021EE95C:
	pop {r4, pc}
	nop
_021EE960: .word 0x0001F376
_021EE964: .word 0x00009D78
_021EE968: .word 0x0001E440
_021EE96C: .word 0x0001E434
	thumb_func_end ov112_021EE920

	thumb_func_start ov112_021EE970
ov112_021EE970: ; 0x021EE970
	push {r3, r4, lr}
	sub sp, #4
	ldr r2, _021EE9A0 ; =0x00001388
	add r4, r0, #0
	cmp r1, r2
	blt _021EE99C
	mov r1, #9
	mov r2, #0
	bl GetBoxMonData
	add r1, sp, #0
	strb r0, [r1]
	ldrb r0, [r1]
	cmp r0, #0xff
	bhs _021EE99C
	add r0, r0, #1
	strb r0, [r1]
	add r0, r4, #0
	mov r1, #9
	add r2, sp, #0
	bl SetBoxMonData
_021EE99C:
	add sp, #4
	pop {r3, r4, pc}
	.balign 4, 0
_021EE9A0: .word 0x00001388
	thumb_func_end ov112_021EE970

	thumb_func_start ov112_021EE9A4
ov112_021EE9A4: ; 0x021EE9A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #0x9a
	add r7, r2, #0
	str r3, [sp, #4]
	bl PlayerProfile_GetPlayerName_NewString
	add r6, r0, #0
	add r0, r4, #0
	bl PlayerProfile_GetTrainerID
	add r1, r0, #0
	ldr r0, [sp, #0x20]
	ldr r3, [sp, #4]
	str r0, [sp]
	add r0, r5, #0
	add r2, r7, #0
	bl ov112_021EE9E4
	add r0, r5, #0
	mov r1, #0x91
	add r2, r6, #0
	bl SetMonData
	add r0, r6, #0
	bl String_Delete
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov112_021EE9A4

	thumb_func_start ov112_021EE9E4
ov112_021EE9E4: ; 0x021EE9E4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r4, r2, #0
	add r5, r0, #0
	ldrb r0, [r4, #0xd]
	add r7, r1, #0
	mov r6, #0
	lsl r0, r0, #0x1b
	lsr r1, r0, #0x1b
	add r0, sp, #0x10
	strb r1, [r0]
	ldrb r0, [r4, #0xd]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1e
	cmp r0, #1
	bne _021EEA06
	mov r6, #0xfe
_021EEA06:
	mov r0, #1
	and r0, r3
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldr r0, [sp, #0x28]
	lsl r2, r3, #0x18
	str r0, [sp, #4]
	ldrh r1, [r4]
	add r0, r7, #0
	lsr r2, r2, #0x18
	add r3, r6, #0
	bl ChangePersonalityToNatureGenderAndAbility
	mov r1, #1
	str r1, [sp]
	str r0, [sp, #4]
	str r1, [sp, #8]
	str r7, [sp, #0xc]
	ldrh r1, [r4]
	ldrb r2, [r4, #0xc]
	add r0, r5, #0
	mov r3, #0x20
	bl CreateMon
	add r0, r5, #0
	mov r1, #6
	add r2, r4, #2
	bl SetMonData
	add r0, r5, #0
	mov r1, #0x36
	add r2, r4, #4
	bl SetMonData
	add r0, r5, #0
	mov r1, #0x37
	add r2, r4, #6
	bl SetMonData
	add r2, r4, #0
	add r0, r5, #0
	mov r1, #0x38
	add r2, #8
	bl SetMonData
	add r4, #0xa
	add r0, r5, #0
	mov r1, #0x39
	add r2, r4, #0
	bl SetMonData
	add r0, r5, #0
	mov r1, #0x70
	add r2, sp, #0x10
	bl SetMonData
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov112_021EE9E4

	thumb_func_start ov112_021EEA7C
ov112_021EEA7C: ; 0x021EEA7C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r7, _021EEADC ; =0x00009DAC
	mov r6, #0
	add r4, r5, #0
_021EEA86:
	ldrh r1, [r4, r7]
	cmp r1, #0
	beq _021EEA98
	ldr r0, _021EEAE0 ; =0x0001E434
	mov r2, #1
	ldr r0, [r5, r0]
	mov r3, #0x9a
	bl Bag_AddItem
_021EEA98:
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #3
	blt _021EEA86
	ldr r7, _021EEAE4 ; =0x00009DB8
	mov r6, #0
	add r4, r5, #0
_021EEAA6:
	ldrh r1, [r4, r7]
	cmp r1, #0
	beq _021EEAB8
	ldr r0, _021EEAE0 ; =0x0001E434
	mov r2, #1
	ldr r0, [r5, r0]
	mov r3, #0x9a
	bl Bag_AddItem
_021EEAB8:
	add r6, r6, #1
	add r4, r4, #4
	cmp r6, #0xa
	blt _021EEAA6
	ldr r0, _021EEAE8 ; =0x0000AABC
	ldrb r0, [r5, r0]
	lsl r0, r0, #0x19
	lsr r0, r0, #0x1f
	beq _021EEADA
	ldr r1, _021EEAEC ; =0x0000B002
	ldr r0, _021EEAE0 ; =0x0001E434
	ldrh r1, [r5, r1]
	ldr r0, [r5, r0]
	mov r2, #1
	mov r3, #0x9a
	bl Bag_AddItem
_021EEADA:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021EEADC: .word 0x00009DAC
_021EEAE0: .word 0x0001E434
_021EEAE4: .word 0x00009DB8
_021EEAE8: .word 0x0000AABC
_021EEAEC: .word 0x0000B002
	thumb_func_end ov112_021EEA7C

	thumb_func_start ov112_021EEAF0
ov112_021EEAF0: ; 0x021EEAF0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	add r6, r1, #0
	bl SaveArray_PCStorage_Get
	add r7, r0, #0
	mov r0, #0x9a
	bl AllocMonZeroed
	add r4, r0, #0
	ldr r0, _021EECC4 ; =0x0001E438
	mov r1, #0x9a
	ldr r0, [r5, r0]
	bl PlayerProfile_GetPlayerName_NewString
	str r0, [sp, #0xc]
	ldr r0, _021EECC8 ; =0x0001E440
	add r2, sp, #0x18
	ldr r0, [r5, r0]
	add r1, sp, #0x1c
	add r2, #2
	bl sub_02032688
	cmp r6, #0
	beq _021EEB2C
	add r0, sp, #0x18
	ldrh r0, [r0, #2]
	b _021EEB2E
_021EEB2C:
	mov r0, #0
_021EEB2E:
	str r0, [sp, #0x24]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0x20]
	ldr r0, _021EECCC ; =0x00009D7C
	add r6, r5, r0
_021EEB3A:
	ldrh r0, [r6]
	cmp r0, #0
	beq _021EEBA4
	bl MTRandom
	mov r1, #0x18
	bl _u32_div_f
	add r3, r1, #0
	mov r0, #0
	str r0, [sp]
	ldr r1, _021EECC4 ; =0x0001E438
	add r0, r4, #0
	ldr r1, [r5, r1]
	add r2, r6, #0
	bl ov112_021EE9A4
	add r0, r4, #0
	bl Mon_GetBoxMon
	mov r1, #0x9a
	str r1, [sp]
	ldr r1, _021EECC4 ; =0x0001E438
	mov r2, #0
	ldr r1, [r5, r1]
	mov r3, #0xe9
	bl BoxMonSetTrainerMemo
	add r0, r4, #0
	bl Mon_GetBoxMon
	str r0, [sp, #0x14]
	add r0, r7, #0
	add r1, sp, #0x24
	add r2, sp, #0x20
	bl PCStorage_FindFirstEmptySlot
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x20]
	ldr r3, [sp, #0x14]
	add r0, r7, #0
	bl PCStorage_PlaceMonInBoxByIndexPair
	ldr r0, _021EECD0 ; =0x0001E444
	add r1, r4, #0
	ldr r0, [r5, r0]
	bl Pokedex_SetMonSeenFlag
	ldr r0, _021EECD0 ; =0x0001E444
	add r1, r4, #0
	ldr r0, [r5, r0]
	bl Pokedex_SetMonCaughtFlag
_021EEBA4:
	ldr r0, [sp, #8]
	add r6, #0x10
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #3
	blt _021EEB3A
	ldr r0, _021EECD4 ; =0x0000AABC
	ldrb r0, [r5, r0]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1f
	beq _021EECB2
	mov r0, #0x10
	mov r1, #0x9a
	bl String_New
	mov r2, #0xad
	lsl r2, r2, #8
	add r1, r5, r2
	str r1, [sp, #0x10]
	ldrh r1, [r1]
	str r0, [sp, #4]
	cmp r1, #0
	beq _021EECAC
	add r2, #0x1e
	add r1, r5, r2
	bl CopyU16ArrayToString
	add r0, r4, #0
	bl ZeroMonData
	add r0, r4, #0
	bl Mon_GetBoxMon
	add r6, r0, #0
	bl MTRandom
	mov r1, #0x18
	bl _u32_div_f
	ldr r0, [sp, #0x10]
	add r3, r1, #0
	ldrb r0, [r0, #0xe]
	ldr r1, _021EECD8 ; =0x0000AD14
	ldr r2, [sp, #0x10]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	str r0, [sp]
	ldr r1, [r5, r1]
	add r0, r4, #0
	bl ov112_021EE9E4
	ldr r0, _021EECDC ; =0x0000AD2E
	add r2, sp, #0x18
	ldrb r0, [r5, r0]
	add r2, #1
	lsl r0, r0, #0x1f
	lsr r1, r0, #0x1f
	add r0, sp, #0x18
	strb r1, [r0, #1]
	add r0, r6, #0
	mov r1, #0x9d
	bl SetBoxMonData
	ldr r2, [sp, #4]
	add r0, r6, #0
	mov r1, #0x91
	bl SetBoxMonData
	add r0, r4, #0
	bl Mon_GetBoxMon
	mov r1, #0x9a
	str r1, [sp]
	ldr r3, _021EECE0 ; =0x0000AD1A
	ldr r1, _021EECC4 ; =0x0001E438
	ldrh r3, [r5, r3]
	ldr r1, [r5, r1]
	mov r2, #4
	bl BoxMonSetTrainerMemo
	ldr r2, _021EECE4 ; =0x0000AD2F
	add r0, r6, #0
	mov r1, #0xa
	add r2, r5, r2
	bl SetBoxMonData
	mov r1, #1
	add r0, sp, #0x18
	strb r1, [r0]
	add r0, r6, #0
	mov r1, #0x6e
	add r2, sp, #0x18
	bl SetBoxMonData
	ldr r2, _021EECE8 ; =0x0000AD30
	add r0, r6, #0
	mov r1, #0x9b
	add r2, r5, r2
	bl SetBoxMonData
	add r0, r7, #0
	add r1, sp, #0x24
	add r2, sp, #0x20
	bl PCStorage_FindFirstEmptySlot
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x20]
	add r0, r7, #0
	add r3, r6, #0
	bl PCStorage_PlaceMonInBoxByIndexPair
	ldr r0, _021EECD0 ; =0x0001E444
	add r1, r4, #0
	ldr r0, [r5, r0]
	bl Pokedex_SetMonSeenFlag
	ldr r0, _021EECD0 ; =0x0001E444
	add r1, r4, #0
	ldr r0, [r5, r0]
	bl Pokedex_SetMonCaughtFlag
	ldr r0, _021EECEC ; =0x0001E430
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _021EECAC
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x20]
	add r0, r7, #0
	bl PCStorage_GetMonByIndexPair
	ldr r1, _021EECEC ; =0x0001E430
	str r0, [r5, r1]
_021EECAC:
	ldr r0, [sp, #4]
	bl String_Delete
_021EECB2:
	ldr r0, [sp, #0xc]
	bl String_Delete
	add r0, r4, #0
	bl Heap_Free
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EECC4: .word 0x0001E438
_021EECC8: .word 0x0001E440
_021EECCC: .word 0x00009D7C
_021EECD0: .word 0x0001E444
_021EECD4: .word 0x0000AABC
_021EECD8: .word 0x0000AD14
_021EECDC: .word 0x0000AD2E
_021EECE0: .word 0x0000AD1A
_021EECE4: .word 0x0000AD2F
_021EECE8: .word 0x0000AD30
_021EECEC: .word 0x0001E430
	thumb_func_end ov112_021EEAF0

