#include "constants/pokemon.h"
	.include "macros.inc"
	.include "overlay_65.inc"
	.include "global.inc"
	.public ov65_0221C46C
	.public ov65_0221C5E0
	.extern ov65_0221BFBC
	.extern ov65_0221C1C4
	.extern ov65_0221C9D8
	.extern ov65_0221D57C
	.extern ov65_0221D674
	.extern ov65_0221DE10
	.extern ov65_0221DE64
	.extern ov65_0221DE8C
	.extern ov65_0221DEA0
	.extern ov65_0221DF0C
	.extern ov65_0221F760
	.extern ov65_0221F780
	.extern ov65_0221F850
	.extern ov65_0221F864
	.extern ov65_0221FB90

	.text

	.text
	thumb_func_start ov65_0221C46C
ov65_0221C46C: ; 0x0221C46C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	str r2, [sp, #0x20]
	mov r7, #0
	bl Party_GetCount
	cmp r0, #0
	bgt _0221C482
	b _0221C584
_0221C482:
	ldr r1, _0221C5C4 ; =0x000007CC
	ldr r0, [sp, #0x20]
	add r0, r0, r1
	str r0, [sp, #0x1c]
_0221C48A:
	ldr r0, [sp, #0xc]
	ldr r2, _0221C5C8 ; =0x000006A2
	add r0, r7, r0
	str r0, [sp, #0x10]
	lsl r0, r0, #2
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x10]
	lsl r1, r0, #4
	ldr r0, [sp, #0x20]
	add r4, r0, r1
	ldr r1, [sp, #0x18]
	ldrb r2, [r4, r2]
	add r5, r0, r1
	ldr r0, _0221C5CC ; =0x0000069C
	ldr r1, _0221C5D0 ; =0x000006A1
	ldrh r0, [r4, r0]
	ldrb r1, [r4, r1]
	bl GetMonIconNaixEx
	add r1, r0, #0
	mov r0, #0x1a
	str r0, [sp]
	ldr r6, [sp, #0x1c]
	ldr r3, [sp, #0x18]
	mov r0, #0x14
	mov r2, #0
	add r3, r6, r3
	bl GfGfxLoader_GetCharData
	ldr r1, _0221C5D4 ; =0x0000079C
	str r0, [r5, r1]
	add r0, r1, #0
	add r0, #0x30
	ldr r0, [r5, r0]
	mov r1, #2
	ldr r0, [r0, #0x14]
	lsl r1, r1, #8
	bl DC_FlushRange
	ldr r0, [sp, #0x10]
	ldr r1, _0221C5CC ; =0x0000069C
	str r0, [sp]
	mov r0, #0xdf
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	ldr r2, _0221C5C8 ; =0x000006A2
	str r0, [sp, #4]
	ldr r3, _0221C5D0 ; =0x000006A1
	ldr r0, _0221C5C4 ; =0x000007CC
	ldrh r1, [r4, r1]
	ldrb r2, [r4, r2]
	ldrb r3, [r4, r3]
	ldr r0, [r5, r0]
	bl ov65_0221BFBC
	mov r0, #0xdf
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #1
	bl Sprite_SetDrawFlag
	ldr r0, _0221C5D8 ; =0x0000069E
	ldrh r0, [r4, r0]
	cmp r0, #0
	bne _0221C51A
	mov r0, #0xeb
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl Sprite_SetDrawFlag
	b _0221C542
_0221C51A:
	ldr r0, [sp, #0x10]
	lsl r1, r0, #2
	ldr r0, [sp, #0x20]
	add r1, r0, r1
	mov r0, #0xeb
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	str r1, [sp, #0x14]
	mov r1, #1
	bl Sprite_SetDrawFlag
	mov r0, #0xeb
	ldr r1, [sp, #0x14]
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	ldr r1, _0221C5D8 ; =0x0000069E
	ldrh r1, [r4, r1]
	add r1, r1, #2
	bl Sprite_SetAnimCtrlSeq
_0221C542:
	ldr r0, _0221C5DC ; =0x000006A8
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0221C558
	mov r0, #0xf7
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	mov r1, #0
	bl Sprite_SetDrawFlag
	b _0221C578
_0221C558:
	ldr r0, [sp, #0x10]
	lsl r1, r0, #2
	ldr r0, [sp, #0x20]
	add r4, r0, r1
	mov r0, #0xf7
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl Sprite_SetDrawFlag
	mov r0, #0xf7
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0x15
	bl Sprite_SetAnimCtrlSeq
_0221C578:
	ldr r0, [sp, #8]
	add r7, r7, #1
	bl Party_GetCount
	cmp r7, r0
	blt _0221C48A
_0221C584:
	cmp r7, #6
	bge _0221C5C0
	ldr r0, [sp, #0xc]
	mov r6, #0xeb
	lsl r1, r0, #2
	ldr r0, [sp, #0x20]
	lsl r6, r6, #2
	add r1, r0, r1
	lsl r0, r7, #2
	add r5, r6, #0
	add r4, r1, r0
	add r5, #0x30
_0221C59C:
	mov r0, #0xdf
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl Sprite_SetDrawFlag
	ldr r0, [r4, r6]
	mov r1, #0
	bl Sprite_SetDrawFlag
	ldr r0, [r4, r5]
	mov r1, #0
	bl Sprite_SetDrawFlag
	add r7, r7, #1
	add r4, r4, #4
	cmp r7, #6
	blt _0221C59C
_0221C5C0:
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0221C5C4: .word 0x000007CC
_0221C5C8: .word 0x000006A2
_0221C5CC: .word 0x0000069C
_0221C5D0: .word 0x000006A1
_0221C5D4: .word 0x0000079C
_0221C5D8: .word 0x0000069E
_0221C5DC: .word 0x000006A8
	thumb_func_end ov65_0221C46C

	thumb_func_start ov65_0221C5E0
ov65_0221C5E0: ; 0x0221C5E0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r0, #0
	bl ov65_0221F864
	ldr r0, [r4, #0x58]
	cmp r0, #0x13
	bls _0221C5F2
	b _0221C99E
_0221C5F2:
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0221C5FE: ; jump table
	.short _0221C626 - _0221C5FE - 2 ; case 0
	.short _0221C68E - _0221C5FE - 2 ; case 1
	.short _0221C6D8 - _0221C5FE - 2 ; case 2
	.short _0221C6E6 - _0221C5FE - 2 ; case 3
	.short _0221C6FA - _0221C5FE - 2 ; case 4
	.short _0221C70A - _0221C5FE - 2 ; case 5
	.short _0221C722 - _0221C5FE - 2 ; case 6
	.short _0221C736 - _0221C5FE - 2 ; case 7
	.short _0221C748 - _0221C5FE - 2 ; case 8
	.short _0221C774 - _0221C5FE - 2 ; case 9
	.short _0221C782 - _0221C5FE - 2 ; case 10
	.short _0221C78E - _0221C5FE - 2 ; case 11
	.short _0221C812 - _0221C5FE - 2 ; case 12
	.short _0221C82E - _0221C5FE - 2 ; case 13
	.short _0221C83A - _0221C5FE - 2 ; case 14
	.short _0221C84C - _0221C5FE - 2 ; case 15
	.short _0221C890 - _0221C5FE - 2 ; case 16
	.short _0221C8CA - _0221C5FE - 2 ; case 17
	.short _0221C90C - _0221C5FE - 2 ; case 18
	.short _0221C94C - _0221C5FE - 2 ; case 19
_0221C626:
	mov r0, #0x50
	bl sub_02037AC0
	mov r0, #2
	bl sub_0201A728
	add r0, r4, #0
	bl ov65_0221F760
	ldr r0, [r4, #8]
	mov r5, #0
	ldr r0, [r0, #8]
	bl Party_GetCount
	cmp r0, #0
	ble _0221C686
	mov r7, #0x7b
	lsl r7, r7, #2
_0221C64A:
	ldr r0, [r4, #8]
	add r1, r5, #0
	ldr r0, [r0, #8]
	bl Party_GetMonByIndex
	mov r1, #0xae
	mov r2, #0
	add r6, r0, #0
	bl GetMonData
	cmp r0, r7
	bne _0221C678
	add r0, r6, #0
	mov r1, #0x70
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	beq _0221C678
	add r0, r6, #0
	mov r1, #0
	bl Mon_UpdateShayminForm
_0221C678:
	ldr r0, [r4, #8]
	add r5, r5, #1
	ldr r0, [r0, #8]
	bl Party_GetCount
	cmp r5, r0
	blt _0221C64A
_0221C686:
	ldr r0, [r4, #0x58]
	add r0, r0, #1
	str r0, [r4, #0x58]
	b _0221C99E
_0221C68E:
	mov r0, #0x50
	bl sub_02037B38
	cmp r0, #0
	beq _0221C77A
	ldr r0, [r4, #8]
	ldr r0, [r0, #0x30]
	cmp r0, #0
	bne _0221C6A4
	mov r0, #6
	b _0221C6A6
_0221C6A4:
	mov r0, #2
_0221C6A6:
	str r0, [r4, #0x58]
	bl sub_0203769C
	cmp r0, #0
	bne _0221C6CA
	bl LCRandom
	mov r1, #0x3c
	bl _s32_div_f
	lsl r0, r1, #0x10
	lsr r5, r0, #0x10
	bl sub_0203769C
	mov r1, #0x1f
	add r2, r5, #3
	bl ov65_0221DE10
_0221C6CA:
	ldr r0, [r4, #4]
	bl ov65_0221DE8C
	add r0, r4, #0
	bl ov65_0221F850
	b _0221C99E
_0221C6D8:
	ldr r1, _0221C9A4 ; =0x000022CC
	ldr r1, [r4, r1]
	cmp r1, #0
	beq _0221C77A
	add r0, r0, #1
	str r0, [r4, #0x58]
	b _0221C99E
_0221C6E6:
	ldr r0, _0221C9A4 ; =0x000022CC
	ldr r1, [r4, r0]
	sub r1, r1, #1
	str r1, [r4, r0]
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0221C77A
	mov r0, #4
	str r0, [r4, #0x58]
	b _0221C99E
_0221C6FA:
	ldr r0, _0221C9A8 ; =0x000036A8
	add r0, r4, r0
	bl sub_02039EAC
	ldr r0, [r4, #0x58]
	add r0, r0, #1
	str r0, [r4, #0x58]
	b _0221C99E
_0221C70A:
	ldr r2, _0221C9A8 ; =0x000036A8
	ldr r0, [r4, #4]
	mov r1, #2
	add r2, r4, r2
	bl sub_02039EB4
	cmp r0, #0
	beq _0221C77A
	ldr r0, [r4, #0x58]
	add r0, r0, #1
	str r0, [r4, #0x58]
	b _0221C99E
_0221C722:
	mov r0, #1
	bl sub_020378E4
	mov r0, #0x51
	bl sub_02037AC0
	ldr r0, [r4, #0x58]
	add r0, r0, #1
	str r0, [r4, #0x58]
	b _0221C99E
_0221C736:
	mov r0, #0x51
	bl sub_02037B38
	cmp r0, #0
	beq _0221C77A
	ldr r0, [r4, #0x58]
	add r0, r0, #1
	str r0, [r4, #0x58]
	b _0221C99E
_0221C748:
	mov r0, #0
	str r0, [r4, #0x5c]
	str r0, [r4, #0x60]
	str r0, [r4, #0x64]
	bl sub_0203769C
	cmp r0, #1
	bne _0221C76C
	bl sub_0203769C
	ldr r1, _0221C9AC ; =0x00002224
	ldr r2, [r4, #0x5c]
	ldr r1, [r4, r1]
	bl ov65_0221DE64
	ldr r0, [r4, #0x5c]
	add r0, r0, #1
	str r0, [r4, #0x5c]
_0221C76C:
	ldr r0, [r4, #0x58]
	add r0, r0, #1
	str r0, [r4, #0x58]
	b _0221C99E
_0221C774:
	ldr r0, [r4, #0x60]
	cmp r0, #0
	bne _0221C77C
_0221C77A:
	b _0221C99E
_0221C77C:
	mov r0, #0xa
	str r0, [r4, #0x58]
	b _0221C99E
_0221C782:
	add r0, r0, #1
	str r0, [r4, #0x58]
	add r0, r4, #0
	bl ov65_0221C1C4
	b _0221C99E
_0221C78E:
	mov r1, #0
	ldr r0, _0221C9B0 ; =0x0000069C
	add r2, r4, #0
	add r5, r1, #0
_0221C796:
	add r1, r1, #1
	strh r5, [r2, r0]
	add r2, #0x10
	cmp r1, #0xd
	blt _0221C796
	ldr r0, _0221C9AC ; =0x00002224
	ldr r0, [r4, r0]
	bl Party_GetCount
	cmp r0, #0
	ble _0221C7D0
	ldr r0, _0221C9B0 ; =0x0000069C
	ldr r7, _0221C9AC ; =0x00002224
	add r6, r4, r0
_0221C7B2:
	ldr r0, _0221C9AC ; =0x00002224
	add r1, r5, #0
	ldr r0, [r4, r0]
	bl Party_GetMonByIndex
	add r1, r6, #0
	bl ov65_0221C9D8
	ldr r0, [r4, r7]
	add r6, #0x10
	add r5, r5, #1
	bl Party_GetCount
	cmp r5, r0
	blt _0221C7B2
_0221C7D0:
	ldr r0, _0221C9B4 ; =0x00002228
	mov r5, #0
	ldr r0, [r4, r0]
	bl Party_GetCount
	cmp r0, #0
	ble _0221C804
	ldr r0, _0221C9B0 ; =0x0000069C
	ldr r7, _0221C9B4 ; =0x00002228
	add r6, r4, r0
_0221C7E4:
	ldr r0, _0221C9B4 ; =0x00002228
	add r1, r5, #0
	ldr r0, [r4, r0]
	bl Party_GetMonByIndex
	add r1, r5, #6
	lsl r1, r1, #4
	add r1, r6, r1
	bl ov65_0221C9D8
	ldr r0, [r4, r7]
	add r5, r5, #1
	bl Party_GetCount
	cmp r5, r0
	blt _0221C7E4
_0221C804:
	ldr r0, _0221C9B8 ; =0x0000075C
	mov r1, #1
	strh r1, [r4, r0]
	ldr r0, [r4, #0x58]
	add r0, r0, #1
	str r0, [r4, #0x58]
	b _0221C99E
_0221C812:
	bl sub_0203769C
	bl sub_02034818
	ldr r2, _0221C9BC ; =0x00002230
	ldr r1, [r4, r2]
	add r2, r2, #4
	add r2, r4, r2
	bl ov65_0221DEA0
	ldr r0, [r4, #0x58]
	add r0, r0, #1
	str r0, [r4, #0x58]
	b _0221C99E
_0221C82E:
	ldr r1, [r4, #0x60]
	cmp r1, #3
	bne _0221C88E
	add r0, r0, #1
	str r0, [r4, #0x58]
	b _0221C99E
_0221C83A:
	ldr r0, [r4, #4]
	bl Save_Chatot_Get
	bl ov65_0221DF0C
	ldr r0, [r4, #0x58]
	add r0, r0, #1
	str r0, [r4, #0x58]
	b _0221C99E
_0221C84C:
	ldr r1, [r4, #0x60]
	cmp r1, #4
	bne _0221C88E
	add r0, r0, #1
	str r0, [r4, #0x58]
	mov r0, #0x10
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	ldr r0, _0221C9AC ; =0x00002224
	mov r1, #0
	ldr r0, [r4, r0]
	add r2, r4, #0
	bl ov65_0221C46C
	ldr r0, _0221C9B4 ; =0x00002228
	mov r1, #6
	ldr r0, [r4, r0]
	add r2, r4, #0
	bl ov65_0221C46C
	mov r6, #0xd1
	mov r5, #0
	mov r7, #1
	lsl r6, r6, #2
_0221C87E:
	ldr r0, [r4, r6]
	add r1, r7, #0
	bl Sprite_SetDrawFlag
	add r5, r5, #1
	add r4, r4, #4
	cmp r5, #2
	blt _0221C87E
_0221C88E:
	b _0221C99E
_0221C890:
	mov r1, #0
	mov r0, #1
	add r2, r1, #0
	str r0, [sp]
	mov r0, #8
	sub r2, #0x10
	mov r3, #0x1e
	bl StartBrightnessTransition
	mov r0, #1
	add r1, r0, #0
	bl ToggleBgLayer
	mov r0, #2
	mov r1, #1
	bl ToggleBgLayer
	mov r0, #3
	mov r1, #1
	bl ToggleBgLayer
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineATogglePlanes
	ldr r0, [r4, #0x58]
	add r0, r0, #1
	str r0, [r4, #0x58]
	b _0221C99E
_0221C8CA:
	mov r0, #1
	bl IsBrightnessTransitionActive
	cmp r0, #0
	beq _0221C99E
	ldr r0, _0221C9AC ; =0x00002224
	mov r1, #0
	ldr r0, [r4, r0]
	bl Party_GetMonByIndex
	ldr r2, _0221C9C0 ; =0x000007FC
	ldr r3, _0221C9C4 ; =0x000020FC
	add r1, r0, #0
	mov r0, #0
	add r2, r4, r2
	add r3, r4, r3
	bl ov65_0221D57C
	ldr r1, _0221C9C8 ; =0x0000211C
	ldr r2, _0221C9AC ; =0x00002224
	str r0, [r4, r1]
	str r4, [sp]
	ldr r0, _0221C9CC ; =0x00000444
	mov r1, #0
	ldr r2, [r4, r2]
	add r0, r4, r0
	add r3, r1, #0
	bl ov65_0221D674
	ldr r0, [r4, #0x58]
	add r0, r0, #1
	str r0, [r4, #0x58]
	b _0221C99E
_0221C90C:
	mov r1, #0
	mov r0, #2
	add r2, r1, #0
	str r0, [sp]
	mov r0, #8
	sub r2, #0x10
	mov r3, #0x17
	bl StartBrightnessTransition
	mov r0, #4
	mov r1, #1
	bl ToggleBgLayer
	mov r0, #5
	mov r1, #1
	bl ToggleBgLayer
	mov r0, #6
	mov r1, #1
	bl ToggleBgLayer
	mov r0, #0x10
	mov r1, #1
	bl GfGfx_EngineBTogglePlanes
	ldr r0, [r4, #0x58]
	add r0, r0, #1
	str r0, [r4, #0x58]
	add r0, r4, #0
	bl ov65_0221F780
	b _0221C99E
_0221C94C:
	mov r0, #2
	bl IsBrightnessTransitionActive
	cmp r0, #0
	beq _0221C99E
	ldr r0, _0221C9D0 ; =0x000005B4
	mov r1, #1
	add r0, r4, r0
	bl ClearFrameAndWindow2
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
	ldr r0, _0221C9D4 ; =0x00000594
	ldr r3, [r4, r3]
	add r0, r4, r0
	mov r1, #0xf
	mov r2, #1
	bl ov65_0221FB90
	mov r0, #2
	bl sub_0201A738
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0221C99E:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0221C9A4: .word 0x000022CC
_0221C9A8: .word 0x000036A8
_0221C9AC: .word 0x00002224
_0221C9B0: .word 0x0000069C
_0221C9B4: .word 0x00002228
_0221C9B8: .word 0x0000075C
_0221C9BC: .word 0x00002230
_0221C9C0: .word 0x000007FC
_0221C9C4: .word 0x000020FC
_0221C9C8: .word 0x0000211C
_0221C9CC: .word 0x00000444
_0221C9D0: .word 0x000005B4
_0221C9D4: .word 0x00000594
	thumb_func_end ov65_0221C5E0

