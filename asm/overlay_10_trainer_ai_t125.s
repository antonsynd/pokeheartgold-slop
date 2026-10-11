	.include "asm/macros.inc"
	.include "overlay_10.inc"
	.include "global.inc"
	.public ov10_0221FE8C
	.extern ov10_0221FD34

	.text

	.text
	thumb_func_start ov10_0221FE8C
ov10_0221FE8C: ; 0x0221FE8C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	mov r3, #1
	add r6, r0, #0
	str r1, [sp]
	str r2, [sp, #4]
	bl ov10_0221FD34
	cmp r0, #0
	beq _0221FEB6
	add r0, r6, #0
	bl BattleSystem_Random
	mov r1, #3
	bl _s32_div_f
	cmp r1, #0
	beq _0221FEB6
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0221FEB6:
	ldr r0, [sp, #4]
	lsl r1, r0, #1
	ldr r0, [sp]
	add r1, r0, r1
	ldr r0, _0221FFFC ; =0x00003064
	ldrh r0, [r1, r0]
	cmp r0, #0
	bne _0221FECC
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0221FECC:
	lsl r1, r0, #4
	ldr r0, [sp]
	add r2, r0, r1
	ldr r0, _02220000 ; =0x000003E1
	ldrb r1, [r2, r0]
	cmp r1, #0
	bne _0221FEE0
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0221FEE0:
	add r0, r0, #1
	ldrb r0, [r2, r0]
	cmp r0, #0xa
	bne _0221FEEE
	mov r0, #0x12
	str r0, [sp, #0x10]
	b _0221FF08
_0221FEEE:
	cmp r0, #0xb
	bne _0221FEF8
	mov r0, #0xb
	str r0, [sp, #0x10]
	b _0221FF08
_0221FEF8:
	cmp r0, #0xd
	bne _0221FF02
	mov r0, #0xa
	str r0, [sp, #0x10]
	b _0221FF08
_0221FF02:
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0221FF08:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	bl GetBattlerAbility
	ldr r1, [sp, #0x10]
	cmp r1, r0
	bne _0221FF1C
	add sp, #0x14
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_0221FF1C:
	ldr r0, [sp, #4]
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	add r0, r6, #0
	bl BattleSystem_GetBattleType
	mov r1, #0x10
	tst r0, r1
	bne _0221FF3A
	add r0, r6, #0
	bl BattleSystem_GetBattleType
	mov r1, #8
	tst r0, r1
	beq _0221FF3E
_0221FF3A:
	add r7, r4, #0
	b _0221FF4A
_0221FF3E:
	ldr r1, [sp, #4]
	add r0, r6, #0
	bl BattleSystem_GetBattlerIdPartner
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
_0221FF4A:
	ldr r1, [sp, #4]
	add r0, r6, #0
	bl BattleSystem_GetPartySize
	mov r5, #0
	str r0, [sp, #0xc]
	cmp r0, #0
	ble _0221FFF4
	ldr r0, [sp]
	add r0, r0, r4
	str r0, [sp, #8]
	ldr r0, [sp]
	add r7, r0, r7
_0221FF64:
	ldr r1, [sp, #4]
	add r0, r6, #0
	add r2, r5, #0
	bl BattleSystem_GetPartyMon
	mov r1, #0xa3
	mov r2, #0
	add r4, r0, #0
	bl GetMonData
	cmp r0, #0
	beq _0221FFEC
	add r0, r4, #0
	mov r1, #0xae
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	beq _0221FFEC
	add r0, r4, #0
	mov r1, #0xae
	mov r2, #0
	bl GetMonData
	ldr r1, _02220004 ; =0x000001EE
	cmp r0, r1
	beq _0221FFEC
	ldr r1, [sp, #8]
	ldr r0, _02220008 ; =0x0000219C
	ldrb r0, [r1, r0]
	cmp r5, r0
	beq _0221FFEC
	ldr r0, _02220008 ; =0x0000219C
	ldrb r0, [r7, r0]
	cmp r5, r0
	beq _0221FFEC
	ldr r0, _0222000C ; =0x000021A4
	ldrb r0, [r1, r0]
	cmp r5, r0
	beq _0221FFEC
	ldr r0, _0222000C ; =0x000021A4
	ldrb r0, [r7, r0]
	cmp r5, r0
	beq _0221FFEC
	add r0, r4, #0
	mov r1, #0xa
	mov r2, #0
	bl GetMonData
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	ldr r0, [sp, #0x10]
	cmp r0, r1
	bne _0221FFEC
	add r0, r6, #0
	bl BattleSystem_Random
	mov r1, #1
	tst r0, r1
	beq _0221FFEC
	ldr r1, [sp]
	ldr r0, [sp, #4]
	add sp, #0x14
	add r1, r1, r0
	ldr r0, _0222000C ; =0x000021A4
	strb r5, [r1, r0]
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_0221FFEC:
	ldr r0, [sp, #0xc]
	add r5, r5, #1
	cmp r5, r0
	blt _0221FF64
_0221FFF4:
	mov r0, #0
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0221FFFC: .word 0x00003064
_02220000: .word 0x000003E1
_02220004: .word 0x000001EE
_02220008: .word 0x0000219C
_0222000C: .word 0x000021A4
	thumb_func_end ov10_0221FE8C

