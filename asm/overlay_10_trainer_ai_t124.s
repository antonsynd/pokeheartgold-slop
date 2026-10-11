	.include "asm/macros.inc"
	.include "overlay_10.inc"
	.include "global.inc"
	.public ov10_0221FD34
	.extern ov10_0221F47C

	.text

	.text
	thumb_func_start ov10_0221FD34
ov10_0221FD34: ; 0x0221FD34
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r6, r2, #0
	add r4, r1, #0
	add r1, r6, #0
	add r5, r0, #0
	str r3, [sp, #0x10]
	bl ov12_0223AB0C
	mov r1, #1
	eor r0, r1
	lsl r0, r0, #0x18
	lsr r1, r0, #0x18
	add r0, r5, #0
	bl BattleSystem_GetBattlerFromBattlerType
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x24]
	bl MaskOfFlagNo
	ldr r1, _0221FE84 ; =0x00003108
	ldrb r1, [r4, r1]
	tst r0, r1
	bne _0221FDDC
	mov r0, #0
	str r0, [sp, #0x28]
	mov r0, #0xc0
	mul r0, r6
	add r7, r4, r0
_0221FD70:
	ldr r0, _0221FE88 ; =0x00002D4C
	add r1, r4, #0
	ldrh r0, [r7, r0]
	add r2, r6, #0
	str r0, [sp, #0x20]
	ldr r3, [sp, #0x20]
	add r0, r5, #0
	bl ov10_0221F47C
	add r3, r0, #0
	ldr r0, [sp, #0x20]
	cmp r0, #0
	beq _0221FDD0
	mov r0, #0
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x24]
	str r6, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r0, sp, #0x2c
	str r0, [sp, #0xc]
	ldr r2, [sp, #0x20]
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_02251D28
	ldr r1, [sp, #0x2c]
	mov r0, #2
	tst r0, r1
	beq _0221FDD0
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _0221FDBA
	add sp, #0x30
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0221FDBA:
	add r0, r5, #0
	bl BattleSystem_Random
	mov r1, #0xa
	bl _s32_div_f
	cmp r1, #0
	beq _0221FDD0
	add sp, #0x30
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0221FDD0:
	ldr r0, [sp, #0x28]
	add r7, r7, #2
	add r0, r0, #1
	str r0, [sp, #0x28]
	cmp r0, #4
	blt _0221FD70
_0221FDDC:
	add r0, r5, #0
	bl BattleSystem_GetBattleType
	mov r1, #2
	tst r0, r1
	bne _0221FDEE
	add sp, #0x30
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0221FDEE:
	ldr r1, [sp, #0x24]
	add r0, r5, #0
	bl BattleSystem_GetBattlerIdPartner
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x1c]
	bl MaskOfFlagNo
	ldr r1, _0221FE84 ; =0x00003108
	ldrb r1, [r4, r1]
	tst r0, r1
	bne _0221FE7E
	mov r0, #0
	str r0, [sp, #0x18]
	mov r0, #0xc0
	mul r0, r6
	add r7, r4, r0
_0221FE12:
	ldr r0, _0221FE88 ; =0x00002D4C
	add r1, r4, #0
	ldrh r0, [r7, r0]
	add r2, r6, #0
	str r0, [sp, #0x14]
	ldr r3, [sp, #0x14]
	add r0, r5, #0
	bl ov10_0221F47C
	add r3, r0, #0
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _0221FE72
	mov r0, #0
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x1c]
	str r6, [sp]
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	add r0, sp, #0x2c
	str r0, [sp, #0xc]
	ldr r2, [sp, #0x14]
	add r0, r5, #0
	add r1, r4, #0
	bl ov12_02251D28
	ldr r1, [sp, #0x2c]
	mov r0, #2
	tst r0, r1
	beq _0221FE72
	ldr r0, [sp, #0x10]
	cmp r0, #0
	beq _0221FE5C
	add sp, #0x30
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0221FE5C:
	add r0, r5, #0
	bl BattleSystem_Random
	mov r1, #0xa
	bl _s32_div_f
	cmp r1, #0
	beq _0221FE72
	add sp, #0x30
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0221FE72:
	ldr r0, [sp, #0x18]
	add r7, r7, #2
	add r0, r0, #1
	str r0, [sp, #0x18]
	cmp r0, #4
	blt _0221FE12
_0221FE7E:
	mov r0, #0
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0221FE84: .word 0x00003108
_0221FE88: .word 0x00002D4C
	thumb_func_end ov10_0221FD34

