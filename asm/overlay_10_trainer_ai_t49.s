	.include "asm/macros.inc"
	.include "overlay_10.inc"
	.include "global.inc"
	.public ov10_0221D3AC
	.extern ov10_0221EEF0
	.extern ov10_0221EF24
	.extern ov10_0221EF34

	.text

	.text
	thumb_func_start ov10_0221D3AC
ov10_0221D3AC: ; 0x0221D3AC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x18
	add r7, r0, #0
	str r1, [sp]
	add r0, r1, #0
	mov r1, #1
	bl ov10_0221EF24
	ldr r0, [sp]
	bl ov10_0221EEF0
	add r4, r0, #0
	ldr r0, [sp]
	bl ov10_0221EEF0
	str r0, [sp, #0x10]
	ldr r0, [sp]
	bl ov10_0221EEF0
	str r0, [sp, #0xc]
	lsl r1, r4, #0x18
	ldr r0, [sp]
	lsr r1, r1, #0x18
	bl ov10_0221EF34
	add r6, r0, #0
	ldr r1, [r7, #0x2c]
	mov r0, #2
	tst r0, r1
	beq _0221D406
	ldr r0, [sp]
	add r1, r0, r6
	ldr r0, _0221D498 ; =0x0000219C
	ldrb r0, [r1, r0]
	add r1, r6, #0
	str r0, [sp, #8]
	add r0, r7, #0
	bl BattleSystem_GetBattlerIdPartner
	ldr r1, [sp]
	add r1, r1, r0
	ldr r0, _0221D498 ; =0x0000219C
	ldrb r0, [r1, r0]
	str r0, [sp, #4]
	b _0221D412
_0221D406:
	ldr r0, [sp]
	add r1, r0, r6
	ldr r0, _0221D498 ; =0x0000219C
	ldrb r0, [r1, r0]
	str r0, [sp, #4]
	str r0, [sp, #8]
_0221D412:
	add r0, r7, #0
	add r1, r6, #0
	bl BattleSystem_GetParty
	str r0, [sp, #0x14]
	add r0, r7, #0
	add r1, r6, #0
	mov r5, #0
	bl BattleSystem_GetPartySize
	cmp r0, #0
	ble _0221D494
_0221D42A:
	ldr r0, [sp, #0x14]
	add r1, r5, #0
	bl Party_GetMonByIndex
	ldr r1, [sp, #8]
	add r4, r0, #0
	cmp r5, r1
	beq _0221D486
	ldr r1, [sp, #4]
	cmp r5, r1
	beq _0221D486
	mov r1, #0xa3
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	beq _0221D486
	add r0, r4, #0
	mov r1, #0xae
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	beq _0221D486
	add r0, r4, #0
	mov r1, #0xae
	mov r2, #0
	bl GetMonData
	ldr r1, _0221D49C ; =0x000001EE
	cmp r0, r1
	beq _0221D486
	add r0, r4, #0
	mov r1, #0xa0
	mov r2, #0
	bl GetMonData
	ldr r1, [sp, #0x10]
	tst r0, r1
	beq _0221D486
	ldr r0, [sp]
	ldr r1, [sp, #0xc]
	bl ov10_0221EF24
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
_0221D486:
	add r0, r7, #0
	add r1, r6, #0
	add r5, r5, #1
	bl BattleSystem_GetPartySize
	cmp r5, r0
	blt _0221D42A
_0221D494:
	add sp, #0x18
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0221D498: .word 0x0000219C
_0221D49C: .word 0x000001EE
	thumb_func_end ov10_0221D3AC

