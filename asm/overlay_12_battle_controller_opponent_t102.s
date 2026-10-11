#include "constants/pokemon.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_12_battle_controller_opponent.inc"
	.include "global.inc"
	.public ov12_0225F434
	.public ov12_0225F4E0
	.public ov12_0225F8AC
	.extern ov12_02258800
	.extern ov12_02258BA0
	.extern ov12_02261ED4

	.text

	.text
	thumb_func_start ov12_0225F434
ov12_0225F434: ; 0x0225F434
	push {r4, r5, r6, lr}
	sub sp, #8
	add r4, r1, #0
	ldrb r1, [r4, #0xd]
	add r5, r0, #0
	ldr r0, [r4]
	add r2, sp, #0
	bl ov12_0223BE0C
	cmp r0, #1
	bne _0225F450
	ldr r0, [r4]
	bl ov12_02261ED4
_0225F450:
	add r0, sp, #0
	ldrb r1, [r0]
	add r2, sp, #0
	strh r1, [r0, #2]
	ldrb r1, [r4, #0xd]
	ldr r0, [r4]
	bl ov12_0223BE0C
	cmp r0, #1
	bne _0225F46A
	ldr r0, [r4]
	bl ov12_02261ED4
_0225F46A:
	add r0, sp, #0
	ldrb r1, [r0]
	ldrh r2, [r0, #2]
	lsl r1, r1, #8
	orr r1, r2
	strh r1, [r0, #2]
	ldrb r1, [r4, #0xd]
	ldr r0, [r4]
	add r2, sp, #0
	bl ov12_0223BE0C
	cmp r0, #1
	bne _0225F48A
	ldr r0, [r4]
	bl ov12_02261ED4
_0225F48A:
	add r3, sp, #0
	ldrb r1, [r3]
	mov r0, #0xf
	mov r2, sp
	and r0, r1
	strb r0, [r3, #4]
	mov r0, #0
	strb r0, [r3, #5]
	ldrb r1, [r4, #0xd]
	ldrh r6, [r3, #2]
	ldr r0, [r4]
	sub r2, r2, #4
	strh r6, [r2]
	ldrh r3, [r3, #4]
	strh r3, [r2, #2]
	ldr r2, [r2]
	bl ov12_022632C0
	ldrb r1, [r4, #0xd]
	ldrb r2, [r4, #0xc]
	ldr r0, [r4]
	bl ov12_0226430C
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	ldr r0, [r0]
	bl Heap_Free
	ldr r0, [r4, #8]
	ldr r0, [r0, #4]
	bl Heap_Free
	ldr r0, [r4, #8]
	bl Heap_Free
	add r0, r4, #0
	bl Heap_Free
	add r0, r5, #0
	bl SysTask_Destroy
	add sp, #8
	pop {r4, r5, r6, pc}
	thumb_func_end ov12_0225F434

	thumb_func_start ov12_0225F4E0
ov12_0225F4E0: ; 0x0225F4E0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r4, r1, #0
	add r6, r0, #0
	ldr r0, [r4]
	bl BattleSystem_GetPaletteData
	ldrb r1, [r4, #0xa]
	add r5, r0, #0
	cmp r1, #3
	bhi _0225F57C
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0225F502: ; jump table
	.short _0225F50A - _0225F502 - 2 ; case 0
	.short _0225F574 - _0225F502 - 2 ; case 1
	.short _0225F7EA - _0225F502 - 2 ; case 2
	.short _0225F846 - _0225F502 - 2 ; case 3
_0225F50A:
	ldr r0, [r4]
	mov r1, #0
	bl BattleSystem_GetWindow
	add r6, r0, #0
	mov r1, #0xff
	bl FillWindowPixelBuffer
	add r0, r6, #0
	bl CopyWindowPixelsToVram_TextMode
	ldr r0, [r4]
	bl BattleSystem_GetBattleInput
	bl BattleInput_GetKeyPressed
	strb r0, [r4, #0x17]
	ldr r0, [r4]
	bl BattleSystem_GetMessageIcon
	mov r1, #1
	bl sub_0201649C
	mov r1, #0
	mov r2, #3
	str r1, [sp]
	mov r0, #7
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r1, #5
	add r3, r1, #0
	add r0, r5, #0
	lsl r2, r2, #0xa
	sub r3, #0xd
	bl PaletteData_BeginPaletteFade
	mov r1, #0
	str r1, [sp]
	mov r0, #0x10
	str r0, [sp, #4]
	str r1, [sp, #8]
	mov r1, #0xa
	add r3, r1, #0
	ldr r2, _0225F870 ; =0x0000FFFF
	add r0, r5, #0
	sub r3, #0x12
	bl PaletteData_BeginPaletteFade
	ldrb r0, [r4, #0xa]
	add sp, #0x24
	add r0, r0, #1
	strb r0, [r4, #0xa]
	pop {r4, r5, r6, r7, pc}
_0225F574:
	bl PaletteData_GetSelectedBuffersBitmask
	cmp r0, #0
	beq _0225F57E
_0225F57C:
	b _0225F8A6
_0225F57E:
	ldr r0, [r4]
	bl ov12_02237B0C
	mov r0, #5
	mov r1, #0x38
	bl Heap_Alloc
	str r0, [r4, #4]
	mov r0, #5
	bl SaveArray_Party_Alloc
	ldr r1, [r4, #4]
	str r0, [r1]
	ldr r0, [r4]
	bl BattleSystem_GetBattleType
	mov r1, #0xc
	and r0, r1
	cmp r0, #0xc
	beq _0225F5B2
	ldr r0, [r4]
	bl BattleSystem_GetBattleType
	cmp r0, #0xcb
	beq _0225F5B2
	b _0225F6C6
_0225F5B2:
	ldrb r1, [r4, #9]
	ldr r0, [r4]
	bl ov12_0223AB0C
	cmp r0, #2
	bne _0225F5CE
	ldrb r0, [r4, #9]
	str r0, [sp, #0x18]
	ldr r0, [r4]
	ldr r1, [sp, #0x18]
	bl BattleSystem_GetBattlerIdPartner
	str r0, [sp, #0x14]
	b _0225F5DC
_0225F5CE:
	ldrb r1, [r4, #9]
	ldr r0, [r4]
	bl BattleSystem_GetBattlerIdPartner
	str r0, [sp, #0x18]
	ldrb r0, [r4, #9]
	str r0, [sp, #0x14]
_0225F5DC:
	mov r0, #5
	bl AllocMonZeroed
	add r6, r0, #0
	mov r5, #0
_0225F5E6:
	ldr r0, [r4, #4]
	add r1, r6, #0
	ldr r0, [r0]
	bl Party_AddMon
	add r5, r5, #1
	cmp r5, #6
	blt _0225F5E6
	add r0, r6, #0
	bl Heap_Free
	ldr r0, [r4]
	ldr r1, [sp, #0x18]
	mov r7, #0
	bl BattleSystem_GetPartySize
	cmp r0, #0
	ble _0225F64E
	ldr r0, [sp, #0x18]
	mov r1, #6
	mul r1, r0
	add r5, r4, r1
	add r6, r7, #0
_0225F614:
	ldrb r2, [r5, #0x1c]
	ldr r0, [r4]
	ldr r1, [sp, #0x18]
	bl BattleSystem_GetPartyMon
	str r0, [sp, #0x1c]
	ldr r0, [r4, #4]
	add r1, r6, #0
	ldr r0, [r0]
	bl Party_GetMonByIndex
	add r1, r0, #0
	ldr r0, [sp, #0x1c]
	bl CopyPokemonToPokemon
	ldr r0, [r4, #4]
	ldrb r1, [r5, #0x1c]
	add r0, r0, r6
	add r0, #0x2c
	strb r1, [r0]
	ldr r0, [r4]
	ldr r1, [sp, #0x18]
	add r5, r5, #1
	add r6, r6, #2
	add r7, r7, #1
	bl BattleSystem_GetPartySize
	cmp r7, r0
	blt _0225F614
_0225F64E:
	ldr r0, [r4]
	ldr r1, [sp, #0x14]
	mov r6, #0
	bl BattleSystem_GetPartySize
	cmp r0, #0
	ble _0225F6AA
	ldr r0, [sp, #0x14]
	mov r1, #6
	mul r1, r0
	mov r0, #1
	add r5, r4, r1
	str r0, [sp, #0xc]
	add r7, r6, #0
_0225F66A:
	ldrb r2, [r5, #0x1c]
	ldr r0, [r4]
	ldr r1, [sp, #0x14]
	bl BattleSystem_GetPartyMon
	str r0, [sp, #0x20]
	ldr r0, [r4, #4]
	ldr r1, [sp, #0xc]
	ldr r0, [r0]
	bl Party_GetMonByIndex
	add r1, r0, #0
	ldr r0, [sp, #0x20]
	bl CopyPokemonToPokemon
	ldr r0, [r4, #4]
	ldrb r1, [r5, #0x1c]
	add r0, r0, r7
	add r0, #0x2d
	strb r1, [r0]
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #0x14]
	add r0, r0, #2
	str r0, [sp, #0xc]
	ldr r0, [r4]
	add r5, r5, #1
	add r7, r7, #2
	add r6, r6, #1
	bl BattleSystem_GetPartySize
	cmp r6, r0
	blt _0225F66A
_0225F6AA:
	ldrb r1, [r4, #9]
	ldr r0, [r4]
	bl ov12_0223AB0C
	cmp r0, #4
	bne _0225F6BE
	ldr r0, [r4, #4]
	mov r1, #1
	strb r1, [r0, #0x11]
	b _0225F746
_0225F6BE:
	ldr r0, [r4, #4]
	mov r1, #0
	strb r1, [r0, #0x11]
	b _0225F746
_0225F6C6:
	ldr r0, [r4]
	bl BattleSystem_GetBattleType
	mov r1, #2
	tst r0, r1
	beq _0225F6E8
	ldr r0, [r4]
	bl BattleSystem_GetBattleType
	mov r1, #8
	tst r0, r1
	bne _0225F6E8
	ldrb r1, [r4, #9]
	mov r0, #1
	add r7, r1, #0
	and r7, r0
	b _0225F6EC
_0225F6E8:
	ldrb r1, [r4, #9]
	add r7, r1, #0
_0225F6EC:
	ldr r0, [r4]
	bl ov12_0223AB0C
	cmp r0, #4
	bne _0225F6FA
	mov r1, #1
	b _0225F6FC
_0225F6FA:
	mov r1, #0
_0225F6FC:
	ldr r0, [r4, #4]
	strb r1, [r0, #0x11]
	ldrb r1, [r4, #9]
	ldr r0, [r4]
	bl BattleSystem_GetParty
	str r0, [sp, #0x10]
	mov r6, #0
	bl Party_GetCount
	cmp r0, #0
	ble _0225F746
	mov r0, #6
	mul r0, r7
	add r5, r4, r0
_0225F71A:
	ldrb r2, [r5, #0x1c]
	ldr r0, [r4]
	add r1, r7, #0
	bl BattleSystem_GetPartyMon
	add r1, r0, #0
	ldr r0, [r4, #4]
	ldr r0, [r0]
	bl Party_AddMon
	ldr r0, [r4, #4]
	ldrb r1, [r5, #0x1c]
	add r0, r0, r6
	add r0, #0x2c
	strb r1, [r0]
	ldr r0, [sp, #0x10]
	add r5, r5, #1
	add r6, r6, #1
	bl Party_GetCount
	cmp r6, r0
	blt _0225F71A
_0225F746:
	ldr r1, [r4]
	ldr r0, [r4, #4]
	str r1, [r0, #8]
	ldr r0, [r4, #4]
	mov r1, #5
	str r1, [r0, #0xc]
	ldr r0, [r4, #4]
	mov r1, #0
	add r0, #0x36
	strb r1, [r0]
	ldr r1, [r4, #0x10]
	ldr r0, [r4, #4]
	strh r1, [r0, #0x24]
	ldrb r1, [r4, #0x16]
	ldr r0, [r4, #4]
	strb r1, [r0, #0x12]
	ldr r0, [r4, #4]
	ldrb r1, [r4, #0xb]
	add r0, #0x35
	strb r1, [r0]
	ldrh r1, [r4, #0x14]
	ldr r0, [r4, #4]
	strh r1, [r0, #0x22]
	ldrb r1, [r4, #9]
	ldr r0, [r4, #4]
	str r1, [r0, #0x28]
	ldr r0, [r4, #4]
	ldrb r1, [r4, #0x17]
	add r0, #0x32
	strb r1, [r0]
	ldrb r0, [r4, #9]
	bl MaskOfFlagNo
	ldrb r1, [r4, #0x18]
	tst r0, r1
	bne _0225F796
	ldrb r0, [r4, #9]
	add r0, r4, r0
	ldrb r1, [r0, #0xc]
	b _0225F798
_0225F796:
	mov r1, #6
_0225F798:
	ldr r0, [r4, #4]
	strb r1, [r0, #0x14]
	ldr r0, [r4]
	bl BattleSystem_GetBattleType
	mov r1, #8
	tst r0, r1
	beq _0225F7B0
	ldr r0, [r4, #4]
	mov r1, #6
	strb r1, [r0, #0x15]
	b _0225F7DA
_0225F7B0:
	ldrb r1, [r4, #9]
	ldr r0, [r4]
	bl BattleSystem_GetBattlerIdPartner
	bl MaskOfFlagNo
	ldrb r1, [r4, #0x18]
	tst r0, r1
	bne _0225F7D4
	ldrb r1, [r4, #9]
	ldr r0, [r4]
	bl BattleSystem_GetBattlerIdPartner
	add r0, r4, r0
	ldrb r1, [r0, #0xc]
	ldr r0, [r4, #4]
	strb r1, [r0, #0x15]
	b _0225F7DA
_0225F7D4:
	ldr r0, [r4, #4]
	mov r1, #6
	strb r1, [r0, #0x15]
_0225F7DA:
	ldr r0, [r4, #4]
	bl ov10_0221BE20
	ldrb r0, [r4, #0xa]
	add sp, #0x24
	add r0, r0, #1
	strb r0, [r4, #0xa]
	pop {r4, r5, r6, r7, pc}
_0225F7EA:
	ldr r0, [r4, #4]
	add r0, #0x36
	ldrb r0, [r0]
	cmp r0, #0
	beq _0225F8A6
	ldr r0, [r4]
	bl ov12_02237BB8
	ldr r0, [r4]
	bl BattleSystem_GetBattleInput
	ldr r1, [r4, #4]
	add r1, #0x32
	ldrb r1, [r1]
	bl BattleInput_SetKeyPressed
	mov r0, #7
	str r0, [sp]
	mov r0, #0
	mov r1, #5
	str r0, [sp, #4]
	mov r2, #3
	add r3, r1, #0
	str r0, [sp, #8]
	add r0, r5, #0
	lsl r2, r2, #0xa
	sub r3, #0xd
	bl PaletteData_BeginPaletteFade
	mov r0, #0x10
	str r0, [sp]
	mov r0, #0
	mov r1, #0xa
	str r0, [sp, #4]
	add r3, r1, #0
	str r0, [sp, #8]
	ldr r2, _0225F870 ; =0x0000FFFF
	add r0, r5, #0
	sub r3, #0x12
	bl PaletteData_BeginPaletteFade
	ldrb r0, [r4, #0xa]
	add sp, #0x24
	add r0, r0, #1
	strb r0, [r4, #0xa]
	pop {r4, r5, r6, r7, pc}
_0225F846:
	bl PaletteData_GetSelectedBuffersBitmask
	cmp r0, #0
	bne _0225F8A6
	ldr r0, [r4]
	bl BattleSystem_GetMessageIcon
	mov r1, #0
	bl sub_0201649C
	ldr r3, [r4, #4]
	ldr r0, [r4]
	ldrb r2, [r3, #0x11]
	cmp r2, #6
	bne _0225F874
	ldrb r1, [r4, #9]
	mov r2, #0xff
	bl ov12_02263360
	b _0225F882
	nop
_0225F870: .word 0x0000FFFF
_0225F874:
	add r2, r3, r2
	add r2, #0x2c
	ldrb r2, [r2]
	ldrb r1, [r4, #9]
	add r2, r2, #1
	bl ov12_02263360
_0225F882:
	ldrb r1, [r4, #9]
	ldrb r2, [r4, #8]
	ldr r0, [r4]
	bl ov12_0226430C
	ldr r0, [r4, #4]
	ldr r0, [r0]
	bl Heap_Free
	ldr r0, [r4, #4]
	bl Heap_Free
	add r0, r4, #0
	bl Heap_Free
	add r0, r6, #0
	bl SysTask_Destroy
_0225F8A6:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov12_0225F4E0

	thumb_func_start ov12_0225F8AC
ov12_0225F8AC: ; 0x0225F8AC
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	str r0, [sp]
	ldr r0, [r5]
	bl BattleSystem_GetBattleType
	mov r1, #0x10
	ldrb r6, [r5, #9]
	tst r1, r0
	bne _0225F8C8
	mov r1, #8
	tst r0, r1
	beq _0225F8CC
_0225F8C8:
	str r6, [sp, #4]
	b _0225F8D6
_0225F8CC:
	ldr r0, [r5]
	add r1, r6, #0
	bl BattleSystem_GetBattlerIdPartner
	str r0, [sp, #4]
_0225F8D6:
	ldr r0, [r5]
	add r1, r6, #0
	bl ov12_02258BA0
	add r4, r0, #0
	cmp r4, #6
	bne _0225F93A
	ldr r0, [r5]
	add r1, r6, #0
	bl ov12_02258800
	add r4, r0, #0
	cmp r4, #6
	bne _0225F93A
	ldrb r1, [r5, #9]
	ldr r0, [r5]
	bl BattleSystem_GetParty
	str r0, [sp, #8]
	mov r4, #0
	bl Party_GetCount
	cmp r0, #0
	ble _0225F93A
	ldr r0, [sp, #4]
	add r7, r5, r6
	add r6, r5, r0
_0225F90C:
	ldrb r1, [r5, #9]
	ldr r0, [r5]
	add r2, r4, #0
	bl BattleSystem_GetPartyMon
	mov r1, #0xa3
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	beq _0225F92E
	ldrb r0, [r7, #0xc]
	cmp r4, r0
	beq _0225F92E
	ldrb r0, [r6, #0xc]
	cmp r4, r0
	bne _0225F93A
_0225F92E:
	ldr r0, [sp, #8]
	add r4, r4, #1
	bl Party_GetCount
	cmp r4, r0
	blt _0225F90C
_0225F93A:
	ldrb r1, [r5, #9]
	ldr r0, [r5]
	add r2, r4, #1
	bl ov12_02263360
	ldrb r1, [r5, #9]
	ldrb r2, [r5, #8]
	ldr r0, [r5]
	bl ov12_0226430C
	add r0, r5, #0
	bl Heap_Free
	ldr r0, [sp]
	bl SysTask_Destroy
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov12_0225F8AC

