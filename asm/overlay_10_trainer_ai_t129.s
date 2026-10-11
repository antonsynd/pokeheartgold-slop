	.include "asm/macros.inc"
	.include "overlay_10.inc"
	.include "global.inc"
	.public ov10_022203A4
	.extern ov10_0221F5F4
	.extern ov10_0221F62C
	.extern ov10_0221F7F0
	.extern ov10_0221FD34
	.extern ov10_0221FE8C
	.extern ov10_02220010
	.extern ov10_02220270
	.extern ov10_0222036C

	.text

	.text
	thumb_func_start ov10_022203A4
ov10_022203A4: ; 0x022203A4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r6, r2, #0
	mov r2, #0xc0
	add r3, r6, #0
	mul r3, r2
	add r2, r1, #0
	add r5, r2, r3
	ldr r2, _022205A8 ; =0x00002DB0
	ldr r3, _022205AC ; =0x0400E000
	ldr r4, [r5, r2]
	str r0, [sp, #4]
	str r1, [sp, #8]
	tst r4, r3
	bne _02220424
	add r2, #0x10
	ldr r4, [r5, r2]
	lsr r2, r3, #0x10
	tst r2, r4
	bne _02220424
	mov r2, #0x17
	str r2, [sp]
	mov r2, #2
	add r3, r6, #0
	bl CheckAbilityActive
	cmp r0, #0
	bne _02220424
	mov r0, #0x47
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	mov r2, #2
	add r3, r6, #0
	bl CheckAbilityActive
	cmp r0, #0
	bne _02220424
	mov r0, #0x2a
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	mov r2, #6
	add r3, r6, #0
	bl CheckAbilityActive
	cmp r0, #0
	beq _0222042A
	ldr r0, [sp, #8]
	add r1, r6, #0
	mov r2, #0x1b
	mov r3, #0
	bl GetBattlerVar
	cmp r0, #8
	beq _02220424
	ldr r0, [sp, #8]
	add r1, r6, #0
	mov r2, #0x1c
	mov r3, #0
	bl GetBattlerVar
	cmp r0, #8
	bne _0222042A
_02220424:
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0222042A:
	mov r0, #0
	str r0, [sp, #0x14]
	lsl r0, r6, #0x18
	lsr r4, r0, #0x18
	ldr r0, [sp, #4]
	bl BattleSystem_GetBattleType
	mov r1, #0x10
	tst r0, r1
	bne _0222044A
	ldr r0, [sp, #4]
	bl BattleSystem_GetBattleType
	mov r1, #8
	tst r0, r1
	beq _0222044E
_0222044A:
	add r7, r4, #0
	b _0222045A
_0222044E:
	ldr r0, [sp, #4]
	add r1, r6, #0
	bl BattleSystem_GetBattlerIdPartner
	lsl r0, r0, #0x18
	lsr r7, r0, #0x18
_0222045A:
	ldr r0, [sp, #4]
	add r1, r6, #0
	bl BattleSystem_GetPartySize
	mov r5, #0
	str r0, [sp, #0x10]
	cmp r0, #0
	ble _022204DA
	ldr r0, [sp, #8]
	add r0, r0, r4
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	add r7, r0, r7
_02220474:
	ldr r0, [sp, #4]
	add r1, r6, #0
	add r2, r5, #0
	bl BattleSystem_GetPartyMon
	mov r1, #0xa3
	mov r2, #0
	add r4, r0, #0
	bl GetMonData
	cmp r0, #0
	beq _022204D2
	add r0, r4, #0
	mov r1, #0xae
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	beq _022204D2
	add r0, r4, #0
	mov r1, #0xae
	mov r2, #0
	bl GetMonData
	ldr r1, _022205B0 ; =0x000001EE
	cmp r0, r1
	beq _022204D2
	ldr r1, [sp, #0xc]
	ldr r0, _022205B4 ; =0x0000219C
	ldrb r0, [r1, r0]
	cmp r5, r0
	beq _022204D2
	ldr r0, _022205B4 ; =0x0000219C
	ldrb r0, [r7, r0]
	cmp r5, r0
	beq _022204D2
	ldr r0, _022205B8 ; =0x000021A4
	ldrb r0, [r1, r0]
	cmp r5, r0
	beq _022204D2
	ldr r0, _022205B8 ; =0x000021A4
	ldrb r0, [r7, r0]
	cmp r5, r0
	beq _022204D2
	ldr r0, [sp, #0x14]
	add r0, r0, #1
	str r0, [sp, #0x14]
_022204D2:
	ldr r0, [sp, #0x10]
	add r5, r5, #1
	cmp r5, r0
	blt _02220474
_022204DA:
	ldr r0, [sp, #0x14]
	cmp r0, #0
	beq _022205A0
	ldr r0, [sp, #8]
	add r1, r6, #0
	bl ov10_0221F5F4
	cmp r0, #0
	beq _022204F2
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022204F2:
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	add r2, r6, #0
	bl ov10_0221F62C
	cmp r0, #0
	beq _02220506
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02220506:
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	add r2, r6, #0
	bl ov10_0221F7F0
	cmp r0, #0
	beq _0222051A
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0222051A:
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	add r2, r6, #0
	bl ov10_0221FE8C
	cmp r0, #0
	beq _0222052E
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0222052E:
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	add r2, r6, #0
	bl ov10_02220270
	cmp r0, #0
	beq _02220542
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02220542:
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	add r2, r6, #0
	mov r3, #0
	bl ov10_0221FD34
	cmp r0, #0
	beq _02220558
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02220558:
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	add r2, r6, #0
	bl ov10_0222036C
	cmp r0, #0
	beq _0222056C
	add sp, #0x18
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_0222056C:
	mov r0, #2
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	add r2, r6, #0
	mov r3, #8
	bl ov10_02220010
	cmp r0, #0
	beq _02220586
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02220586:
	mov r0, #3
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	add r2, r6, #0
	mov r3, #4
	bl ov10_02220010
	cmp r0, #0
	beq _022205A0
	add sp, #0x18
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022205A0:
	mov r0, #0
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022205A8: .word 0x00002DB0
_022205AC: .word 0x0400E000
_022205B0: .word 0x000001EE
_022205B4: .word 0x0000219C
_022205B8: .word 0x000021A4
	thumb_func_end ov10_022203A4

