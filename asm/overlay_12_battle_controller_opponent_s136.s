#include "constants/pokemon.h"
#include "constants/sndseq.h"
	.include "macros.inc"
	.include "overlay_12_battle_controller_opponent.inc"
	.include "global.inc"
	.public ov12_0225DAD4

	.text

	.text
	thumb_func_start ov12_0225DAD4
ov12_0225DAD4: ; 0x0225DAD4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x58
	add r4, r1, #0
	add r7, r0, #0
	ldr r0, [r4]
	bl BattleSystem_GetBgConfig
	ldr r0, [r4]
	bl BattleSystem_GetBattleInput
	add r6, r0, #0
	ldrb r1, [r4, #9]
	ldr r0, [r4]
	bl BattleSystem_GetOpponentData
	str r0, [sp, #0xc]
	ldr r0, [r4]
	bl BattleSystem_GetBattleType
	add r5, r0, #0
	ldrb r1, [r4, #9]
	ldr r0, [r4]
	bl BattleSystem_GetBattlerIdPartner
	add r1, r0, #0
	ldrb r0, [r4, #9]
	cmp r1, r0
	beq _0225DB16
	ldr r0, [r4]
	bl BattleSystem_GetHpBar
	str r0, [sp, #8]
	b _0225DB1A
_0225DB16:
	mov r0, #0
	str r0, [sp, #8]
_0225DB1A:
	ldrb r0, [r4, #0xa]
	cmp r0, #8
	bls _0225DB22
	b _0225E0FA
_0225DB22:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225DB2E: ; jump table
	.short _0225DB40 - _0225DB2E - 2 ; case 0
	.short _0225DB7C - _0225DB2E - 2 ; case 1
	.short _0225DC6A - _0225DB2E - 2 ; case 2
	.short _0225DC80 - _0225DB2E - 2 ; case 3
	.short _0225DC92 - _0225DB2E - 2 ; case 4
	.short _0225DED4 - _0225DB2E - 2 ; case 5
	.short _0225DF40 - _0225DB2E - 2 ; case 6
	.short _0225E06E - _0225DB2E - 2 ; case 7
	.short _0225E0D0 - _0225DB2E - 2 ; case 8
_0225DB40:
	mov r0, #0
	add r1, r4, #0
	add r2, sp, #0x40
_0225DB46:
	ldrh r3, [r1, #0x24]
	add r1, r1, #2
	strh r3, [r2]
	add r3, r4, r0
	add r3, #0x2c
	ldrb r3, [r3]
	strh r3, [r2, #8]
	add r3, r4, r0
	add r3, #0x30
	ldrb r3, [r3]
	add r0, r0, #1
	strh r3, [r2, #0x10]
	add r2, r2, #2
	cmp r0, #4
	blt _0225DB46
	ldr r0, [r4]
	bl BattleSystem_GetBattleInput
	add r1, r4, #0
	add r1, #0x34
	ldrb r1, [r1]
	add r2, sp, #0x40
	bl BattleInput_LoadFightMenuText
	ldrb r0, [r4, #0xa]
	add r0, r0, #1
	strb r0, [r4, #0xa]
_0225DB7C:
	ldr r0, [r4]
	bl BattleSystem_GetMessageLoader
	add r6, r0, #0
	mov r0, #1
	lsl r0, r0, #0xa
	add r1, r5, #0
	tst r1, r0
	beq _0225DC00
	ldr r0, [r4]
	bl ov12_0223BB04
	cmp r0, #0
	beq _0225DBA0
	cmp r0, #1
	beq _0225DBCC
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
_0225DBA0:
	mov r0, #2
	add r1, sp, #0x10
	strb r0, [r1, #0xd]
	add r0, r4, #0
	add r0, #0x23
	ldrb r0, [r0]
	ldrb r2, [r4, #9]
	mov r3, #0
	lsl r0, r0, #8
	orr r0, r2
	str r0, [sp, #0x20]
	ldr r0, _0225DED8 ; =0x00000399
	add r2, sp, #0x1c
	strh r0, [r1, #0xe]
	ldr r0, [r4]
	add r1, r6, #0
	bl BattleSystem_PrintBattleMessage
	mov r0, #3
	add sp, #0x58
	strb r0, [r4, #0xa]
	pop {r3, r4, r5, r6, r7, pc}
_0225DBCC:
	mov r1, #0
	add r0, sp, #0x10
	strb r1, [r0, #0xd]
	ldr r0, [r4]
	bl BattleSystem_GetTrainerGender
	ldr r1, _0225DEDC ; =0x000004CA
	add r1, r0, r1
	add r0, sp, #0x10
	strh r1, [r0, #0xe]
	ldr r0, [r4]
	bl BattleSystem_GetTextFrameDelay
	add r3, r0, #0
	ldr r0, [r4]
	add r1, r6, #0
	add r2, sp, #0x1c
	bl BattleSystem_PrintBattleMessage
	add r1, r4, #0
	add r1, #0x35
	strb r0, [r1]
	mov r0, #2
	add sp, #0x58
	strb r0, [r4, #0xa]
	pop {r3, r4, r5, r6, r7, pc}
_0225DC00:
	mov r1, #0x20
	add r2, r5, #0
	tst r2, r1
	beq _0225DC20
	mov r1, #8
	add r0, sp, #0x10
	strb r1, [r0, #0xd]
	ldrb r1, [r4, #9]
	ldr r0, [r4]
	bl BattleSystem_GetTrainerIndex
	str r0, [sp, #0x20]
	ldr r1, _0225DEE0 ; =0x0000039A
	add r0, sp, #0x10
	strh r1, [r0, #0xe]
	b _0225DC56
_0225DC20:
	lsl r1, r1, #4
	tst r1, r5
	beq _0225DC3E
	mov r1, #8
	add r0, sp, #0x10
	strb r1, [r0, #0xd]
	ldrb r1, [r4, #9]
	ldr r0, [r4]
	bl BattleSystem_GetTrainerIndex
	str r0, [sp, #0x20]
	ldr r1, _0225DEE4 ; =0x000004C6
	add r0, sp, #0x10
	strh r1, [r0, #0xe]
	b _0225DC56
_0225DC3E:
	add r2, r4, #0
	mov r1, #2
	add r3, sp, #0x10
	strb r1, [r3, #0xd]
	add r2, #0x23
	ldrb r2, [r2]
	ldrb r1, [r4, #9]
	sub r0, #0x67
	lsl r2, r2, #8
	orr r1, r2
	str r1, [sp, #0x20]
	strh r0, [r3, #0xe]
_0225DC56:
	ldr r0, [r4]
	add r1, r6, #0
	add r2, sp, #0x1c
	mov r3, #0
	bl BattleSystem_PrintBattleMessage
	mov r0, #3
	add sp, #0x58
	strb r0, [r4, #0xa]
	pop {r3, r4, r5, r6, r7, pc}
_0225DC6A:
	add r0, r4, #0
	add r0, #0x35
	ldrb r0, [r0]
	bl TextPrinterCheckActive
	cmp r0, #0
	bne _0225DC9C
	mov r0, #3
	add sp, #0x58
	strb r0, [r4, #0xa]
	pop {r3, r4, r5, r6, r7, pc}
_0225DC80:
	ldr r0, [r4, #4]
	bl ov12_02264E84
	ldr r0, [sp, #0xc]
	ldr r1, [r4]
	bl ov12_02261FD4
	mov r0, #4
	strb r0, [r4, #0xa]
_0225DC92:
	add r0, r6, #0
	bl BattleInput_CheckFeedbackDone
	cmp r0, #0
	bne _0225DC9E
_0225DC9C:
	b _0225E0FA
_0225DC9E:
	mov r0, #7
	mov r1, #5
	bl NARC_New
	add r7, r0, #0
	mov r0, #8
	mov r1, #5
	bl NARC_New
	add r5, r0, #0
	ldrb r1, [r4, #9]
	add r0, sp, #0x10
	add r2, r4, #0
	strb r1, [r0, #1]
	add r1, r4, #0
	add r1, #0x34
	ldrb r1, [r1]
	add r2, #0x3b
	strb r1, [r0]
	add r1, r4, #0
	add r1, #0x23
	ldrb r1, [r1]
	strb r1, [r0, #2]
	mov r1, #0x36
	ldrsh r1, [r4, r1]
	strh r1, [r0, #4]
	ldrh r1, [r4, #0x38]
	strh r1, [r0, #6]
	add r1, r4, #0
	add r1, #0x3a
	ldrb r1, [r1]
	strb r1, [r0, #3]
	ldrb r1, [r4, #9]
	ldrb r2, [r2]
	ldr r0, [r4]
	bl ov12_0223B580
	add r1, sp, #0x10
	strb r0, [r1, #8]
	ldr r1, _0225DEE8 ; =0x00000197
	ldr r0, [sp, #0xc]
	ldrb r0, [r0, r1]
	cmp r0, #0
	beq _0225DDD2
	add r0, r6, #0
	mov r1, #1
	bl BattleInput_Deadstriped_022698AC
	ldr r0, [r4]
	bl BattleSystem_GetBattleSpecial
	mov r1, #1
	tst r0, r1
	beq _0225DD20
	mov r0, #0
	str r0, [sp]
	add r0, sp, #0x10
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #6
	bl BattleInput_ChangeMenu
	b _0225DDC8
_0225DD20:
	ldr r0, [r4]
	bl BattleSystem_GetBattleType
	mov r1, #2
	lsl r1, r1, #8
	tst r0, r1
	beq _0225DD44
	mov r0, #0
	str r0, [sp]
	add r0, sp, #0x10
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #0xa
	bl BattleInput_ChangeMenu
	b _0225DDC8
_0225DD44:
	ldr r0, [r4]
	bl BattleSystem_GetBattleType
	mov r1, #0x20
	tst r0, r1
	beq _0225DD66
	mov r0, #0
	str r0, [sp]
	add r0, sp, #0x10
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #8
	bl BattleInput_ChangeMenu
	b _0225DDC8
_0225DD66:
	ldr r0, [r4]
	bl BattleSystem_GetBattleType
	mov r1, #1
	lsl r1, r1, #0xc
	tst r0, r1
	beq _0225DD8A
	mov r0, #0
	str r0, [sp]
	add r0, sp, #0x10
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #0x14
	bl BattleInput_ChangeMenu
	b _0225DDC8
_0225DD8A:
	add r0, sp, #0x10
	ldrb r0, [r0]
	cmp r0, #4
	bne _0225DDB4
	ldr r0, [r4]
	bl BattleSystem_GetBattleType
	mov r1, #8
	tst r0, r1
	bne _0225DDB4
	mov r0, #0
	str r0, [sp]
	add r0, sp, #0x10
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #4
	bl BattleInput_ChangeMenu
	b _0225DDC8
_0225DDB4:
	mov r0, #0
	str r0, [sp]
	add r0, sp, #0x10
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #3
	bl BattleInput_ChangeMenu
_0225DDC8:
	ldr r0, [r4]
	mov r1, #1
	bl ov12_0223BB64
	b _0225DE98
_0225DDD2:
	ldr r0, [r4]
	bl BattleSystem_GetBattleSpecial
	mov r1, #1
	tst r0, r1
	beq _0225DDF4
	mov r0, #0
	str r0, [sp]
	add r0, sp, #0x10
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #5
	bl BattleInput_ChangeMenu
	b _0225DE90
_0225DDF4:
	ldr r0, [r4]
	bl BattleSystem_GetBattleType
	mov r1, #2
	lsl r1, r1, #8
	tst r0, r1
	beq _0225DE18
	mov r0, #0
	str r0, [sp]
	add r0, sp, #0x10
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #9
	bl BattleInput_ChangeMenu
	b _0225DE90
_0225DE18:
	ldr r0, [r4]
	bl BattleSystem_GetBattleType
	mov r1, #0x20
	tst r0, r1
	beq _0225DE3A
	mov r0, #0
	str r0, [sp]
	add r0, sp, #0x10
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #7
	bl BattleInput_ChangeMenu
	b _0225DE90
_0225DE3A:
	ldr r0, [r4]
	bl BattleSystem_GetBattleType
	mov r1, #1
	lsl r1, r1, #0xc
	tst r0, r1
	beq _0225DE5E
	mov r0, #0
	str r0, [sp]
	add r0, sp, #0x10
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #0x13
	bl BattleInput_ChangeMenu
	b _0225DE90
_0225DE5E:
	add r0, sp, #0x10
	ldrb r0, [r0]
	cmp r0, #4
	beq _0225DE7C
	mov r0, #0
	str r0, [sp]
	add r0, sp, #0x10
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #1
	bl BattleInput_ChangeMenu
	b _0225DE90
_0225DE7C:
	mov r0, #0
	str r0, [sp]
	add r0, sp, #0x10
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r5, #0
	add r2, r6, #0
	mov r3, #2
	bl BattleInput_ChangeMenu
_0225DE90:
	ldr r1, _0225DEE8 ; =0x00000197
	ldr r0, [sp, #0xc]
	mov r2, #1
	strb r2, [r0, r1]
_0225DE98:
	add r1, r4, #0
	add r0, r6, #0
	add r1, #0x1c
	bl BattleInput_SetPartyExpPercents
	add r1, r4, #0
	add r2, r4, #0
	add r0, r6, #0
	add r1, #0x10
	add r2, #0x16
	bl BattleInput_UpdateBallGaugeAnimation
	add r0, r6, #0
	bl BattleInput_EnableBallGauge
	add r0, r7, #0
	bl NARC_Delete
	add r0, r5, #0
	bl NARC_Delete
	ldr r0, [sp, #8]
	cmp r0, #0
	beq _0225DECC
	bl ov12_02265D70
_0225DECC:
	mov r0, #5
	add sp, #0x58
	strb r0, [r4, #0xa]
	pop {r3, r4, r5, r6, r7, pc}
_0225DED4:
	ldr r0, _0225DEEC ; =gSystem
	b _0225DEF0
	.balign 4, 0
_0225DED8: .word 0x00000399
_0225DEDC: .word 0x000004CA
_0225DEE0: .word 0x0000039A
_0225DEE4: .word 0x000004C6
_0225DEE8: .word 0x00000197
_0225DEEC: .word gSystem
_0225DEF0:
	ldr r1, [r0, #0x48]
	mov r0, #8
	tst r0, r1
	beq _0225DF1E
	ldr r0, [r4]
	mov r5, #0
	bl BattleSystem_GetMaxBattlers
	cmp r0, #0
	ble _0225DF1E
_0225DF04:
	ldr r0, [r4]
	add r1, r5, #0
	bl BattleSystem_GetOpponentData
	add r0, #0x28
	bl ov12_02264C84
	ldr r0, [r4]
	add r5, r5, #1
	bl BattleSystem_GetMaxBattlers
	cmp r5, r0
	blt _0225DF04
_0225DF1E:
	add r0, r6, #0
	bl BattleInput_CheckTouch
	mov r1, #0
	mvn r1, r1
	str r0, [r4, #0xc]
	cmp r0, r1
	beq _0225DF50
	mov r0, #0xa
	strb r0, [r4, #0xb]
	ldr r0, _0225E100 ; =0x000005DD
	bl PlaySE
	mov r0, #6
	add sp, #0x58
	strb r0, [r4, #0xa]
	pop {r3, r4, r5, r6, r7, pc}
_0225DF40:
	add r0, r6, #0
	bl BattleInput_CheckFeedbackDone
	cmp r0, #1
	beq _0225DF52
	ldr r0, [r4, #0xc]
	cmp r0, #1
	beq _0225DF52
_0225DF50:
	b _0225E0FA
_0225DF52:
	ldr r0, [r4, #0xc]
	cmp r0, #4
	bls _0225DF5A
	b _0225E062
_0225DF5A:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225DF66: ; jump table
	.short _0225E062 - _0225DF66 - 2 ; case 0
	.short _0225DF70 - _0225DF66 - 2 ; case 1
	.short _0225DF84 - _0225DF66 - 2 ; case 2
	.short _0225DFD0 - _0225DF66 - 2 ; case 3
	.short _0225E01C - _0225DF66 - 2 ; case 4
_0225DF70:
	ldr r0, [r4]
	bl BattleSystem_GetBattleType
	mov r1, #0x22
	lsl r1, r1, #4
	tst r0, r1
	beq _0225E066
	mov r0, #7
	strb r0, [r4, #0xa]
	b _0225E066
_0225DF84:
	mov r0, #7
	mov r1, #5
	bl NARC_New
	add r5, r0, #0
	mov r0, #8
	mov r1, #5
	bl NARC_New
	add r7, r0, #0
	mov r3, #0
	str r3, [sp]
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	str r3, [sp, #4]
	bl BattleInput_ChangeMenu
	add r0, r6, #0
	mov r1, #0
	bl BattleInput_Deadstriped_022698AC
	ldr r0, [sp, #8]
	bl ov12_02265D74
	ldr r0, [r4, #4]
	bl ov12_02264EB4
	ldr r0, [sp, #0xc]
	bl ov12_02262014
	add r0, r5, #0
	bl NARC_Delete
	add r0, r7, #0
	bl NARC_Delete
	b _0225E066
_0225DFD0:
	mov r0, #7
	mov r1, #5
	bl NARC_New
	add r5, r0, #0
	mov r0, #8
	mov r1, #5
	bl NARC_New
	add r7, r0, #0
	mov r3, #0
	str r3, [sp]
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	str r3, [sp, #4]
	bl BattleInput_ChangeMenu
	add r0, r6, #0
	mov r1, #0
	bl BattleInput_Deadstriped_022698AC
	ldr r0, [sp, #8]
	bl ov12_02265D74
	ldr r0, [r4, #4]
	bl ov12_02264EB4
	ldr r0, [sp, #0xc]
	bl ov12_02262014
	add r0, r5, #0
	bl NARC_Delete
	add r0, r7, #0
	bl NARC_Delete
	b _0225E066
_0225E01C:
	mov r0, #7
	mov r1, #5
	bl NARC_New
	add r7, r0, #0
	mov r0, #8
	mov r1, #5
	bl NARC_New
	add r5, r0, #0
	add r0, r6, #0
	bl BattleInput_GetCancelRunFlag
	cmp r0, #1
	bne _0225E044
	ldr r0, [sp, #8]
	bl ov12_02265D74
	mov r0, #0xff
	str r0, [r4, #0xc]
_0225E044:
	mov r3, #0
	str r3, [sp]
	add r0, r7, #0
	add r1, r5, #0
	add r2, r6, #0
	str r3, [sp, #4]
	bl BattleInput_ChangeMenu
	add r0, r7, #0
	bl NARC_Delete
	add r0, r5, #0
	bl NARC_Delete
	b _0225E066
_0225E062:
	bl GF_AssertFail
_0225E066:
	mov r0, #8
	add sp, #0x58
	strb r0, [r4, #0xa]
	pop {r3, r4, r5, r6, r7, pc}
_0225E06E:
	add r0, r6, #0
	bl BattleInput_CheckFeedbackDone
	cmp r0, #1
	bne _0225E0FA
	mov r0, #7
	mov r1, #5
	bl NARC_New
	add r5, r0, #0
	mov r0, #8
	mov r1, #5
	bl NARC_New
	add r7, r0, #0
	mov r3, #0
	str r3, [sp]
	add r0, r5, #0
	add r1, r7, #0
	add r2, r6, #0
	str r3, [sp, #4]
	bl BattleInput_ChangeMenu
	add r0, r6, #0
	mov r1, #0
	bl BattleInput_Deadstriped_022698AC
	ldr r0, [sp, #8]
	bl ov12_02265D74
	ldr r0, [r4, #4]
	bl ov12_02264EB4
	ldr r0, [sp, #0xc]
	bl ov12_02262014
	add r0, r6, #0
	bl BattleInput_DisableBallGauge
	mov r0, #8
	strb r0, [r4, #0xa]
	add r0, r5, #0
	bl NARC_Delete
	add r0, r7, #0
	bl NARC_Delete
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
_0225E0D0:
	add r0, r6, #0
	bl ov12_022698B0
	cmp r0, #1
	bne _0225E0FA
	ldrb r1, [r4, #9]
	ldr r0, [r4]
	ldr r2, [r4, #0xc]
	bl ov12_02262F24
	ldrb r1, [r4, #9]
	ldrb r2, [r4, #8]
	ldr r0, [r4]
	bl ov12_0226430C
	add r0, r4, #0
	bl Heap_Free
	add r0, r7, #0
	bl SysTask_Destroy
_0225E0FA:
	add sp, #0x58
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0225E100: .word 0x000005DD
	thumb_func_end ov12_0225DAD4

