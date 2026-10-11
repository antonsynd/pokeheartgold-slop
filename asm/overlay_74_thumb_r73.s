#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_0222AE6C
	.public ov74_0222AF28
	.public ov74_0222B0C8
	.extern ov74_0222A744
	.extern ov74_0222CD88
	.extern ov74_0222FCA4
	.extern ov74_0223512C
	.extern ov74_02235230
	.extern ov74_02236034
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
	thumb_func_start ov74_0222AE6C
ov74_0222AE6C: ; 0x0222AE6C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov74_0222CD88
	mov r0, #3
	mov r1, #0x54
	lsl r2, r0, #0x10
	bl Heap_Create
	ldr r1, _0222AF14 ; =0x000029F8
	add r0, r5, #0
	mov r2, #0x54
	bl OverlayManager_CreateAndGetData
	ldr r2, _0222AF14 ; =0x000029F8
	mov r1, #0
	add r4, r0, #0
	bl memset
	mov r0, #0x54
	bl BgConfig_Alloc
	str r0, [r4]
	bl GfGfx_DisableEngineAPlanes
	bl GfGfx_DisableEngineBPlanes
	bl ov74_0222FCA4
	ldr r0, [r4]
	bl ov74_0222A744
	mov r0, #0
	add r1, r0, #0
	bl sub_0200FBF4
	mov r0, #1
	mov r1, #0
	bl sub_0200FBF4
	ldr r1, _0222AF18 ; =0x0000047E
	mov r0, #0xa
	mov r2, #1
	bl Sound_SetSceneAndPlayBGM
	mov r0, #0x54
	bl ov74_0223512C
	bl ov74_02235230
	cmp r0, #0
	beq _0222AEE8
	ldr r0, _0222AF1C ; =0x000015D4
	mov r1, #2
	str r1, [r4, r0]
	ldr r0, _0222AF20 ; =gGameVersion
	ldrb r0, [r0]
	bl sub_0201A4B0
	mov r0, #1
	bl ov74_02236034
