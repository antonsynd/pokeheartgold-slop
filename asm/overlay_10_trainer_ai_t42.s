	.include "asm/macros.inc"
	.include "overlay_10.inc"
	.include "global.inc"
	.public ov10_0221CF8C
	.extern ov10_0221EEF0
	.extern ov10_0221EF24
	.extern ov10_0221EF34

	.text

	.text
	thumb_func_start ov10_0221CF8C
ov10_0221CF8C: ; 0x0221CF8C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r1, #0
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov10_0221EF24
	add r0, r5, #0
	bl ov10_0221EEF0
	add r2, r0, #0
	mov r0, #0xd7
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
	lsl r1, r2, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov10_0221EF34
	str r0, [sp]
	ldr r1, [sp]
	add r0, r7, #0
	bl BattleSystem_GetParty
	str r0, [sp, #0xc]
	ldr r1, [r7, #0x2c]
	mov r0, #2
	tst r0, r1
	beq _0221CFE6
	ldr r0, [sp]
	add r1, r5, r0
	ldr r0, _0221D060 ; =0x0000219C
	ldrb r0, [r1, r0]
	ldr r1, [sp]
	str r0, [sp, #8]
	add r0, r7, #0
	bl BattleSystem_GetBattlerIdPartner
	add r1, r5, r0
	ldr r0, _0221D060 ; =0x0000219C
	ldrb r0, [r1, r0]
	str r0, [sp, #4]
	b _0221CFF2
_0221CFE6:
	ldr r0, [sp]
	add r1, r5, r0
	ldr r0, _0221D060 ; =0x0000219C
	ldrb r0, [r1, r0]
	str r0, [sp, #4]
	str r0, [sp, #8]
_0221CFF2:
	ldr r1, [sp]
	add r0, r7, #0
	mov r4, #0
	bl BattleSystem_GetPartySize
	cmp r0, #0
	ble _0221D05C
_0221D000:
	ldr r0, [sp, #0xc]
	add r1, r4, #0
	bl Party_GetMonByIndex
	ldr r1, [sp, #8]
	add r6, r0, #0
	cmp r4, r1
	beq _0221D04E
	ldr r1, [sp, #4]
	cmp r4, r1
	beq _0221D04E
	mov r1, #0xa3
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	beq _0221D04E
	add r0, r6, #0
	mov r1, #0xae
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	beq _0221D04E
	add r0, r6, #0
	mov r1, #0xae
	mov r2, #0
	bl GetMonData
	ldr r1, _0221D064 ; =0x000001EE
	cmp r0, r1
	beq _0221D04E
	mov r0, #0xd7
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	add r1, r0, #1
	mov r0, #0xd7
	lsl r0, r0, #2
	str r1, [r5, r0]
_0221D04E:
	ldr r1, [sp]
	add r0, r7, #0
	add r4, r4, #1
	bl BattleSystem_GetPartySize
	cmp r4, r0
	blt _0221D000
_0221D05C:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0221D060: .word 0x0000219C
_0221D064: .word 0x000001EE
	thumb_func_end ov10_0221CF8C

