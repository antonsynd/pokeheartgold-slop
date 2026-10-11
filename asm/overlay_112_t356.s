#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021F0DF4
	.public ov112_021F0E14
	.public ov112_021F0E60
	.public ov112_021F0EB4
	.public ov112_021F0EFC
	.public ov112_021F0F48
	.public ov112_021F0F60
	.public ov112_021F0F70
	.public ov112_021F0F90
	.public ov112_021F1288
	.extern ov112_021FF2DC
	.extern ov112_021FF350
	.extern ov112_021FF370
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021F0DF4
ov112_021F0DF4: ; 0x021F0DF4
	push {r4, lr}
	sub sp, #0x28
	ldr r4, _021F0E10 ; =ov112_021FF370
	add r3, sp, #0
	mov r2, #5
_021F0DFE:
	ldmia r4!, {r0, r1}
	stmia r3!, {r0, r1}
	sub r2, r2, #1
	bne _021F0DFE
	add r0, sp, #0
	bl GfGfx_SetBanks
	add sp, #0x28
	pop {r4, pc}
	.balign 4, 0
_021F0E10: .word ov112_021FF370
	thumb_func_end ov112_021F0DF4

	thumb_func_start ov112_021F0E14
ov112_021F0E14: ; 0x021F0E14
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	cmp r5, #0
	ble _021F0E26
	ldr r1, _021F0E58 ; =0x000001ED
	cmp r5, r1
	ble _021F0E2A
_021F0E26:
	mov r4, #1
	b _021F0E52
_021F0E2A:
	bl SpeciesToOverworldModelIndexOffset
	ldr r1, _021F0E5C ; =0x00000129
	add r4, r0, r1
	add r0, r5, #0
	bl OverworldModelLookupHasFemaleForm
	cmp r0, #0
	beq _021F0E44
	cmp r7, #1
	bne _021F0E52
	add r4, r4, #1
	b _021F0E52
_021F0E44:
	add r0, r5, #0
	bl OverworldModelLookupFormCount
	cmp r6, r0
	ble _021F0E50
	mov r6, #0
_021F0E50:
	add r4, r4, r6
_021F0E52:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F0E58: .word 0x000001ED
_021F0E5C: .word 0x00000129
	thumb_func_end ov112_021F0E14

	thumb_func_start ov112_021F0E60
