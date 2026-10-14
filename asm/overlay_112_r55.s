#include "config.h"
	.include "macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021E7CC8
	.extern ov112_021E5D68
	.extern ov112_021E5EB8
	.extern ov112_021E73C8
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021E7CC8
ov112_021E7CC8: ; 0x021E7CC8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	bl Save_PlayerData_GetProfile
	mov r1, #0x9a
	bl PlayerProfile_GetPlayerName_NewString
	add r4, r0, #0
	ldr r1, _021E7D60 ; =0x00001024
	mov r0, #1
	str r0, [r5, r1]
	add r0, r1, #0
	mov r2, #GAME_VERSION
	add r0, #8
	strh r2, [r5, r0]
	add r0, r1, #0
	add r0, #0x5b
	ldrb r2, [r5, r0]
	mov r0, #1
	bic r2, r0
	add r0, r1, #0
	add r0, #0x5b
	strb r2, [r5, r0]
	mov r0, #0
	add r1, #0x5a
	strb r0, [r5, r1]
	ldr r0, _021E7D64 ; =0x0001E438
	ldr r0, [r5, r0]
	bl PlayerProfile_GetTrainerID
	ldr r1, _021E7D68 ; =0x00001030
	mov r2, #8
	str r0, [r5, r1]
	add r1, #0x3c
	add r0, r4, #0
	add r1, r5, r1
	bl CopyStringToU16Array
	ldr r0, _021E7D6C ; =0x00001028
	mov r1, #1
	str r1, [r5, r0]
	mov r1, #GAME_VERSION
	add r0, r0, #6
	strh r1, [r5, r0]
	ldr r0, _021E7D70 ; =0x0001E440
	ldr r0, [r5, r0]
	bl sub_02032728
	ldr r1, _021E7D74 ; =0x00001034
	mov r2, #0x28
	add r1, r5, r1
	bl MIi_CpuCopyFast
	add r0, r5, #0
	mov r1, #1
	add r0, #0x24
	lsl r1, r1, #0xc
	mov r2, #0xf
	bl ov112_021E73C8
	ldr r1, _021E7D60 ; =0x00001024
	add r0, r5, r1
	add r1, #0x68
	add r1, r5, r1
	bl ov112_021E5EB8
	ldr r0, _021E7D78 ; =0x00010834
	add r0, r5, r0
	bl ov112_021E5D68
	add r0, r4, #0
	bl String_Delete
	pop {r3, r4, r5, pc}
	nop
_021E7D60: .word 0x00001024
_021E7D64: .word 0x0001E438
_021E7D68: .word 0x00001030
_021E7D6C: .word 0x00001028
_021E7D70: .word 0x0001E440
_021E7D74: .word 0x00001034
_021E7D78: .word 0x00010834
	thumb_func_end ov112_021E7CC8