_0222AEE8:
	ldr r0, _0222AF24 ; =0x000005C8
	mov r1, #0x1d
	str r1, [r4, r0]
	add r0, r5, #0
	bl OverlayManager_GetArgs
	ldr r0, [r0, #8]
	str r0, [r4, #4]
	bl Save_PlayerData_GetOptionsAddr
	str r0, [r4, #8]
	mov r0, #0xff
	mov r2, #0x57
	str r0, [r4, #0x68]
	mov r0, #0
	mov r1, #0x59
	lsl r2, r2, #4
	bl Heap_Create
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_0222AF14: .word 0x000029F8
_0222AF18: .word 0x0000047E
_0222AF1C: .word 0x000015D4
_0222AF20: .word gGameVersion
_0222AF24: .word 0x000005C8
	thumb_func_end ov74_0222AE6C

	thumb_func_start ov74_0222AF28
ov74_0222AF28: ; 0x0222AF28
	push {r4, r5, lr}
	sub sp, #0x2c
	add r4, r0, #0
	ldr r0, _0222B0C0 ; =0x00004E21
	mov r3, #1
	str r0, [sp]
	str r3, [sp, #4]
	mov r1, #0x54
	str r1, [sp, #8]
	ldr r0, [r4, #0xc]
	add r1, #0xd8
	ldr r0, [r0, r1]
	mov r1, #0x71
	mov r2, #0x2b
	bl AddCharResObjFromNarc
	str r0, [r4, #0x58]
	ldr r0, _0222B0C0 ; =0x00004E21
	mov r1, #0x54
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r4, #0xc]
	add r1, #0xdc
	ldr r0, [r0, r1]
	mov r1, #0x71
	mov r2, #0x28
	mov r3, #0
	bl AddPlttResObjFromNarc
	str r0, [r4, #0x5c]
	ldr r0, _0222B0C0 ; =0x00004E21
	mov r1, #0x54
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r4, #0xc]
	add r1, #0xe0
	ldr r0, [r0, r1]
	mov r1, #0x71
	mov r2, #0x2a
	mov r3, #1
	bl AddCellOrAnimResObjFromNarc
	str r0, [r4, #0x60]
	ldr r0, _0222B0C0 ; =0x00004E21
	mov r1, #0x54
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r4, #0xc]
	add r1, #0xe4
	ldr r0, [r0, r1]
	mov r1, #0x71
	mov r2, #0x29
	mov r3, #1
	bl AddCellOrAnimResObjFromNarc
	str r0, [r4, #0x64]
	ldr r0, _0222B0C4 ; =0x00004E22
	mov r1, #0x54
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r4, #0xc]
	add r1, #0xd8
	ldr r0, [r0, r1]
	mov r1, #0x71
	mov r2, #0x2b
	mov r3, #1
	bl AddCharResObjFromNarc
	str r0, [r4, #0x70]
	ldr r0, _0222B0C4 ; =0x00004E22
	mov r1, #0x54
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #1
	str r0, [sp, #8]
	str r1, [sp, #0xc]
	ldr r0, [r4, #0xc]
	add r1, #0xdc
	ldr r0, [r0, r1]
	mov r1, #0x71
	mov r2, #0x28
	mov r3, #0
	bl AddPlttResObjFromNarc
	str r0, [r4, #0x74]
	ldr r0, _0222B0C4 ; =0x00004E22
	mov r1, #0x54
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r4, #0xc]
	add r1, #0xe0
	ldr r0, [r0, r1]
	mov r1, #0x71
	mov r2, #0x2a
	mov r3, #1
	bl AddCellOrAnimResObjFromNarc
	str r0, [r4, #0x78]
	ldr r0, _0222B0C4 ; =0x00004E22
	mov r1, #0x54
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	str r1, [sp, #8]
	ldr r0, [r4, #0xc]
	add r1, #0xe4
	ldr r0, [r0, r1]
	mov r1, #0x71
	mov r2, #0x29
	mov r3, #1
	bl AddCellOrAnimResObjFromNarc
	str r0, [r4, #0x7c]
	ldr r0, [r4, #0x58]
	bl SpriteTransfer_CreateCharTransferTask
	ldr r0, [r4, #0x70]
	bl SpriteTransfer_CreateCharTransferTask
	ldr r0, [r4, #0x5c]
	bl SpriteTransfer_CreatePlttTransferTask
	ldr r0, [r4, #0x74]
	bl SpriteTransfer_CreatePlttTransferTask
	mov r0, #0
	mov r5, #0x4b
	ldr r2, [r4, #0xc]
	ldr r1, _0222B0C0 ; =0x00004E21
	mvn r0, r0
	str r1, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	lsl r5, r5, #2
	ldr r3, [r2, r5]
	str r3, [sp, #0x14]
	add r3, r5, #4
	ldr r3, [r2, r3]
	str r3, [sp, #0x18]
	add r3, r5, #0
	add r3, #8
	ldr r3, [r2, r3]
	add r5, #0xc
	str r3, [sp, #0x1c]
	ldr r2, [r2, r5]
	add r3, r1, #0
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, r4, #0
	add r0, #0x10
	add r2, r1, #0
	bl CreateSpriteResourcesHeader
	ldr r2, [r4, #0xc]
	ldr r1, _0222B0C4 ; =0x00004E22
	mov r0, #0
	mov r5, #0x4b
	add r4, #0x10
	str r1, [sp]
	mvn r0, r0
	str r0, [sp, #4]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	str r0, [sp, #0x10]
	lsl r5, r5, #2
	ldr r3, [r2, r5]
	add r4, #0x24
	str r3, [sp, #0x14]
	add r3, r5, #4
	ldr r3, [r2, r3]
	str r3, [sp, #0x18]
	add r3, r5, #0
	add r3, #8
	ldr r3, [r2, r3]
	add r5, #0xc
	str r3, [sp, #0x1c]
	ldr r2, [r2, r5]
	add r3, r1, #0
	str r2, [sp, #0x20]
	str r0, [sp, #0x24]
	str r0, [sp, #0x28]
	add r0, r4, #0
	add r2, r1, #0
	bl CreateSpriteResourcesHeader
	add sp, #0x2c
	pop {r4, r5, pc}
	.balign 4, 0
_0222B0C0: .word 0x00004E21
_0222B0C4: .word 0x00004E22
	thumb_func_end ov74_0222AF28

	thumb_func_start ov74_0222B0C8
ov74_0222B0C8: ; 0x0222B0C8
	push {r4, lr}
	sub sp, #0x30
	cmp r1, #1
	beq _0222B0D4
	mov r3, #1
	b _0222B0D6
_0222B0D4:
	mov r3, #0
_0222B0D6:
	ldr r2, [r0, #0xc]
	add r0, #0x10
	ldr r2, [r2]
	str r2, [sp]
	mov r2, #0x24
	mul r2, r3
	add r0, r0, r2
	mov r3, #1
	lsl r3, r3, #0xc
	mov r2, #0
	str r0, [sp, #4]
	str r2, [sp, #0x10]
	str r3, [sp, #0x14]
	str r3, [sp, #0x18]
	str r3, [sp, #0x1c]
	add r0, sp, #0
	strh r2, [r0, #0x20]
	lsl r0, r3, #7
	str r0, [sp, #8]
	mov r0, #0xa
	lsl r2, r3, #5
	str r0, [sp, #0x24]
	mov r0, #0x54
	str r2, [sp, #0xc]
	str r1, [sp, #0x28]
	str r0, [sp, #0x2c]
	cmp r1, #2
	bne _0222B114
	lsl r0, r3, #8
	add r0, r2, r0
	str r0, [sp, #0xc]
_0222B114:
	add r0, sp, #0
	bl Sprite_CreateAffine
	add r4, r0, #0
	beq _0222B13C
	mov r1, #1
	bl Sprite_SetAnimActiveFlag
	add r0, r4, #0
	mov r1, #0
	bl Sprite_SetPriority
	add r0, r4, #0
	mov r1, #0
	bl Sprite_SetAnimCtrlSeq
	add r0, r4, #0
	mov r1, #1
	bl Sprite_SetDrawFlag
_0222B13C:
	add r0, r4, #0
	add sp, #0x30
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov74_0222B0C8

