#include "constants/pokemon.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_12_battle_controller_opponent.inc"
	.include "global.inc"
	.public ov12_02259968
	.public ov12_02259BA8
	.public ov12_02259D48
	.public ov12_02259F30
	.extern ov12_0225B494
	.extern ov12_0225B7B8
	.extern ov12_0225B960
	.extern ov12_0225BE38
	.extern ov12_0225C18C
	.extern ov12_0225C6C8
	.extern ov12_0225C9BC
	.extern ov12_0225CC58
	.extern ov12_02261284
	.extern ov12_022612A4

	.text

	.text
	thumb_func_start ov12_02259968
ov12_02259968: ; 0x02259968
	push {r4, r5, r6, r7, lr}
	sub sp, #0x6c
	str r0, [sp, #0x24]
	add r6, r1, #0
	add r5, r2, #0
	bl BattleSystem_GetPokepicManager
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x24]
	bl BattleSystem_GetBattleType
	mov r0, #5
	mov r1, #0x30
	bl Heap_Alloc
	add r4, r0, #0
	mov r2, #0
	ldr r0, _02259B8C ; =0x00000195
	strb r2, [r4, #0x12]
	ldrb r0, [r6, r0]
	mov r1, #1
	tst r0, r1
	beq _022599BE
	mov r0, #2
	strb r0, [r4, #0x13]
	ldr r0, [sp, #0x24]
	bl ov12_0223A8F4
	str r0, [r4, #0xc]
	ldr r1, _02259B8C ; =0x00000195
	ldr r0, [r0]
	ldrb r2, [r6, r1]
	mov r1, #1
	and r2, r1
	add r3, r2, #0
	mov r1, #6
	mul r3, r1
	ldr r1, _02259B90 ; =ov07_022377F4
	mov r2, #0x58
	ldrsh r1, [r1, r3]
	bl ManagedSprite_SetPositionXY
	b _022599E4
_022599BE:
	ldr r0, [sp, #0x24]
	add r1, r2, #0
	strb r2, [r4, #0x13]
	bl ov12_0223A8F4
	str r0, [r4, #0xc]
	ldr r1, _02259B8C ; =0x00000195
	ldr r0, [r0]
	ldrb r2, [r6, r1]
	mov r1, #1
	and r2, r1
	add r3, r2, #0
	mov r1, #6
	mul r3, r1
	ldr r1, _02259B90 ; =ov07_022377F4
	mov r2, #0x88
	ldrsh r1, [r1, r3]
	bl ManagedSprite_SetPositionXY
_022599E4:
	ldrb r0, [r5, #1]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	beq _022599F0
	mov r0, #1
	b _022599F2
_022599F0:
	mov r0, #0
_022599F2:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldrb r0, [r5, #1]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1b
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	str r0, [sp, #8]
	ldrb r2, [r5, #1]
	ldrh r1, [r5, #2]
	ldrb r3, [r4, #0x13]
	lsl r2, r2, #0x1e
	add r0, sp, #0x5c
	lsr r2, r2, #0x1e
	bl GetMonSpriteCharAndPlttNarcIdsEx
	ldr r0, [r5, #4]
	str r0, [sp]
	ldrb r3, [r5, #1]
	ldrh r0, [r5, #2]
	ldrb r2, [r4, #0x13]
	lsl r1, r3, #0x1e
	lsl r3, r3, #0x18
	lsr r1, r1, #0x1e
	lsr r3, r3, #0x1b
	bl GetMonPicHeightBySpeciesGenderForm
	str r0, [sp, #0x2c]
	mov r0, #0x69
	lsl r0, r0, #2
	add r1, sp, #0x30
	ldrh r2, [r5, #2]
	ldr r0, [r6, r0]
	add r1, #2
	bl sub_020729D8
	mov r0, #0x69
	lsl r0, r0, #2
	add r1, sp, #0x30
	ldrh r2, [r5, #2]
	ldr r0, [r6, r0]
	add r1, #1
	bl sub_020729FC
	mov r0, #0x69
	lsl r0, r0, #2
	ldrh r2, [r5, #2]
	ldr r0, [r6, r0]
	add r1, sp, #0x30
	bl sub_02072A20
	mov r3, #0x69
	lsl r3, r3, #2
	ldr r0, [r6, r3]
	sub r3, #0xf
	add r1, sp, #0x30
	ldrh r2, [r5, #2]
	ldrb r3, [r6, r3]
	add r1, #3
	bl NARC_ReadPokepicAnimScript
	ldr r1, _02259B8C ; =0x00000195
	mov r0, #6
	ldrb r2, [r6, r1]
	ldr r3, _02259B90 ; =ov07_022377F4
	add r7, r2, #0
	mul r7, r0
	ldr r0, _02259B94 ; =ov07_022377F4 + 2
	mov r2, #2
	ldrsh r0, [r0, r7]
	ldrsh r3, [r3, r7]
	str r0, [sp]
	ldr r0, _02259B98 ; =ov07_022377F4 + 4
	ldrsh r0, [r0, r7]
	str r0, [sp, #4]
	ldr r0, [sp, #0x2c]
	str r0, [sp, #8]
	add r0, sp, #0x30
	ldrsb r2, [r0, r2]
	str r2, [sp, #0xc]
	mov r2, #1
	ldrsb r2, [r0, r2]
	str r2, [sp, #0x10]
	ldrb r0, [r0]
	add r2, sp, #0x5c
	str r0, [sp, #0x14]
	sub r0, r1, #1
	ldrb r0, [r6, r0]
	ldr r1, [sp, #0x28]
	str r0, [sp, #0x18]
	add r0, sp, #0x30
	add r0, #3
	str r0, [sp, #0x1c]
	mov r0, #0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x24]
	bl ov12_022612A4
	str r0, [r6, #0x20]
	ldr r0, [r6, #0x20]
	str r0, [r4, #8]
	ldrb r0, [r4, #0x13]
	cmp r0, #2
	bne _02259AD2
	mov r3, #0
	str r3, [sp]
	mov r1, #8
	ldr r0, [r4, #8]
	add r2, r1, #0
	bl Pokepic_StartPaletteFade
_02259AD2:
	ldrb r0, [r4, #0x13]
	cmp r0, #2
	bne _02259B12
	ldr r0, [sp, #0x24]
	bl BattleSystem_GetBattleSpecial
	mov r1, #0x40
	tst r0, r1
	beq _02259B12
	ldr r0, [r4, #8]
	mov r1, #1
	bl Pokepic_GetAttr
	add r7, r0, #0
	ldr r0, [r4, #8]
	mov r1, #0x2e
	mov r2, #0
	bl Pokepic_SetAttr
	ldr r0, [r4, #8]
	mov r1, #0
	mov r2, #0xc0
	bl Pokepic_SetAttr
	add r2, r7, #0
	ldr r0, [r4, #8]
	mov r1, #1
	sub r2, #0x88
	bl Pokepic_SetAttr
	strh r7, [r4, #0x14]
	b _02259B1E
_02259B12:
	ldr r0, _02259B8C ; =0x00000195
	ldrb r0, [r6, r0]
	lsl r1, r0, #2
	ldr r0, _02259B9C ; =ov07_022377DC
	ldrsh r0, [r0, r1]
	strh r0, [r4, #0x14]
_02259B1E:
	ldr r0, [sp, #0x24]
	str r0, [r4]
	str r6, [r4, #4]
	ldrb r0, [r5]
	strb r0, [r4, #0x10]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r1, [r6, r0]
	add r0, r0, #1
	strb r1, [r4, #0x11]
	ldrh r1, [r5, #2]
	strh r1, [r4, #0x16]
	ldrb r1, [r5, #1]
	lsl r1, r1, #0x18
	lsr r2, r1, #0x1b
	add r1, r4, #0
	add r1, #0x2c
	strb r2, [r1]
	ldr r1, [r5, #8]
	str r1, [r4, #0x18]
	ldrb r0, [r6, r0]
	str r0, [r4, #0x1c]
	ldr r0, [r5, #4]
	bl GetNatureFromPersonality
	str r0, [r4, #0x24]
	ldrb r0, [r5, #1]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	str r0, [r4, #0x28]
	ldrb r0, [r4, #0x13]
	cmp r0, #2
	bne _02259B78
	ldr r0, [sp, #0x24]
	bl BattleSystem_GetBattleSpecial
	mov r1, #0x40
	tst r0, r1
	beq _02259B78
	ldr r0, _02259BA0 ; =ov12_0225B7B8
	add r1, r4, #0
	mov r2, #0
	bl SysTask_CreateOnMainQueue
	b _02259B82
_02259B78:
	ldr r0, _02259BA4 ; =ov12_0225B494
	add r1, r4, #0
	mov r2, #0
	bl SysTask_CreateOnMainQueue
_02259B82:
	mov r0, #1
	bl sub_02005B58
	add sp, #0x6c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_02259B8C: .word 0x00000195
_02259B90: .word ov07_022377F4
_02259B94: .word ov07_022377F4 + 2
_02259B98: .word ov07_022377F4 + 4
_02259B9C: .word ov07_022377DC
_02259BA0: .word ov12_0225B7B8
_02259BA4: .word ov12_0225B494
	thumb_func_end ov12_02259968

	thumb_func_start ov12_02259BA8
ov12_02259BA8: ; 0x02259BA8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r7, r0, #0
	add r6, r1, #0
	add r5, r2, #0
	bl BattleSystem_GetBattleType
	mov r0, #5
	mov r1, #0x9c
	bl Heap_Alloc
	add r4, r0, #0
	ldr r0, _02259D3C ; =0x00000195
	ldrb r1, [r6, r0]
	mov r0, #1
	tst r0, r1
	beq _02259BCE
	mov r1, #2
	b _02259BD0
_02259BCE:
	mov r1, #0
_02259BD0:
	add r0, r4, #0
	add r0, #0x84
	strb r1, [r0]
	ldrb r0, [r5, #1]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	beq _02259BE2
	mov r0, #1
	b _02259BE4
_02259BE2:
	mov r0, #0
_02259BE4:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldrb r0, [r5, #1]
	add r3, r4, #0
	add r3, #0x84
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1b
	str r0, [sp, #4]
	ldr r0, [r5, #4]
	str r0, [sp, #8]
	ldrb r2, [r5, #1]
	add r0, r4, #0
	ldrh r1, [r5, #2]
	lsl r2, r2, #0x1e
	ldrb r3, [r3]
	add r0, #0x14
	lsr r2, r2, #0x1e
	bl GetMonSpriteCharAndPlttNarcIdsEx
	ldr r0, [r5, #4]
	add r2, r4, #0
	str r0, [sp]
	ldrb r3, [r5, #1]
	add r2, #0x84
	ldrh r0, [r5, #2]
	lsl r1, r3, #0x1e
	lsl r3, r3, #0x18
	ldrb r2, [r2]
	lsr r1, r1, #0x1e
	lsr r3, r3, #0x1b
	bl GetMonPicHeightBySpeciesGenderForm
	add r1, r4, #0
	add r1, #0x85
	strb r0, [r1]
	mov r0, #0x69
	lsl r0, r0, #2
	add r1, r4, #0
	ldrh r2, [r5, #2]
	ldr r0, [r6, r0]
	add r1, #0x90
	bl sub_020729D8
	mov r0, #0x69
	lsl r0, r0, #2
	add r1, r4, #0
	ldrh r2, [r5, #2]
	ldr r0, [r6, r0]
	add r1, #0x91
	bl sub_020729FC
	mov r0, #0x69
	lsl r0, r0, #2
	add r1, r4, #0
	ldrh r2, [r5, #2]
	ldr r0, [r6, r0]
	add r1, #0x93
	bl sub_02072A20
	add r0, r6, #0
	bl ov12_02261284
	str r7, [r4]
	add r0, r4, #0
	str r6, [r4, #4]
	mov r1, #0
	add r0, #0x83
	strb r1, [r0]
	add r0, r4, #0
	add r0, #0x96
	strb r1, [r0]
	add r0, r4, #0
	ldrb r1, [r5]
	add r0, #0x80
	strb r1, [r0]
	mov r0, #0x65
	lsl r0, r0, #2
	ldrb r2, [r6, r0]
	add r1, r4, #0
	add r1, #0x81
	strb r2, [r1]
	add r1, r4, #0
	ldrh r2, [r5, #2]
	add r1, #0x86
	add r0, r0, #1
	strh r2, [r1]
	ldrb r1, [r5, #1]
	lsl r1, r1, #0x18
	lsr r2, r1, #0x1b
	add r1, r4, #0
	add r1, #0x97
	strb r2, [r1]
	ldrb r1, [r6, r0]
	add r0, r4, #0
	add r0, #0x82
	strb r1, [r0]
	add r0, r4, #0
	ldr r1, [r5, #8]
	add r0, #0x88
	str r1, [r0]
	add r0, r4, #0
	ldr r1, [r5, #0xc]
	add r0, #0x8c
	strb r1, [r0]
	ldr r0, [r5, #4]
	bl GetNatureFromPersonality
	add r1, r4, #0
	add r1, #0x8d
	strb r0, [r1]
	add r0, r4, #0
	ldr r1, [r5, #0x10]
	add r0, #0x8e
	strh r1, [r0]
	ldrb r0, [r5, #1]
	lsl r0, r0, #0x1d
	lsr r1, r0, #0x1f
	add r0, r4, #0
	add r0, #0x92
	strb r1, [r0]
	add r0, r4, #0
	mov r1, #0
	add r0, #0x94
	strh r1, [r0]
	mov r0, #1
	bl sub_02005B58
	add r0, r7, #0
	bl BattleSystem_GetBattleType
	mov r1, #0x65
	lsl r1, r1, #2
	add r5, r0, #0
	ldrb r1, [r6, r1]
	add r0, r7, #0
	bl ov12_0223C140
	cmp r0, #0xff
	beq _02259D2C
	mov r0, #2
	tst r0, r5
	beq _02259D1E
	mov r0, #8
	tst r0, r5
	bne _02259D1E
	ldr r0, _02259D3C ; =0x00000195
	ldrb r0, [r6, r0]
	cmp r0, #3
	bls _02259D1E
	ldr r0, _02259D40 ; =ov12_0225B960
	add r1, r4, #0
	mov r2, #0
	bl SysTask_CreateOnMainQueue
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02259D1E:
	ldr r0, _02259D44 ; =ov12_0225BE38
	add r1, r4, #0
	mov r2, #0
	bl SysTask_CreateOnMainQueue
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02259D2C:
	ldr r0, _02259D40 ; =ov12_0225B960
	add r1, r4, #0
	mov r2, #0
	bl SysTask_CreateOnMainQueue
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_02259D3C: .word 0x00000195
_02259D40: .word ov12_0225B960
_02259D44: .word ov12_0225BE38
	thumb_func_end ov12_02259BA8

	thumb_func_start ov12_02259D48
ov12_02259D48: ; 0x02259D48
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp, #0xc]
	str r1, [sp, #0x10]
	add r4, r2, #0
	bl BattleSystem_GetBattleType
	mov r0, #5
	mov r1, #0x9c
	bl Heap_Alloc
	add r5, r0, #0
	add r1, r5, #0
	mov r0, #0
	add r1, #0x83
	strb r0, [r1]
	ldr r2, _02259F24 ; =0x00000195
	ldr r1, [sp, #0x10]
	ldrb r2, [r1, r2]
	mov r1, #1
	tst r1, r2
	beq _02259D7E
	add r0, r5, #0
	mov r1, #2
	add r0, #0x84
	strb r1, [r0]
	b _02259D84
_02259D7E:
	add r1, r5, #0
	add r1, #0x84
	strb r0, [r1]
_02259D84:
	ldrb r0, [r4, #1]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	beq _02259D90
	mov r0, #1
	b _02259D92
_02259D90:
	mov r0, #0
_02259D92:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp]
	ldrb r0, [r4, #1]
	add r3, r5, #0
	add r3, #0x84
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1b
	str r0, [sp, #4]
	ldr r0, [r4, #4]
	str r0, [sp, #8]
	ldrb r2, [r4, #1]
	add r0, r5, #0
	ldrh r1, [r4, #2]
	lsl r2, r2, #0x1e
	ldrb r3, [r3]
	add r0, #0x14
	lsr r2, r2, #0x1e
	bl GetMonSpriteCharAndPlttNarcIdsEx
	ldr r0, [r4, #4]
	add r2, r5, #0
	str r0, [sp]
	ldrb r3, [r4, #1]
	add r2, #0x84
	ldrh r0, [r4, #2]
	lsl r1, r3, #0x1e
	lsl r3, r3, #0x18
	ldrb r2, [r2]
	lsr r1, r1, #0x1e
	lsr r3, r3, #0x1b
	bl GetMonPicHeightBySpeciesGenderForm
	add r1, r5, #0
	add r1, #0x85
	strb r0, [r1]
	mov r1, #0x69
	ldr r0, [sp, #0x10]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	add r1, r5, #0
	ldrh r2, [r4, #2]
	add r1, #0x90
	bl sub_020729D8
	mov r1, #0x69
	ldr r0, [sp, #0x10]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	add r1, r5, #0
	ldrh r2, [r4, #2]
	add r1, #0x91
	bl sub_020729FC
	mov r1, #0x69
	ldr r0, [sp, #0x10]
	lsl r1, r1, #2
	ldr r0, [r0, r1]
	add r1, r5, #0
	ldrh r2, [r4, #2]
	add r1, #0x93
	bl sub_02072A20
	ldr r0, [sp, #0x10]
	bl ov12_02261284
	ldr r0, [sp, #0xc]
	str r0, [r5]
	ldr r0, [sp, #0x10]
	str r0, [r5, #4]
	add r0, r5, #0
	ldrb r1, [r4]
	add r0, #0x80
	strb r1, [r0]
	mov r1, #0x65
	ldr r0, [sp, #0x10]
	lsl r1, r1, #2
	ldrb r2, [r0, r1]
	add r0, r5, #0
	add r0, #0x81
	strb r2, [r0]
	add r0, r5, #0
	ldrh r2, [r4, #2]
	add r0, #0x86
	add r1, r1, #1
	strh r2, [r0]
	ldrb r0, [r4, #1]
	lsl r0, r0, #0x18
	lsr r2, r0, #0x1b
	add r0, r5, #0
	add r0, #0x97
	strb r2, [r0]
	ldr r0, [sp, #0x10]
	ldrb r1, [r0, r1]
	add r0, r5, #0
	add r0, #0x82
	strb r1, [r0]
	add r0, r5, #0
	ldr r1, [r4, #8]
	add r0, #0x88
	str r1, [r0]
	add r0, r5, #0
	ldr r1, [r4, #0xc]
	add r0, #0x8c
	strb r1, [r0]
	ldr r0, [r4, #4]
	bl GetNatureFromPersonality
	add r1, r5, #0
	add r1, #0x8d
	strb r0, [r1]
	add r0, r5, #0
	ldr r1, [r4, #0x10]
	add r0, #0x8e
	strh r1, [r0]
	ldrb r0, [r4, #1]
	lsl r0, r0, #0x1d
	lsr r1, r0, #0x1f
	add r0, r5, #0
	add r0, #0x92
	strb r1, [r0]
	add r0, r5, #0
	ldr r1, [r4, #0x14]
	add r0, #0x94
	strh r1, [r0]
	add r1, r5, #0
	mov r0, #0
	add r1, #0x96
	strb r0, [r1]
	add r1, r5, #0
	ldr r2, [r4, #0x4c]
	add r1, #0x98
	str r2, [r1]
	mov ip, r4
	add r7, r5, #0
	add r6, r4, #0
	add r1, r5, #0
_02259EA4:
	mov r2, ip
	add r2, #0x50
	ldrh r3, [r2]
	add r2, r7, #0
	add r2, #0x40
	strh r3, [r2]
	add r2, r4, r0
	add r2, #0x58
	ldrb r3, [r2]
	add r2, r5, r0
	add r2, #0x48
	strb r3, [r2]
	add r2, r4, r0
	add r2, #0x5c
	ldrb r3, [r2]
	add r2, r5, r0
	add r2, #0x4c
	strb r3, [r2]
	add r2, r4, r0
	add r2, #0x60
	ldrb r3, [r2]
	add r2, r5, r0
	add r2, #0x50
	strb r3, [r2]
	ldr r2, [r6, #0x64]
	add r0, r0, #1
	str r2, [r1, #0x54]
	mov r2, ip
	add r2, r2, #2
	mov ip, r2
	add r7, r7, #2
	add r6, r6, #4
	add r1, r1, #4
	cmp r0, #4
	blt _02259EA4
	mov r2, #0x65
	ldr r1, [sp, #0x10]
	lsl r2, r2, #2
	ldrb r1, [r1, r2]
	ldr r0, [sp, #0xc]
	bl ov12_0223C140
	cmp r0, #0xff
	beq _02259F06
	add r1, r5, #0
	add r1, #0x8c
	ldrb r1, [r1]
	cmp r0, r1
	beq _02259F14
_02259F06:
	ldr r0, _02259F28 ; =ov12_0225C18C
	add r1, r5, #0
	mov r2, #0
	bl SysTask_CreateOnMainQueue
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
_02259F14:
	ldr r0, _02259F2C ; =ov12_0225C6C8
	add r1, r5, #0
	mov r2, #0
	bl SysTask_CreateOnMainQueue
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_02259F24: .word 0x00000195
_02259F28: .word ov12_0225C18C
_02259F2C: .word ov12_0225C6C8
	thumb_func_end ov12_02259D48

	thumb_func_start ov12_02259F30
ov12_02259F30: ; 0x02259F30
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	str r1, [sp, #4]
	mov r0, #5
	mov r1, #0x78
	str r2, [sp, #8]
	bl Heap_Alloc
	add r4, r0, #0
	ldr r0, [sp]
	add r7, r4, #0
	str r0, [r4]
	ldr r0, [sp, #4]
	str r0, [r4, #4]
	ldr r0, [r0, #0x20]
	str r0, [r4, #8]
	ldr r0, [sp, #8]
	ldrb r1, [r0]
	add r0, r4, #0
	add r0, #0x68
	strb r1, [r0]
	mov r1, #0x65
	ldr r0, [sp, #4]
	lsl r1, r1, #2
	ldrb r2, [r0, r1]
	add r0, r4, #0
	add r0, #0x69
	strb r2, [r0]
	ldr r0, [sp, #4]
	add r1, r1, #1
	ldrb r1, [r0, r1]
	add r0, r4, #0
	add r0, #0x6a
	strb r1, [r0]
	add r1, r4, #0
	mov r0, #0
	add r1, #0x6b
	strb r0, [r1]
	ldr r1, [sp, #8]
	ldrb r2, [r1, #1]
	add r1, r4, #0
	add r1, #0x6c
	strb r2, [r1]
	ldr r1, [sp, #8]
	ldrh r2, [r1, #2]
	add r1, r4, #0
	add r1, #0x6e
	strh r2, [r1]
	ldr r1, [sp, #8]
	add r2, r4, #0
	ldr r1, [r1, #4]
	str r1, [r4, #0x70]
	ldr r1, [sp, #8]
	ldr r1, [r1, #0x2c]
	str r1, [r4, #0x74]
	ldr r1, [sp, #8]
	mov ip, r1
_02259FA4:
	mov r3, ip
	ldrh r3, [r3, #8]
	strh r3, [r7, #0x28]
	ldr r3, [sp, #8]
	add r7, r7, #2
	add r6, r3, r0
	add r3, r4, r0
	ldrb r5, [r6, #0x10]
	add r3, #0x30
	strb r5, [r3]
	add r3, r4, r0
	ldrb r5, [r6, #0x14]
	add r3, #0x34
	strb r5, [r3]
	add r3, r4, r0
	ldrb r5, [r6, #0x18]
	add r3, #0x38
	add r0, r0, #1
	strb r5, [r3]
	ldr r3, [r1, #0x1c]
	add r1, r1, #4
	str r3, [r2, #0x3c]
	mov r3, ip
	add r3, r3, #2
	add r2, r2, #4
	mov ip, r3
	cmp r0, #4
	blt _02259FA4
	mov r2, #0x65
	ldr r1, [sp, #4]
	lsl r2, r2, #2
	ldrb r1, [r1, r2]
	ldr r0, [sp]
	bl ov12_0223C140
	cmp r0, #0xff
	beq _02259FF4
	ldr r1, [r4, #0x74]
	cmp r0, r1
	beq _0225A002
_02259FF4:
	ldr r0, _0225A010 ; =ov12_0225C9BC
	add r1, r4, #0
	mov r2, #0
	bl SysTask_CreateOnMainQueue
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0225A002:
	ldr r0, _0225A014 ; =ov12_0225CC58
	add r1, r4, #0
	mov r2, #0
	bl SysTask_CreateOnMainQueue
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0225A010: .word ov12_0225C9BC
_0225A014: .word ov12_0225CC58
	thumb_func_end ov12_02259F30

