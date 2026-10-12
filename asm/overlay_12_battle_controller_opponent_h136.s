#include "constants/pokemon.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_12_battle_controller_opponent.inc"
	.include "global.inc"
	.public ov12_0225E568

	.text

	.text
	thumb_func_start ov12_0225E568
ov12_0225E568: ; 0x0225E568
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r4, r1, #0
	str r0, [sp, #8]
	ldr r0, [r4]
	bl BattleSystem_GetBgConfig
	ldrb r1, [r4, #0xd]
	ldr r0, [r4]
	bl BattleSystem_GetOpponentData
	add r7, r0, #0
	ldr r0, [r4]
	bl BattleSystem_GetBattleInput
	add r5, r0, #0
	ldrb r1, [r4, #0xd]
	ldr r0, [r4]
	bl BattleSystem_GetBattlerIdPartner
	add r1, r0, #0
	ldrb r0, [r4, #0xd]
	cmp r1, r0
	beq _0225E5A2
	ldr r0, [r4]
	bl BattleSystem_GetHpBar
	add r6, r0, #0
	b _0225E5A4
_0225E5A2:
	mov r6, #0
_0225E5A4:
	ldrb r0, [r4, #0xf]
	cmp r0, #3
	bhi _0225E69A
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0225E5B6: ; jump table
	.short _0225E5BE - _0225E5B6 - 2 ; case 0
	.short _0225E642 - _0225E5B6 - 2 ; case 1
	.short _0225E662 - _0225E5B6 - 2 ; case 2
	.short _0225E696 - _0225E5B6 - 2 ; case 3
_0225E5BE:
	add r0, r5, #0
	bl BattleInput_CheckFeedbackDone
	cmp r0, #0
	bne _0225E5CA
	b _0225E6F4
_0225E5CA:
	mov r0, #7
	mov r1, #5
	bl NARC_New
	add r7, r0, #0
	mov r0, #8
	mov r1, #5
	bl NARC_New
	add r2, sp, #0x10
	add r6, r0, #0
	mov r0, #0
	add r1, r4, #0
	add r2, #2
_0225E5E6:
	ldrh r3, [r1, #0x10]
	add r0, r0, #1
	strh r3, [r2]
	ldrh r3, [r1, #0x12]
	strh r3, [r2, #2]
	ldrh r3, [r1, #0x14]
	strh r3, [r2, #4]
	ldrh r3, [r1, #0x16]
	add r1, #8
	strh r3, [r2, #6]
	add r2, #8
	cmp r0, #4
	blt _0225E5E6
	ldrb r1, [r4, #0xe]
	add r0, sp, #0x30
	add r0, #2
	strb r1, [r0]
	ldrh r0, [r4, #0x30]
	ldrb r1, [r4, #0xe]
	bl ov12_02266C84
	add r1, sp, #0x30
	add r1, #2
	strb r0, [r1, #1]
	mov r0, #0
	str r0, [sp]
	add r0, sp, #0x10
	add r0, #2
	str r0, [sp, #4]
	add r0, r7, #0
	add r1, r6, #0
	add r2, r5, #0
	mov r3, #0xc
	bl BattleInput_ChangeMenu
	add r0, r7, #0
	bl NARC_Delete
	add r0, r6, #0
	bl NARC_Delete
	ldrb r0, [r4, #0xf]
	add sp, #0x34
	add r0, r0, #1
	strb r0, [r4, #0xf]
	pop {r4, r5, r6, r7, pc}
_0225E642:
	add r0, r5, #0
	bl BattleInput_CheckTouch
	mov r1, #0
	mvn r1, r1
	str r0, [r4, #8]
	cmp r0, r1
	beq _0225E6F4
	ldr r0, _0225E6F8 ; =0x000005DD
	bl PlaySE
	ldrb r0, [r4, #0xf]
	add sp, #0x34
	add r0, r0, #1
	strb r0, [r4, #0xf]
	pop {r4, r5, r6, r7, pc}
_0225E662:
	ldr r0, [r4, #8]
	cmp r0, #0xff
	beq _0225E68C
	ldr r0, [r4, #4]
	bl ov12_02264EB4
	add r0, r7, #0
	bl ov12_02262014
	add r0, r6, #0
	bl ov12_02265D74
	add r0, r4, #0
	add r0, #0x32
	ldrb r0, [r0]
	cmp r0, #1
	bne _0225E68C
	add r0, r5, #0
	mov r1, #0
	bl BattleInput_Deadstriped_022698AC
_0225E68C:
	ldrb r0, [r4, #0xf]
	add sp, #0x34
	add r0, r0, #1
	strb r0, [r4, #0xf]
	pop {r4, r5, r6, r7, pc}
_0225E696:
	add r0, r0, #1
	strb r0, [r4, #0xf]
_0225E69A:
	add r0, r5, #0
	bl ov12_022698B0
	cmp r0, #1
	bne _0225E6F4
	ldr r0, [r4]
	ldr r5, [r4, #8]
	bl BattleSystem_GetBattleType
	add r6, r0, #0
	cmp r5, #0xff
	beq _0225E6D4
	ldr r0, [r4]
	add r1, sp, #0xc
	bl ov12_0223C1A0
	mov r0, #2
	tst r0, r6
	ldr r0, [r4, #8]
	beq _0225E6CC
	add r1, r0, #1
	add r0, sp, #0xc
	ldrb r0, [r0, r1]
	add r5, r0, #1
	b _0225E6D4
_0225E6CC:
	sub r1, r0, #1
	add r0, sp, #0xc
	ldrb r0, [r0, r1]
	add r5, r0, #1
_0225E6D4:
	ldrb r1, [r4, #0xd]
	ldr r0, [r4]
	add r2, r5, #0
	bl ov12_0226311C
	ldrb r1, [r4, #0xd]
	ldrb r2, [r4, #0xc]
	ldr r0, [r4]
	bl ov12_0226430C
	add r0, r4, #0
	bl Heap_Free
	ldr r0, [sp, #8]
	bl SysTask_Destroy
_0225E6F4:
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_0225E6F8: .word 0x000005DD
	thumb_func_end ov12_0225E568

