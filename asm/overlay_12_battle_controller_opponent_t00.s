#include "constants/pokemon.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_12_battle_controller_opponent.inc"
	.include "global.inc"
	.public ov12_02258800
	.extern ov12_02258BB4

	.text

	.text
	thumb_func_start ov12_02258800
ov12_02258800: ; 0x02258800
	push {r4, r5, r6, r7, lr}
	sub sp, #0x94
	str r1, [sp, #0x18]
	add r7, r0, #0
	bl BattleSystem_GetBattleContext
	add r5, r0, #0
	ldr r0, [sp, #0x18]
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r7, #0
	bl BattleSystem_GetBattleType
	mov r1, #0x10
	tst r0, r1
	bne _0225882C
	add r0, r7, #0
	bl BattleSystem_GetBattleType
	mov r1, #8
	tst r0, r1
	beq _02258830
_0225882C:
	str r4, [sp, #0x44]
	b _0225883E
_02258830:
	ldr r1, [sp, #0x18]
	add r0, r7, #0
	bl BattleSystem_GetBattlerIdPartner
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x44]
_0225883E:
	ldr r2, [sp, #0x18]
	add r0, r7, #0
	add r1, r5, #0
	bl Battler_GetRandomOpposingBattlerId
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	ldr r1, [sp, #0x18]
	add r0, r7, #0
	bl BattleSystem_GetPartySize
	str r0, [sp, #0x40]
	mov r0, #0
	str r0, [sp, #0x50]
	add r0, r5, r4
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x44]
	add r0, r5, r0
	str r0, [sp, #0x30]
_02258864:
	mov r0, #0
	str r0, [sp, #0x48]
	mov r0, #6
	str r0, [sp, #0x38]
	ldr r0, [sp, #0x40]
	ldr r4, [sp, #0x48]
	cmp r0, #0
	ble _02258968
_02258874:
	ldr r1, [sp, #0x18]
	add r0, r7, #0
	add r2, r4, #0
	bl BattleSystem_GetPartyMon
	mov r1, #0xae
	mov r2, #0
	str r0, [sp, #0x68]
	bl GetMonData
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	beq _02258950
	ldr r0, _02258B8C ; =0x000001EE
	cmp r1, r0
	beq _02258950
	ldr r0, [sp, #0x68]
	mov r1, #0xa3
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	beq _02258950
	add r0, r4, #0
	bl MaskOfFlagNo
	ldr r1, [sp, #0x50]
	tst r0, r1
	bne _02258950
	ldr r1, [sp, #0x34]
	ldr r0, _02258B90 ; =0x0000219C
	ldrb r0, [r1, r0]
	cmp r4, r0
	beq _02258950
	ldr r1, [sp, #0x30]
	ldr r0, _02258B90 ; =0x0000219C
	ldrb r0, [r1, r0]
	cmp r4, r0
	beq _02258950
	ldr r1, [sp, #0x34]
	ldr r0, _02258B94 ; =0x000021A4
	ldrb r0, [r1, r0]
	cmp r4, r0
	beq _02258950
	ldr r1, [sp, #0x30]
	ldr r0, _02258B94 ; =0x000021A4
	ldrb r0, [r1, r0]
	cmp r4, r0
	beq _02258950
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x1b
	mov r3, #0
	bl GetBattlerVar
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x60]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x1c
	mov r3, #0
	bl GetBattlerVar
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x5c]
	ldr r0, [sp, #0x68]
	mov r1, #0xb1
	mov r2, #0
	bl GetMonData
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x58]
	ldr r0, [sp, #0x68]
	mov r1, #0xb2
	mov r2, #0
	bl GetMonData
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x54]
	ldr r0, [sp, #0x58]
	ldr r1, [sp, #0x60]
	ldr r2, [sp, #0x5c]
	bl CalculateTypeEffectiveness
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x4c]
	ldr r0, [sp, #0x54]
	ldr r1, [sp, #0x60]
	ldr r2, [sp, #0x5c]
	bl CalculateTypeEffectiveness
	ldr r1, [sp, #0x4c]
	add r0, r1, r0
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x4c]
	ldr r1, [sp, #0x48]
	cmp r1, r0
	bhs _02258960
	ldr r0, [sp, #0x4c]
	str r0, [sp, #0x48]
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x38]
	b _02258960
_02258950:
	add r0, r4, #0
	bl MaskOfFlagNo
	ldr r1, [sp, #0x50]
	orr r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x50]
_02258960:
	ldr r0, [sp, #0x40]
	add r4, r4, #1
	cmp r4, r0
	blt _02258874
_02258968:
	ldr r0, [sp, #0x38]
	cmp r0, #6
	beq _02258A30
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x38]
	add r0, r7, #0
	bl BattleSystem_GetPartyMon
	add r4, r0, #0
	mov r0, #0
	str r0, [sp, #0x20]
_0225897E:
	ldr r1, [sp, #0x20]
	add r0, r4, #0
	add r1, #0x36
	mov r2, #0
	bl GetMonData
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x3c]
	ldr r3, [sp, #0x3c]
	add r0, r7, #0
	add r1, r5, #0
	add r2, r4, #0
	bl ov12_02258BB4
	str r0, [sp, #0x6c]
	ldr r0, [sp, #0x3c]
	cmp r0, #0
	beq _02258A08
	mov r0, #0
	str r0, [sp, #0x90]
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #0
	bl GetMonData
	str r0, [sp, #0x70]
	add r0, r5, #0
	add r1, r6, #0
	bl GetBattlerAbility
	str r0, [sp, #0x74]
	add r0, r5, #0
	add r1, r6, #0
	bl GetBattlerHeldItemEffect
	str r0, [sp, #0x78]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x1b
	mov r3, #0
	bl GetBattlerVar
	str r0, [sp, #0x7c]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x1c
	mov r3, #0
	bl GetBattlerVar
	ldr r1, [sp, #0x74]
	ldr r2, [sp, #0x6c]
	str r1, [sp]
	ldr r1, [sp, #0x78]
	ldr r3, [sp, #0x70]
	str r1, [sp, #4]
	ldr r1, [sp, #0x7c]
	str r1, [sp, #8]
	str r0, [sp, #0xc]
	add r0, sp, #0x90
	str r0, [sp, #0x10]
	ldr r1, [sp, #0x3c]
	add r0, r5, #0
	bl ov12_02252054
	ldr r1, [sp, #0x90]
	mov r0, #2
	tst r0, r1
	bne _02258A12
_02258A08:
	ldr r0, [sp, #0x20]
	add r0, r0, #1
	str r0, [sp, #0x20]
	cmp r0, #4
	blt _0225897E
_02258A12:
	ldr r0, [sp, #0x20]
	cmp r0, #4
	bne _02258A2A
	ldr r0, [sp, #0x38]
	bl MaskOfFlagNo
	ldr r1, [sp, #0x50]
	orr r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x50]
	b _02258A34
_02258A2A:
	ldr r0, [sp, #0x38]
	add sp, #0x94
	pop {r4, r5, r6, r7, pc}
_02258A30:
	mov r0, #0x3f
	str r0, [sp, #0x50]
_02258A34:
	ldr r0, [sp, #0x50]
	cmp r0, #0x3f
	beq _02258A3C
	b _02258864
_02258A3C:
	mov r0, #0
	str r0, [sp, #0x28]
	mov r0, #6
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x28]
	str r0, [sp, #0x24]
	ldr r0, [sp, #0x40]
	cmp r0, #0
	bgt _02258A50
	b _02258B84
_02258A50:
	ldr r1, [sp, #0x18]
	ldr r2, [sp, #0x24]
	add r0, r7, #0
	bl BattleSystem_GetPartyMon
	mov r1, #0xae
	mov r2, #0
	str r0, [sp, #0x1c]
	bl GetMonData
	lsl r0, r0, #0x10
	lsr r1, r0, #0x10
	beq _02258A70
	ldr r0, _02258B8C ; =0x000001EE
	cmp r1, r0
	bne _02258A72
_02258A70:
	b _02258B76
_02258A72:
	ldr r0, [sp, #0x1c]
	mov r1, #0xa3
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	beq _02258B76
	ldr r0, _02258B90 ; =0x0000219C
	ldr r1, [sp, #0x34]
	ldrb r2, [r1, r0]
	ldr r1, [sp, #0x24]
	cmp r1, r2
	beq _02258B76
	ldr r1, [sp, #0x30]
	ldrb r2, [r1, r0]
	ldr r1, [sp, #0x24]
	cmp r1, r2
	beq _02258B76
	add r2, r0, #0
	ldr r1, [sp, #0x34]
	add r2, #8
	ldrb r2, [r1, r2]
	ldr r1, [sp, #0x24]
	cmp r1, r2
	beq _02258B76
	ldr r1, [sp, #0x30]
	add r0, #8
	ldrb r1, [r1, r0]
	ldr r0, [sp, #0x24]
	cmp r0, r1
	beq _02258B76
	mov r0, #0
	str r0, [sp, #0x64]
	ldr r0, [sp, #0x18]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x84]
	ldr r0, [sp, #0x24]
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x88]
_02258AC4:
	ldr r1, [sp, #0x64]
	ldr r0, [sp, #0x1c]
	add r1, #0x36
	mov r2, #0
	bl GetMonData
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x8c]
	ldr r2, [sp, #0x1c]
	ldr r3, [sp, #0x8c]
	add r0, r7, #0
	add r1, r5, #0
	bl ov12_02258BB4
	str r0, [sp, #0x80]
	ldr r0, [sp, #0x8c]
	cmp r0, #0
	beq _02258B5E
	lsl r0, r0, #4
	add r1, r5, r0
	ldr r0, _02258B98 ; =0x000003E1
	ldrb r0, [r1, r0]
	cmp r0, #1
	beq _02258B5E
	add r0, r7, #0
	add r1, r6, #0
	bl BattleSystem_GetFieldSide
	add r3, r0, #0
	mov r0, #6
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	lsl r3, r3, #2
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	str r0, [sp, #8]
	ldr r0, [sp, #0x84]
	add r4, r5, r3
	str r0, [sp, #0xc]
	mov r3, #0x6f
	str r6, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x14]
	lsl r3, r3, #2
	ldr r2, [sp, #0x8c]
	ldr r3, [r4, r3]
	add r0, r7, #0
	add r1, r5, #0
	bl CalcMoveDamage
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	mov r0, #0
	str r0, [sp, #0x90]
	ldr r0, [sp, #0x18]
	ldr r3, [sp, #0x80]
	str r0, [sp]
	str r6, [sp, #4]
	str r1, [sp, #8]
	add r0, sp, #0x90
	str r0, [sp, #0xc]
	ldr r2, [sp, #0x8c]
	add r0, r7, #0
	add r1, r5, #0
	bl ov12_02251D28
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x4c]
	ldr r1, [sp, #0x90]
	ldr r0, _02258B9C ; =0x00140808
	tst r0, r1
	beq _02258B5E
	mov r0, #0
	str r0, [sp, #0x4c]
_02258B5E:
	ldr r1, [sp, #0x28]
	ldr r0, [sp, #0x4c]
	cmp r1, r0
	bhs _02258B6C
	str r0, [sp, #0x28]
	ldr r0, [sp, #0x88]
	str r0, [sp, #0x2c]
_02258B6C:
	ldr r0, [sp, #0x64]
	add r0, r0, #1
	str r0, [sp, #0x64]
	cmp r0, #4
	blt _02258AC4
_02258B76:
	ldr r0, [sp, #0x24]
	add r1, r0, #1
	ldr r0, [sp, #0x40]
	str r1, [sp, #0x24]
	cmp r1, r0
	bge _02258B84
	b _02258A50
_02258B84:
	ldr r0, [sp, #0x2c]
	add sp, #0x94
	pop {r4, r5, r6, r7, pc}
	nop
_02258B8C: .word 0x000001EE
_02258B90: .word 0x0000219C
_02258B94: .word 0x000021A4
_02258B98: .word 0x000003E1
_02258B9C: .word 0x00140808
	thumb_func_end ov12_02258800