ov112_021F0E60: ; 0x021F0E60
	push {r3, r4, lr}
	sub sp, #4
	ldr r2, _021F0EA8 ; =ov112_021FF2DC
	add r4, r0, #0
	ldrb r3, [r2, #0xb]
	add r1, sp, #0
	add r0, sp, #0
	strb r3, [r1]
	ldrb r3, [r2, #0xc]
	strb r3, [r1, #1]
	ldrb r3, [r2, #0xd]
	ldrb r2, [r2, #0xe]
	strb r3, [r1, #2]
	strb r2, [r1, #3]
	bl TouchscreenHitbox_TouchNewIsIn
	cmp r0, #0
	bne _021F0E8E
	ldr r0, _021F0EAC ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #2
	tst r0, r1
	beq _021F0EA0
_021F0E8E:
	ldr r0, _021F0EB0 ; =0x000005DC
	bl PlaySE
	ldr r0, [r4, #0x78]
	bl ManagedSprite_ResetSpriteAnimCtrlState
	add sp, #4
	mov r0, #1
	pop {r3, r4, pc}
_021F0EA0:
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	nop
_021F0EA8: .word ov112_021FF2DC
_021F0EAC: .word gSystem
_021F0EB0: .word 0x000005DC
	thumb_func_end ov112_021F0E60

	thumb_func_start ov112_021F0EB4
ov112_021F0EB4: ; 0x021F0EB4
	push {r3, lr}
	ldr r1, _021F0EF0 ; =0x0000013D
	ldrb r0, [r0, r1]
	cmp r0, #0
	beq _021F0EEA
	ldr r2, _021F0EF4 ; =ov112_021FF2DC
	add r1, sp, #0
	ldrb r3, [r2, #3]
	add r0, sp, #0
	strb r3, [r1]
	ldrb r3, [r2, #4]
	strb r3, [r1, #1]
	ldrb r3, [r2, #5]
	ldrb r2, [r2, #6]
	strb r3, [r1, #2]
	strb r2, [r1, #3]
	bl TouchscreenHitbox_TouchNewIsIn
	cmp r0, #0
	bne _021F0EE6
	ldr r0, _021F0EF8 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #0x20
	tst r0, r1
	beq _021F0EEA
_021F0EE6:
	mov r0, #1
	pop {r3, pc}
_021F0EEA:
	mov r0, #0
	pop {r3, pc}
	nop
_021F0EF0: .word 0x0000013D
_021F0EF4: .word ov112_021FF2DC
_021F0EF8: .word gSystem
	thumb_func_end ov112_021F0EB4

	thumb_func_start ov112_021F0EFC
ov112_021F0EFC: ; 0x021F0EFC
	push {r3, lr}
	ldr r1, _021F0F3C ; =0x0000013D
	ldrb r2, [r0, r1]
	add r1, r1, #1
	ldrb r0, [r0, r1]
	sub r0, r0, #1
	cmp r2, r0
	bge _021F0F38
	ldr r2, _021F0F40 ; =ov112_021FF2DC
	add r1, sp, #0
	ldrb r3, [r2, #7]
	add r0, sp, #0
	strb r3, [r1]
	ldrb r3, [r2, #8]
	strb r3, [r1, #1]
	ldrb r3, [r2, #9]
	ldrb r2, [r2, #0xa]
	strb r3, [r1, #2]
	strb r2, [r1, #3]
	bl TouchscreenHitbox_TouchNewIsIn
	cmp r0, #0
	bne _021F0F34
	ldr r0, _021F0F44 ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #0x10
	tst r0, r1
	beq _021F0F38
_021F0F34:
	mov r0, #1
	pop {r3, pc}
_021F0F38:
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0
_021F0F3C: .word 0x0000013D
_021F0F40: .word ov112_021FF2DC
_021F0F44: .word gSystem
	thumb_func_end ov112_021F0EFC

	thumb_func_start ov112_021F0F48
ov112_021F0F48: ; 0x021F0F48
	cmp r1, #0
	beq _021F0F56
	add r0, #0x85
	ldrb r0, [r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	bx lr
_021F0F56:
	add r0, #0x86
	ldrb r0, [r0]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x1f
	bx lr
	thumb_func_end ov112_021F0F48

	thumb_func_start ov112_021F0F60
ov112_021F0F60: ; 0x021F0F60
	add r0, #0x76
	ldrb r0, [r0]
	cmp r0, #8
	blo _021F0F6A
	mov r0, #0
_021F0F6A:
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bx lr
	thumb_func_end ov112_021F0F60

	thumb_func_start ov112_021F0F70
ov112_021F0F70: ; 0x021F0F70
	ldr r1, [r1]
	ldr r0, [r0]
	ldr r1, [r1]
	ldr r0, [r0]
	cmp r0, r1
	bne _021F0F80
	mov r0, #0
	bx lr
_021F0F80:
	cmp r0, r1
	bls _021F0F88
	mov r0, #1
	bx lr
_021F0F88:
	mov r0, #0
	mvn r0, r0
	bx lr
	.balign 4, 0
	thumb_func_end ov112_021F0F70

	thumb_func_start ov112_021F0F90
ov112_021F0F90: ; 0x021F0F90
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0xc8
	add r5, r0, #0
	mov r0, #0
	add r6, sp, #8
	add r1, r0, #0
	add r2, r0, #0
	add r3, r0, #0
	mov r4, #6
_021F0FA2:
	stmia r6!, {r0, r1, r2, r3}
	stmia r6!, {r0, r1, r2, r3}
	sub r4, r4, #1
	bne _021F0FA2
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #4]
	cmp r5, #0
	bne _021F0FB8
	bl GF_AssertFail
_021F0FB8:
	ldr r0, [r5]
	cmp r0, #0
	bne _021F0FC2
	bl GF_AssertFail
_021F0FC2:
	ldr r0, [r5]
	ldr r0, [r0]
	bl Save_Pokewalker_Get
	ldr r0, [r5]
	ldr r0, [r0]
	bl Save_PlayerData_GetProfile
	add r4, r0, #0
	bl PlayerProfile_GetTrainerGender
	str r0, [r5, #0xc]
	add r0, r4, #0
	bl PlayerProfile_GetNamePtr
	mov r6, #0
	str r0, [r5, #8]
	add r7, r6, #0
_021F0FE6:
	ldr r0, [r5]
	ldr r0, [r0, #4]
	add r4, r0, r7
	ldrh r1, [r4, #8]
	ldr r0, _021F1268 ; =0x0000FFF9
	add r0, r1, r0
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	cmp r0, #1
	bhi _021F100A
	ldrh r1, [r4, #0xa]
	ldr r0, _021F126C ; =0x000001ED
	cmp r1, r0
	bhi _021F1008
	ldrh r1, [r4, #0xc]
	cmp r1, r0
	bls _021F100A
_021F1008:
	b _021F1122
_021F100A:
	add r0, r4, #0
	add r0, #0x84
	ldrb r0, [r0]
	cmp r0, #0x1c
	bgt _021F1026
	bge _021F1040
	cmp r0, #0xe
	bgt _021F1052
	cmp r0, #0xc
	blt _021F1052
	beq _021F102C
	cmp r0, #0xe
	beq _021F1036
	b _021F1052
_021F1026:
	cmp r0, #0x1d
	beq _021F104A
	b _021F1052
_021F102C:
	add r1, r4, #0
	add r1, #0x84
	mov r0, #0xb
	strb r0, [r1]
	b _021F1052
_021F1036:
	add r1, r4, #0
	add r1, #0x84
	mov r0, #0xd
	strb r0, [r1]
	b _021F1052
_021F1040:
	add r1, r4, #0
	add r1, #0x84
	mov r0, #0xc
	strb r0, [r1]
	b _021F1052
_021F104A:
	add r1, r4, #0
	add r1, #0x84
	mov r0, #0xe
	strb r0, [r1]
_021F1052:
	add r0, r4, #0
	add r0, #0x84
	ldrb r0, [r0]
	cmp r0, #0x1c
	blt _021F1060
	mov r0, #0
	b _021F10E6
_021F1060:
	cmp r0, #1
	blt _021F1074
	cmp r0, #0xa
	bgt _021F1074
	ldr r1, _021F1270 ; =0x00000143
	ldrb r1, [r5, r1]
	add r2, r1, #1
	ldr r1, _021F1270 ; =0x00000143
	strb r2, [r5, r1]
	b _021F10E6
_021F1074:
	cmp r0, #0xc
	bne _021F108A
	mov r1, #0x51
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	add r1, #0xbc
	orr r2, r1
	mov r1, #0x51
	lsl r1, r1, #2
	str r2, [r5, r1]
	b _021F10E6
_021F108A:
	cmp r0, #0xe
	bne _021F10A0
	mov r1, #0x51
	lsl r1, r1, #2
	ldr r2, [r5, r1]
	sub r1, #0x44
	orr r2, r1
	mov r1, #0x51
	lsl r1, r1, #2
	str r2, [r5, r1]
	b _021F10E6
_021F10A0:
	cmp r0, #0xb
	bne _021F10C2
	ldr r1, _021F1274 ; =0x0000013F
	ldrb r1, [r5, r1]
	cmp r1, #0
	bne _021F10E6
	ldr r1, _021F1278 ; =0x00000141
	ldrb r1, [r5, r1]
	add r2, r1, #1
	ldr r1, _021F1278 ; =0x00000141
	strb r2, [r5, r1]
	ldrb r1, [r5, r1]
	cmp r1, #4
	blo _021F10E6
	ldr r1, _021F1274 ; =0x0000013F
	strb r6, [r5, r1]
	b _021F10E6
_021F10C2:
	cmp r0, #0xd
	bne _021F10E6
	mov r1, #5
	lsl r1, r1, #6
	ldrb r1, [r5, r1]
	cmp r1, #0
	bne _021F10E6
	ldr r1, _021F127C ; =0x00000142
	ldrb r1, [r5, r1]
	add r2, r1, #1
	ldr r1, _021F127C ; =0x00000142
	strb r2, [r5, r1]
	ldrb r1, [r5, r1]
	cmp r1, #4
	blo _021F10E6
	mov r1, #5
	lsl r1, r1, #6
	strb r6, [r5, r1]
_021F10E6:
	cmp r0, #0
	beq _021F1122
	add r0, r4, #0
	add r0, #0x84
	ldrb r0, [r0]
	cmp r0, #0
	bne _021F10F8
	bl GF_AssertFail
_021F10F8:
	ldr r1, [r4]
	ldr r0, [sp, #4]
	cmp r0, r1
	bls _021F1102
	str r1, [sp, #4]
_021F1102:
	ldr r0, _021F1280 ; =0x0000013E
	ldrb r0, [r5, r0]
	lsl r1, r0, #3
	add r0, sp, #8
	str r4, [r0, r1]
	ldr r0, _021F1280 ; =0x0000013E
	ldrb r0, [r5, r0]
	lsl r1, r0, #3
	add r0, sp, #8
	add r0, r0, r1
	str r6, [r0, #4]
	ldr r0, _021F1280 ; =0x0000013E
	ldrb r0, [r5, r0]
	add r1, r0, #1
	ldr r0, _021F1280 ; =0x0000013E
	strb r1, [r5, r0]
_021F1122:
	add r6, r6, #1
	add r7, #0x88
	cmp r6, #0x18
	bge _021F112C
	b _021F0FE6
_021F112C:
	ldr r1, _021F1280 ; =0x0000013E
	mov r0, #0
	ldrb r3, [r5, r1]
	cmp r3, #0
	ble _021F116A
	add r2, sp, #8
_021F1138:
	ldr r1, [r2]
	add r1, #0x84
	ldrb r1, [r1]
	cmp r1, #0x19
	bne _021F1162
	add r6, sp, #8
	lsl r4, r0, #3
	ldr r0, [r6, r4]
	ldr r1, [r0]
	ldr r0, [sp, #4]
	cmp r1, r0
	bls _021F116A
	cmp r0, #0
	bne _021F1158
	bl GF_AssertFail
_021F1158:
	ldr r0, [sp, #4]
	sub r1, r0, #1
	ldr r0, [r6, r4]
	str r1, [r0]
	b _021F116A
_021F1162:
	add r0, r0, #1
	add r2, #8
	cmp r0, r3
	blt _021F1138
_021F116A:
	mov r0, #0
	str r0, [sp]
	ldr r1, _021F1280 ; =0x0000013E
	ldr r3, _021F1284 ; =ov112_021F0F70
	ldrb r1, [r5, r1]
	add r0, sp, #8
	mov r2, #8
	bl MATH_QSort
	ldr r0, _021F1280 ; =0x0000013E
	ldrb r4, [r5, r0]
	cmp r4, #2
	bhs _021F11A6
	sub r0, r4, #1
	lsl r1, r0, #3
	add r0, sp, #8
	ldr r0, [r0, r1]
	mov r2, #0
	add r0, #0x76
	strb r2, [r0]
	bl GF_RTC_DateTimeToSec
	ldr r1, _021F1280 ; =0x0000013E
	ldrb r1, [r5, r1]
	sub r1, r1, #1
	lsl r2, r1, #3
	add r1, sp, #8
	ldr r1, [r1, r2]
	str r0, [r1]
	b _021F11EA
_021F11A6:
	sub r1, r4, #2
	lsl r1, r1, #3
	add r3, sp, #8
	ldr r2, [r3, r1]
	sub r4, r4, #1
	add r1, r2, #0
	add r1, #0x76
	lsl r4, r4, #3
	ldr r4, [r3, r4]
	ldrb r1, [r1]
	add r4, #0x76
	strb r1, [r4]
	add r1, r2, #0
	add r1, #0x84
	ldrb r1, [r1]
	cmp r1, #0x1b
	bne _021F11DC
	ldrb r0, [r5, r0]
	mov r1, #0xe1
	ldr r2, [r2]
	sub r0, r0, #1
	lsl r0, r0, #3
	lsl r1, r1, #4
	ldr r0, [r3, r0]
	add r1, r2, r1
	str r1, [r0]
	b _021F11EA
_021F11DC:
	ldrb r0, [r5, r0]
	ldr r1, [r2]
	sub r0, r0, #1
	lsl r0, r0, #3
	ldr r0, [r3, r0]
	add r1, r1, #5
	str r1, [r0]
_021F11EA:
	ldr r0, _021F1280 ; =0x0000013E
	mov r1, #0
	ldrb r0, [r5, r0]
	add r2, r1, #0
	add r7, r1, #0
	cmp r0, #0
	ble _021F1232
	add r6, sp, #8
_021F11FA:
	ldr r0, [r6]
	add r3, r0, #0
	add r3, #0x84
	ldrb r3, [r3]
	add r4, r0, #0
	add r4, #0x78
	ldrh r4, [r4]
	cmp r3, #0x1b
	bne _021F1222
	cmp r1, #0x1b
	bne _021F1222
	mov r1, #0x4b
	lsl r1, r1, #2
	cmp r4, r1
	bge _021F1222
	cmp r2, r1
	bge _021F1222
	add r0, #0x84
	mov r1, #0
	strb r1, [r0]
_021F1222:
	ldr r0, _021F1280 ; =0x0000013E
	add r7, r7, #1
	ldrb r0, [r5, r0]
	add r1, r3, #0
	add r2, r4, #0
	add r6, #8
	cmp r7, r0
	blt _021F11FA
_021F1232:
	mov r1, #0
	add r4, r1, #0
	cmp r0, #0
	ble _021F1260
	ldr r6, _021F1280 ; =0x0000013E
	add r2, sp, #8
	add r3, r5, #0
_021F1240:
	ldr r0, [r2]
	add r7, r0, #0
	add r7, #0x84
	ldrb r7, [r7]
	cmp r7, #0
	beq _021F1256
	add r7, r3, #0
	add r7, #0xc0
	str r0, [r7]
	add r3, r3, #4
	add r1, r1, #1
_021F1256:
	ldrb r0, [r5, r6]
	add r4, r4, #1
	add r2, #8
	cmp r4, r0
	blt _021F1240
_021F1260:
	ldr r0, _021F1280 ; =0x0000013E
	strb r1, [r5, r0]
	add sp, #0xc8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F1268: .word 0x0000FFF9
_021F126C: .word 0x000001ED
_021F1270: .word 0x00000143
_021F1274: .word 0x0000013F
_021F1278: .word 0x00000141
_021F127C: .word 0x00000142
_021F1280: .word 0x0000013E
_021F1284: .word ov112_021F0F70
	thumb_func_end ov112_021F0F90

	thumb_func_start ov112_021F1288
ov112_021F1288: ; 0x021F1288
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bne _021F1292
	bl GF_AssertFail
_021F1292:
	ldr r0, [r5, #0x14]
	cmp r0, #0
	bne _021F129C
	bl GF_AssertFail
_021F129C:
	mov r1, #0x1b
	add r2, r1, #0
	ldr r3, [r5, #4]
	mov r0, #1
	add r2, #0xf8
	bl NewMsgDataFromNarc
	str r0, [r5, #0x5c]
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1b
	mov r2, #0xed
	bl NewMsgDataFromNarc
	str r0, [r5, #0x60]
	ldr r3, [r5, #4]
	mov r0, #1
	mov r1, #0x1b
	mov r2, #0xde
	bl NewMsgDataFromNarc
	str r0, [r5, #0x64]
	ldr r2, [r5, #4]
	mov r0, #0xd
	mov r1, #0x20
	bl MessageFormat_New_Custom
	add r4, r5, #0
	ldr r6, _021F1320 ; =ov112_021FF350
	str r0, [r5, #0x58]
	mov r7, #0
	add r4, #0x18
_021F12DC:
	ldr r0, [r5, #0x14]
	add r1, r4, #0
	add r2, r6, #0
	bl AddWindow
	add r7, r7, #1
	add r6, #8
	add r4, #0x10
	cmp r7, #4
	blt _021F12DC
	mov r2, #0
	str r2, [sp]
	ldr r0, [r5, #0x14]
	mov r1, #2
	mov r3, #1
	bl BG_FillCharDataRange
	mov r1, #7
	ldr r2, [r5, #4]
	mov r0, #0
	lsl r1, r1, #6
	bl LoadFontPal1
	mov r1, #7
	ldr r2, [r5, #4]
	mov r0, #4
	lsl r1, r1, #6
	bl LoadFontPal1
	ldr r1, [r5, #4]
	mov r0, #4
	bl FontID_Alloc
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021F1320: .word ov112_021FF350
	thumb_func_end ov112_021F1288

