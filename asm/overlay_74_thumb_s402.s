#include "config.h"
#include "msgdata/msg/msg_0247.h"
#include "msgdata/msg/msg_0442.h"
#include "constants/sndseq.h"
	.include "macros.inc"
	.include "overlay_74_thumb.inc"
	.include "global.inc"
	.public MigrateBoxMon
	.extern AGB_GetBoxMonAbility
	.extern AGB_GetBoxMonData
	.extern ConvertRSStringToDPStringInternational
	.extern TranslateAgbSpecies
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
	thumb_func_start MigrateBoxMon
MigrateBoxMon: ; 0x02234A9C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r4, r1, #0
	add r6, r0, #0
	add r0, r4, #0
	bl ZeroBoxMonData
	add r0, r4, #0
	bl AcquireBoxMonLock
	mov r1, #0
	str r0, [sp]
	add r0, r6, #0
	add r2, r1, #0
	bl AGB_GetBoxMonData
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0
	add r2, sp, #8
	bl SetBoxMonData
	add r0, r6, #0
	mov r1, #0xb
	mov r2, #0
	bl AGB_GetBoxMonData
	str r0, [sp, #8]
	bl TranslateAgbSpecies
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #5
	add r2, sp, #8
	bl SetBoxMonData
	add r0, r6, #0
	mov r1, #0xc
	mov r2, #0
	bl AGB_GetBoxMonData
	str r0, [sp, #8]
	cmp r0, #0
	beq _02234AFE
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl UpConvertItemId_Gen3to4
	str r0, [sp, #8]
_02234AFE:
	add r0, r4, #0
	mov r1, #6
	add r2, sp, #8
	bl SetBoxMonData
	add r0, r6, #0
	mov r1, #1
	mov r2, #0
	bl AGB_GetBoxMonData
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #7
	add r2, sp, #8
	bl SetBoxMonData
	add r0, r6, #0
	mov r1, #0x19
	mov r2, #0
	bl AGB_GetBoxMonData
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #8
	add r2, sp, #8
	bl SetBoxMonData
	mov r0, #0x46
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #9
	add r2, sp, #8
	bl SetBoxMonData
	add r0, r6, #0
	add r1, r4, #0
	bl AGB_GetBoxMonAbility
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0xa
	add r2, sp, #8
	bl SetBoxMonData
	add r0, r6, #0
	mov r1, #8
	mov r2, #0
	bl AGB_GetBoxMonData
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0xb
	add r2, sp, #8
	bl SetBoxMonData
	add r0, r6, #0
	mov r1, #3
	mov r2, #0
	bl AGB_GetBoxMonData
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #0xc
	add r2, sp, #4
	bl SetBoxMonData
	add r0, r6, #0
	mov r1, #0x1a
	mov r2, #0
	bl AGB_GetBoxMonData
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0xd
	add r2, sp, #8
	bl SetBoxMonData
	add r0, r6, #0
	mov r1, #0x1b
	mov r2, #0
	bl AGB_GetBoxMonData
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0xe
	add r2, sp, #8
	bl SetBoxMonData
	add r0, r6, #0
	mov r1, #0x1c
	mov r2, #0
	bl AGB_GetBoxMonData
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0xf
	add r2, sp, #8
	bl SetBoxMonData
	add r0, r6, #0
	mov r1, #0x1d
	mov r2, #0
	bl AGB_GetBoxMonData
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x10
	add r2, sp, #8
	bl SetBoxMonData
	add r0, r6, #0
	mov r1, #0x1e
	mov r2, #0
	bl AGB_GetBoxMonData
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x11
	add r2, sp, #8
	bl SetBoxMonData
	add r0, r6, #0
	mov r1, #0x1f
	mov r2, #0
	bl AGB_GetBoxMonData
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x12
	add r2, sp, #8
	bl SetBoxMonData
	add r0, r6, #0
	mov r1, #0x16
	mov r2, #0
	bl AGB_GetBoxMonData
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x13
	add r2, sp, #8
	bl SetBoxMonData
	add r0, r6, #0
	mov r1, #0x17
	mov r2, #0
	bl AGB_GetBoxMonData
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x14
	add r2, sp, #8
	bl SetBoxMonData
	add r0, r6, #0
	mov r1, #0x18
	mov r2, #0
	bl AGB_GetBoxMonData
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x15
	add r2, sp, #8
	bl SetBoxMonData
	add r0, r6, #0
	mov r1, #0x21
	mov r2, #0
	bl AGB_GetBoxMonData
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x16
	add r2, sp, #8
	bl SetBoxMonData
	add r0, r6, #0
	mov r1, #0x2f
	mov r2, #0
	bl AGB_GetBoxMonData
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x17
	add r2, sp, #8
	bl SetBoxMonData
	add r0, r6, #0
	mov r1, #0x30
	mov r2, #0
	bl AGB_GetBoxMonData
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x18
	add r2, sp, #8
	bl SetBoxMonData
	mov r5, #0
	add r7, r5, #0
_02234C8E:
	add r1, r5, #0
	add r0, r6, #0
	add r1, #0xd
	mov r2, #0
	bl AGB_GetBoxMonData
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, #0x36
	add r2, sp, #8
	bl SetBoxMonData
	add r0, r6, #0
	mov r1, #0x15
	mov r2, #0
	bl AGB_GetBoxMonData
	mov r1, #3
	lsl r1, r7
	str r0, [sp, #8]
	and r0, r1
	lsr r0, r7
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, #0x3e
	add r2, sp, #8
	bl SetBoxMonData
	add r1, r5, #0
	add r0, r4, #0
	add r1, #0x42
	mov r2, #0
	bl GetBoxMonData
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, #0x3a
	add r2, sp, #8
	bl SetBoxMonData
	add r5, r5, #1
	add r7, r7, #2
	cmp r5, #4
	blt _02234C8E
	add r0, r6, #0
	mov r1, #0x27
	mov r2, #0
	bl AGB_GetBoxMonData
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x46
	add r2, sp, #8
	bl SetBoxMonData
	add r0, r6, #0
	mov r1, #0x28
	mov r2, #0
	bl AGB_GetBoxMonData
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x47
	add r2, sp, #8
	bl SetBoxMonData
	add r0, r6, #0
	mov r1, #0x29
	mov r2, #0
	bl AGB_GetBoxMonData
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x48
	add r2, sp, #8
	bl SetBoxMonData
	add r0, r6, #0
	mov r1, #0x2a
	mov r2, #0
	bl AGB_GetBoxMonData
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x49
	add r2, sp, #8
	bl SetBoxMonData
	add r0, r6, #0
	mov r1, #0x2b
	mov r2, #0
	bl AGB_GetBoxMonData
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x4a
	add r2, sp, #8
	bl SetBoxMonData
	add r0, r6, #0
	mov r1, #0x2c
	mov r2, #0
	bl AGB_GetBoxMonData
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x4b
	add r2, sp, #8
	bl SetBoxMonData
	add r0, r6, #0
	mov r1, #0x2d
	mov r2, #0
	bl AGB_GetBoxMonData
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x4c
	add r2, sp, #8
	bl SetBoxMonData
	add r0, r6, #0
	mov r1, #0x32
	mov r2, #0
	bl AGB_GetBoxMonData
	add r7, r0, #0
	cmp r7, #4
	bgt _02234DB2
	mov r5, #0
	cmp r7, #0
	ble _02234DB2
_02234D9C:
	mov r0, #1
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, #0x4e
	add r2, sp, #8
	bl SetBoxMonData
	add r5, r5, #1
	cmp r5, r7
	blt _02234D9C
_02234DB2:
	add r0, r6, #0
	mov r1, #0x33
	mov r2, #0
	bl AGB_GetBoxMonData
	add r7, r0, #0
	cmp r7, #4
	bgt _02234DDE
	mov r5, #0
	cmp r7, #0
	ble _02234DDE
_02234DC8:
	mov r0, #1
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, #0x52
	add r2, sp, #8
	bl SetBoxMonData
	add r5, r5, #1
	cmp r5, r7
	blt _02234DC8
_02234DDE:
	add r0, r6, #0
	mov r1, #0x34
	mov r2, #0
	bl AGB_GetBoxMonData
	add r7, r0, #0
	cmp r7, #4
	bgt _02234E0A
	mov r5, #0
	cmp r7, #0
	ble _02234E0A
_02234DF4:
	mov r0, #1
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, #0x56
	add r2, sp, #8
	bl SetBoxMonData
	add r5, r5, #1
	cmp r5, r7
	blt _02234DF4
_02234E0A:
	add r0, r6, #0
	mov r1, #0x35
	mov r2, #0
	bl AGB_GetBoxMonData
	add r7, r0, #0
	cmp r7, #4
	bgt _02234E36
	mov r5, #0
	cmp r7, #0
	ble _02234E36
_02234E20:
	mov r0, #1
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, #0x5a
	add r2, sp, #8
	bl SetBoxMonData
	add r5, r5, #1
	cmp r5, r7
	blt _02234E20
_02234E36:
	add r0, r6, #0
	mov r1, #0x36
	mov r2, #0
	bl AGB_GetBoxMonData
	add r7, r0, #0
	cmp r7, #4
	bgt _02234E62
	mov r5, #0
	cmp r7, #0
	ble _02234E62
_02234E4C:
	mov r0, #1
	add r1, r5, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, #0x5e
	add r2, sp, #8
	bl SetBoxMonData
	add r5, r5, #1
	cmp r5, r7
	blt _02234E4C
_02234E62:
	add r0, r6, #0
	mov r1, #0x43
	mov r2, #0
	bl AGB_GetBoxMonData
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x62
	add r2, sp, #8
	bl SetBoxMonData
	add r0, r6, #0
	mov r1, #0x44
	mov r2, #0
	bl AGB_GetBoxMonData
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x63
	add r2, sp, #8
	bl SetBoxMonData
	add r0, r6, #0
	mov r1, #0x45
	mov r2, #0
	bl AGB_GetBoxMonData
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x64
	add r2, sp, #8
	bl SetBoxMonData
	add r0, r6, #0
	mov r1, #0x46
	mov r2, #0
	bl AGB_GetBoxMonData
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x65
	add r2, sp, #8
	bl SetBoxMonData
	add r0, r6, #0
	mov r1, #0x47
	mov r2, #0
	bl AGB_GetBoxMonData
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x66
	add r2, sp, #8
	bl SetBoxMonData
	add r0, r6, #0
	mov r1, #0x48
	mov r2, #0
	bl AGB_GetBoxMonData
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x67
	add r2, sp, #8
	bl SetBoxMonData
	add r0, r6, #0
	mov r1, #0x49
	mov r2, #0
	bl AGB_GetBoxMonData
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x68
	add r2, sp, #8
	bl SetBoxMonData
	add r0, r6, #0
	mov r1, #0x4a
	mov r2, #0
	bl AGB_GetBoxMonData
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x69
	add r2, sp, #8
	bl SetBoxMonData
	add r0, r6, #0
	mov r1, #0x4b
	mov r2, #0
	bl AGB_GetBoxMonData
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x6a
	add r2, sp, #8
	bl SetBoxMonData
	add r0, r6, #0
	mov r1, #0x4c
	mov r2, #0
	bl AGB_GetBoxMonData
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x6b
	add r2, sp, #8
	bl SetBoxMonData
	add r0, r6, #0
	mov r1, #0x4d
	mov r2, #0
	bl AGB_GetBoxMonData
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x6c
	add r2, sp, #8
	bl SetBoxMonData
	add r0, r6, #0
	mov r1, #0x4e
	mov r2, #0
	bl AGB_GetBoxMonData
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x6d
	add r2, sp, #8
	bl SetBoxMonData
	add r0, r6, #0
	mov r1, #0x50
	mov r2, #0
	bl AGB_GetBoxMonData
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x6e
	add r2, sp, #8
	bl SetBoxMonData
	add r0, r4, #0
	bl GetBoxMonGender
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x6f
	add r2, sp, #8
	bl SetBoxMonData
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl GetBoxMonData
	cmp r0, #0xc9
	bne _02234FDE
	mov r1, #0
	add r0, r6, #0
	add r2, r1, #0
	bl AGB_GetBoxMonData
	add r3, r0, #0
	mov r7, #3
	lsl r0, r7, #8
	and r0, r3
	lsr r1, r0, #6
	lsl r0, r7, #0x18
	and r0, r3
	lsr r5, r0, #0x12
	lsl r0, r7, #0x10
	and r0, r3
	lsr r0, r0, #0xc
	add r2, r3, #0
	orr r0, r5
	orr r0, r1
	and r2, r7
	str r3, [sp, #8]
	orr r0, r2
	mov r1, #0x1c
	bl _u32_div_f
	str r1, [sp, #8]
	add r0, r4, #0
	mov r1, #0x70
	add r2, sp, #8
	bl SetBoxMonData
_02234FDE:
	add r0, r4, #0
	mov r1, #5
	mov r2, #0
	bl GetBoxMonData
	ldr r1, _02235120 ; =0x00000182
	cmp r0, r1
	bne _0223502E
	ldr r0, _02235124 ; =gSystem + 0x60
	ldrb r0, [r0, #0xa]
	cmp r0, #5
	bhi _0223500E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02235002: ; jump table
	.short _0223500E - _02235002 - 2 ; case 0
	.short _0223500E - _02235002 - 2 ; case 1
	.short _0223500E - _02235002 - 2 ; case 2
	.short _02235020 - _02235002 - 2 ; case 3
	.short _02235014 - _02235002 - 2 ; case 4
	.short _0223501A - _02235002 - 2 ; case 5
_0223500E:
	mov r0, #0
	str r0, [sp, #8]
	b _02235024
_02235014:
	mov r0, #1
	str r0, [sp, #8]
	b _02235024
_0223501A:
	mov r0, #2
	str r0, [sp, #8]
	b _02235024
_02235020:
	mov r0, #3
	str r0, [sp, #8]
_02235024:
	add r0, r4, #0
	mov r1, #0x70
	add r2, sp, #8
	bl SetBoxMonData
_0223502E:
	add r0, r6, #0
	mov r1, #2
	add r2, sp, #0x24
	bl AGB_GetBoxMonData
	ldr r3, [sp, #4]
	add r0, sp, #0x24
	add r1, sp, #0xc
	mov r2, #0xc
	bl ConvertRSStringToDPStringInternational
	add r0, r4, #0
	mov r1, #0x76
	add r2, sp, #0xc
	bl SetBoxMonData
	add r0, r6, #0
	mov r1, #3
	mov r2, #0
	bl AGB_GetBoxMonData
	ldr r1, _02235128 ; =gGameLanguage
	ldrb r1, [r1]
	cmp r1, r0
	beq _0223506E
	mov r0, #1
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x4d
	add r2, sp, #8
	bl SetBoxMonData
_0223506E:
	add r0, r6, #0
	mov r1, #0x25
	mov r2, #0
	bl AGB_GetBoxMonData
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x7a
	add r2, sp, #8
	bl SetBoxMonData
	add r0, r6, #0
	mov r1, #7
	add r2, sp, #0x24
	bl AGB_GetBoxMonData
	ldr r3, [sp, #4]
	add r0, sp, #0x24
	add r1, sp, #0xc
	mov r2, #8
	bl ConvertRSStringToDPStringInternational
	add r0, r4, #0
	mov r1, #0x90
	add r2, sp, #0xc
	bl SetBoxMonData
	add r0, r6, #0
	mov r1, #0x23
	mov r2, #0
	bl AGB_GetBoxMonData
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x99
	add r2, sp, #8
	bl SetBoxMonData
	add r0, r6, #0
	mov r1, #0x22
	mov r2, #0
	bl AGB_GetBoxMonData
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x9a
	add r2, sp, #8
	bl SetBoxMonData
	add r0, r6, #0
	mov r1, #0x26
	mov r2, #0
	bl AGB_GetBoxMonData
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x9b
	add r2, sp, #8
	bl SetBoxMonData
	add r0, r6, #0
	mov r1, #0x24
	mov r2, #0
	bl AGB_GetBoxMonData
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x9c
	add r2, sp, #8
	bl SetBoxMonData
	add r0, r6, #0
	mov r1, #0x31
	mov r2, #0
	bl AGB_GetBoxMonData
	str r0, [sp, #8]
	add r0, r4, #0
	mov r1, #0x9d
	add r2, sp, #8
	bl SetBoxMonData
	ldr r1, [sp]
	add r0, r4, #0
	bl ReleaseBoxMonLock
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02235120: .word 0x00000182
_02235124: .word gSystem + 0x60
_02235128: .word gGameLanguage
	thumb_func_end MigrateBoxMon

