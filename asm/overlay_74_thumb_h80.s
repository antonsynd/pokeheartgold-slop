#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_0222AF28
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

