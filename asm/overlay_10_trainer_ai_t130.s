	.include "asm/macros.inc"
	.include "overlay_10.inc"
	.include "global.inc"
	.public ov10_022205BC
	.extern ov10_022203A4
	.extern ov10_022206B0

	.text

	.text
	thumb_func_start ov10_022205BC
ov10_022205BC: ; 0x022205BC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r1, #0
	add r1, r0, #0
	str r0, [sp]
	ldr r5, [r1, #0x30]
	bl BattleSystem_GetBattleType
	add r6, r0, #0
	mov r0, #1
	tst r0, r6
	bne _022205E0
	ldr r0, [sp]
	add r1, r7, #0
	bl BattleSystem_GetFieldSide
	cmp r0, #0
	bne _022206A0
_022205E0:
	ldr r0, [sp]
	add r1, r5, #0
	add r2, r7, #0
	bl ov10_022203A4
	cmp r0, #0
	beq _0222068E
	ldr r0, _022206A8 ; =0x000021A4
	add r0, r5, r0
	str r0, [sp, #0x10]
	ldrb r0, [r0, r7]
	cmp r0, #6
	bne _02220688
	ldr r0, [sp]
	add r1, r7, #0
	bl ov12_02258800
	add r4, r0, #0
	cmp r4, #6
	bne _02220684
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0xc]
	mov r0, #0x10
	tst r0, r6
	bne _0222061A
	mov r0, #8
	tst r0, r6
	beq _02220620
_0222061A:
	ldr r0, [sp, #0xc]
	str r0, [sp, #8]
	b _0222062E
_02220620:
	ldr r0, [sp]
	add r1, r7, #0
	bl BattleSystem_GetBattlerIdPartner
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #8]
_0222062E:
	ldr r0, [sp]
	add r1, r7, #0
	bl BattleSystem_GetPartySize
	mov r4, #0
	str r0, [sp, #4]
	cmp r0, #0
	ble _02220684
	ldr r0, [sp, #0xc]
	add r6, r5, r0
	ldr r0, [sp, #8]
	add r5, r5, r0
_02220646:
	ldr r0, [sp]
	add r1, r7, #0
	add r2, r4, #0
	bl BattleSystem_GetPartyMon
	mov r1, #0xa3
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	beq _0222067C
	ldr r0, _022206AC ; =0x0000219C
	ldrb r0, [r6, r0]
	cmp r4, r0
	beq _0222067C
	ldr r0, _022206AC ; =0x0000219C
	ldrb r0, [r5, r0]
	cmp r4, r0
	beq _0222067C
	ldr r0, _022206A8 ; =0x000021A4
	ldrb r0, [r6, r0]
	cmp r4, r0
	beq _0222067C
	ldr r0, _022206A8 ; =0x000021A4
	ldrb r0, [r5, r0]
	cmp r4, r0
	bne _02220684
_0222067C:
	ldr r0, [sp, #4]
	add r4, r4, #1
	cmp r4, r0
	blt _02220646
_02220684:
	ldr r0, [sp, #0x10]
	strb r4, [r0, r7]
_02220688:
	add sp, #0x14
	mov r0, #3
	pop {r4, r5, r6, r7, pc}
_0222068E:
	ldr r0, [sp]
	add r1, r7, #0
	bl ov10_022206B0
	cmp r0, #0
	beq _022206A0
	add sp, #0x14
	mov r0, #2
	pop {r4, r5, r6, r7, pc}
_022206A0:
	mov r0, #1
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_022206A8: .word 0x000021A4
_022206AC: .word 0x0000219C
	thumb_func_end ov10_022205BC

