	.include "asm/macros.inc"
	.include "overlay_80_02236450.inc"
	.include "global.inc"
	.public ov80_0223690C
	.extern ov80_02236A34
	.extern ov80_02236A88

    .text

	.text
	thumb_func_start ov80_0223690C
ov80_0223690C: ; 0x0223690C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	ldrb r0, [r5, #0xf]
	add r4, r1, #0
	bl ov80_02236A88
	add r1, r0, #0
	ldr r0, [r5, #4]
	bl BattleSetup_New
	add r7, r0, #0
	ldr r0, [r4, #8]
	bl SaveArray_Party_Get
	str r0, [sp, #8]
	ldr r0, [r4, #0xc]
	mov r1, #0
	str r0, [sp]
	ldr r0, [r4, #0x1c]
	str r0, [sp, #4]
	ldr r2, [r4, #8]
	ldr r3, [r4, #0x18]
	add r0, r7, #0
	bl sub_02051D18
	mov r0, #0x53
	mov r1, #0x12
	lsl r0, r0, #2
	str r1, [r7, r0]
	add r0, r0, #4
	str r1, [r7, r0]
	ldr r0, [r5, #4]
	bl AllocMonZeroed
	add r4, r0, #0
	ldrb r1, [r5, #0xe]
	ldr r0, [r7, #4]
	bl Party_InitWithMaxSize
	ldrb r0, [r5, #0xe]
	mov r6, #0
	cmp r0, #0
	ble _022369B8
_02236964:
	add r1, r5, r6
	add r1, #0x2a
	ldrb r1, [r1]
	ldr r0, [sp, #8]
	bl Party_GetMonByIndex
	add r1, r4, #0
	bl CopyPokemonToPokemon
	add r0, r4, #0
	mov r1, #0xa1
	mov r2, #0
	bl GetMonData
	cmp r0, #0x32
	bls _022369A6
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl GetMonData
	mov r1, #0x32
	bl GetMonExpBySpeciesAndLevel
	str r0, [sp, #0xc]
	add r0, r4, #0
	mov r1, #8
	add r2, sp, #0xc
	bl SetMonData
	add r0, r4, #0
	bl CalcMonLevelAndStats
_022369A6:
	add r0, r7, #0
	add r1, r4, #0
	mov r2, #0
	bl BattleSetup_AddMonToParty
	ldrb r0, [r5, #0xe]
	add r6, r6, #1
	cmp r6, r0
	blt _02236964
_022369B8:
	add r0, r4, #0
	bl Heap_Free
	add r0, r7, #0
	bl BattleSetup_SetAllySideBattlersToPlayer
	ldr r0, [r5, #4]
	add r1, r5, #0
	str r0, [sp]
	ldrb r2, [r5, #0xe]
	add r0, r7, #0
	add r1, #0x78
	mov r3, #1
	bl ov80_02236A34
	mov r2, #0
	add r1, r7, #0
	mov r0, #7
_022369DC:
	add r2, r2, #1
	str r0, [r1, #0x34]
	add r1, #0x34
	cmp r2, #4
	blt _022369DC
	ldrb r0, [r5, #0xf]
	cmp r0, #2
	beq _022369F6
	cmp r0, #3
	beq _02236A18
	cmp r0, #6
	beq _02236A18
	b _02236A2C
_022369F6:
	ldr r0, [r5, #4]
	mov r1, #0xa6
	str r0, [sp]
	ldrb r2, [r5, #0x10]
	lsl r1, r1, #2
	add r1, r5, r1
	lsl r2, r2, #0x18
	lsr r3, r2, #0x1d
	lsl r2, r3, #4
	add r2, r3, r2
	lsl r2, r2, #4
	add r1, r1, r2
	ldrb r2, [r5, #0xe]
	add r0, r7, #0
	mov r3, #2
	bl ov80_02236A34
_02236A18:
	ldr r0, [r5, #4]
	mov r1, #0x62
	str r0, [sp]
	ldrb r2, [r5, #0xe]
	lsl r1, r1, #2
	add r0, r7, #0
	add r1, r5, r1
	mov r3, #3
	bl ov80_02236A34
_02236A2C:
	add r0, r7, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov80_0223690C

