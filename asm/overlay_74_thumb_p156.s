#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public ov74_0222E8B4
	.extern ov74_0222E85C
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
	thumb_func_start ov74_0222E8B4
ov74_0222E8B4: ; 0x0222E8B4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	add r5, r0, #0
	mov r6, #0
	mov r0, #1
	str r1, [sp, #0x10]
	add r7, r6, #0
	str r0, [sp, #0x24]
	add r4, r5, #4
_0222E8C6:
	ldr r0, [sp, #0x24]
	bl sub_02034818
	cmp r0, #0
	bne _0222E8E8
	ldr r0, _0222EA70 ; =0x00002C08
	ldr r0, [r4, r0]
	cmp r0, #0
	beq _0222E8DA
	add r7, r7, #1
_0222E8DA:
	ldr r0, _0222EA70 ; =0x00002C08
	mov r1, #0
	str r1, [r4, r0]
	ldr r1, _0222EA74 ; =0x3FFF0001
	add r0, #0x14
	str r1, [r4, r0]
	b _0222E910
_0222E8E8:
	ldr r1, _0222EA70 ; =0x00002C08
	ldr r1, [r4, r1]
	cmp r1, r0
	beq _0222E90E
	ldr r1, _0222EA70 ; =0x00002C08
	add r7, r7, #1
	str r0, [r4, r1]
	add r0, r1, #0
	add r1, #0x34
	ldr r1, [r5, r1]
	add r0, #0x34
	add r2, r1, #1
	ldr r0, [r5, r0]
	ldr r1, _0222EA78 ; =0x00002C3C
	add r6, r6, #1
	str r2, [r5, r1]
	sub r1, #0x20
	str r0, [r4, r1]
	b _0222E910
_0222E90E:
	add r6, r6, #1
_0222E910:
	ldr r0, [sp, #0x24]
	add r4, r4, #4
	add r0, r0, #1
	str r0, [sp, #0x24]
	cmp r0, #5
	blt _0222E8C6
	cmp r7, #0
	bne _0222E926
	add sp, #0x48
	add r0, r6, #0
	pop {r3, r4, r5, r6, r7, pc}
_0222E926:
	ldr r1, _0222EA7C ; =0x00002C20
	ldr r0, [r5, r1]
	str r0, [sp, #0x38]
	add r0, r1, #4
	ldr r0, [r5, r0]
	str r0, [sp, #0x3c]
	add r0, r1, #0
	add r0, #8
	ldr r0, [r5, r0]
	add r1, #0xc
	str r0, [sp, #0x40]
	ldr r0, [r5, r1]
	str r0, [sp, #0x44]
	add r0, sp, #0x38
	bl ov74_0222E85C
	str r0, [sp, #0x28]
	add r0, sp, #0x38
	bl ov74_0222E85C
	str r0, [sp, #0x2c]
	add r0, sp, #0x38
	bl ov74_0222E85C
	str r0, [sp, #0x30]
	add r0, sp, #0x38
	bl ov74_0222E85C
	str r0, [sp, #0x34]
	mov r0, #0x55
	bl MessageFormat_New
	add r4, r0, #0
	mov r0, #1
	mov r1, #0x1b
	mov r2, #0xf7
	mov r3, #0x55
	bl NewMsgDataFromNarc
	str r0, [sp, #0x1c]
	mov r5, #0
	ldr r0, [sp, #0x10]
	add r1, r5, #0
	bl FillWindowPixelBuffer
	add r0, r5, #0
	str r0, [sp, #0x14]
	cmp r6, #0
	ble _0222EA54
	add r0, sp, #0x28
	str r0, [sp, #0x18]
_0222E98C:
	ldr r0, [sp, #0x18]
	ldr r0, [r0]
	bl sub_02034818
	add r7, r0, #0
	beq _0222EA44
	add r0, r4, #0
	mov r1, #0
	add r2, r7, #0
	bl BufferPlayersName
	ldr r1, [sp, #0x1c]
	add r0, r4, #0
	mov r2, #0x36
	mov r3, #0x55
	bl ReadMsgData_ExpandPlaceholders
	str r0, [sp, #0x20]
	add r0, r7, #0
	bl PlayerProfile_GetTrainerGender
	cmp r0, #0
	str r5, [sp]
	bne _0222E9D6
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0222EA80 ; =0x00050600
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x20]
	add r3, r1, #0
	bl AddTextPrinterParameterizedWithColor
	b _0222E9F0
_0222E9D6:
	mov r0, #0xff
	str r0, [sp, #4]
	mov r0, #0xc1
	lsl r0, r0, #0xa
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	mov r1, #0
	ldr r0, [sp, #0x10]
	ldr r2, [sp, #0x20]
	add r3, r1, #0
	bl AddTextPrinterParameterizedWithColor
_0222E9F0:
	ldr r0, [sp, #0x20]
	bl String_Delete
	add r0, r7, #0
	bl PlayerProfile_GetTrainerID
	add r2, r0, #0
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	lsl r2, r2, #0x10
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0
	lsr r2, r2, #0x10
	mov r3, #5
	bl BufferIntegerAsString
	ldr r1, [sp, #0x1c]
	add r0, r4, #0
	mov r2, #0x37
	mov r3, #0x55
	bl ReadMsgData_ExpandPlaceholders
	add r7, r0, #0
	str r5, [sp]
	mov r0, #0xff
	str r0, [sp, #4]
	ldr r0, _0222EA84 ; =0x000E0F00
	mov r1, #0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	add r2, r7, #0
	mov r3, #0x50
	bl AddTextPrinterParameterizedWithColor
	add r0, r7, #0
	bl String_Delete
	add r5, #0x18
_0222EA44:
	ldr r0, [sp, #0x18]
	add r0, r0, #4
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x14]
	cmp r0, r6
	blt _0222E98C
_0222EA54:
	cmp r6, #0
	beq _0222EA5E
	ldr r0, [sp, #0x10]
	bl CopyWindowToVram
_0222EA5E:
	ldr r0, [sp, #0x1c]
	bl DestroyMsgData
	add r0, r4, #0
	bl MessageFormat_Delete
	add r0, r6, #0
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0222EA70: .word 0x00002C08
_0222EA74: .word 0x3FFF0001
_0222EA78: .word 0x00002C3C
_0222EA7C: .word 0x00002C20
_0222EA80: .word 0x00050600
_0222EA84: .word 0x000E0F00
	thumb_func_end ov74_0222E8B4

