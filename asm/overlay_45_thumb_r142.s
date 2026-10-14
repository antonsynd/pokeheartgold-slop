#include "config.h"
	.include "macros.inc"
	.include "overlay_45_thumb.inc"
	.include "global.inc"
	.public ov45_0222B8A0
	.extern ov45_0222BAC4
	.extern ov45_0222CCE4

	.text

	.text
	thumb_func_start ov45_0222B8A0
ov45_0222B8A0: ; 0x0222B8A0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	str r1, [sp]
	add r0, r1, #0
	add r4, r2, #0
	bl Save_PlayerData_GetProfile
	str r0, [sp, #0x18]
	ldr r0, [sp]
	bl SaveArray_Party_Get
	str r0, [sp, #0x14]
	ldr r0, [sp]
	bl Save_Pokedex_Get
	str r0, [sp, #0xc]
	ldr r0, [sp]
	bl Save_WiFiHistory_Get
	str r0, [sp, #0x10]
	ldr r0, [sp]
	bl Save_SysInfo_RTC_Get
	str r0, [sp, #8]
	ldr r0, [sp, #0x18]
	add r1, r4, #0
	bl PlayerProfile_GetPlayerName_NewString
	add r1, r5, #0
	add r4, r0, #0
	add r1, #0x28
	mov r2, #8
	bl CopyStringToU16Array
	add r0, r4, #0
	add r1, r5, #0
	mov r2, #8
	bl CopyStringToU16Array
	add r0, r4, #0
	bl String_Delete
	mov r0, #0
	mvn r0, r0
	str r0, [r5, #0x20]
	ldr r0, [sp, #0x18]
	bl PlayerProfile_GetTrainerID
	str r0, [r5, #0x24]
	ldr r0, [sp, #0x14]
	bl Party_GetCount
	str r0, [sp, #4]
	mov r4, #0
	add r6, r5, #0
_0222B910:
	ldr r0, [sp, #4]
	cmp r4, r0
	bge _0222B950
	ldr r0, [sp, #0x14]
	add r1, r4, #0
	bl Party_GetMonByIndex
	mov r1, #5
	mov r2, #0
	add r7, r0, #0
	bl GetMonData
	add r1, r6, #0
	add r1, #0x40
	strh r0, [r1]
	add r0, r7, #0
	mov r1, #0x70
	mov r2, #0
	bl GetMonData
	add r1, r5, r4
	add r1, #0x4c
	strb r0, [r1]
	add r0, r7, #0
	mov r1, #0x4c
	mov r2, #0
	bl GetMonData
	add r1, r5, r4
	add r1, #0x52
	strb r0, [r1]
	b _0222B958
_0222B950:
	add r1, r6, #0
	ldr r0, _0222BA38 ; =0x000001EF
	add r1, #0x40
	strh r0, [r1]
_0222B958:
	add r4, r4, #1
	add r6, r6, #2
	cmp r4, #6
	blt _0222B910
	ldr r0, [sp, #0x18]
	bl PlayerProfile_GetTrainerGender
	add r1, r5, #0
	add r1, #0x58
	strb r0, [r1]
	ldr r0, [sp, #0x18]
	bl PlayerProfile_GetLanguage
	add r1, r5, #0
	add r1, #0x59
	strb r0, [r1]
	ldr r0, [sp, #0x18]
	bl PlayerProfile_GetAvatar
	add r1, r5, #0
	add r1, #0x5a
	strh r0, [r1]
	add r0, r5, #0
	add r0, #0x5a
	ldrh r0, [r0]
	bl ov45_0222CCE4
	add r1, r5, #0
	add r1, #0x5a
	strh r0, [r1]
	ldr r0, [sp, #0x10]
	bl WifiHistory_GetPlayerCountry
	add r1, r5, #0
	add r1, #0x5c
	strh r0, [r1]
	ldr r0, [sp, #0x10]
	bl WiFiHistory_GetPlayerRegion
	add r1, r5, #0
	add r1, #0x5e
	strb r0, [r1]
	ldr r0, [sp, #0xc]
	bl Pokedex_GetNatDexFlag
	add r1, r5, #0
	add r1, #0x5f
	strb r0, [r1]
	ldr r0, [sp, #0x18]
	bl PlayerProfile_GetGameClearFlag
	add r1, r5, #0
	add r1, #0x60
	strb r0, [r1]
	add r0, r5, #0
	mov r1, #0xff
	add r0, #0x61
	strb r1, [r0]
	add r1, r5, #0
	mov r0, #0
	add r1, #0x63
	strb r0, [r1]
	add r1, r5, #0
	mov r2, #GAME_VERSION
	add r1, #0x62
	strb r2, [r1]
	ldr r1, [sp, #8]
	add r4, r5, #0
	add r1, #0x24
	str r1, [sp, #8]
	ldmia r1!, {r2, r3}
	str r1, [sp, #8]
	add r1, r5, #0
	add r1, #0x64
	stmia r1!, {r2, r3}
	mov r3, #0x18
	add r2, r3, #0
	sub r2, #0x19
_0222B9F4:
	add r1, r5, r0
	add r1, #0x6c
	strb r3, [r1]
	str r2, [r4, #0x78]
	add r0, r0, #1
	add r4, r4, #4
	cmp r0, #0xc
	blt _0222B9F4
	mov r2, #0
	add r3, r5, #0
	add r1, r2, #0
_0222BA0A:
	add r0, r3, #0
	add r0, #0xa8
	add r2, r2, #1
	add r3, r3, #2
	strh r1, [r0]
	cmp r2, #2
	blt _0222BA0A
	mov r1, #0
	add r0, r5, #0
	mvn r1, r1
	add r0, #0xac
	str r1, [r0]
	add r0, r5, #0
	mov r1, #3
	add r0, #0xb0
	str r1, [r0]
	ldr r1, [sp]
	add r0, r5, #0
	bl ov45_0222BAC4
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_0222BA38: .word 0x000001EF
	thumb_func_end ov45_0222B8A0

