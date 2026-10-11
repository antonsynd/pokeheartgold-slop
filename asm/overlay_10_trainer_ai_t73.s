	.include "asm/macros.inc"
	.include "overlay_10.inc"
	.include "global.inc"
	.public ov10_0221DF88
	.extern ov10_0221EEF0
	.extern ov10_0221EF24
	.extern ov10_0221EF34

	.text

	.text
	thumb_func_start ov10_0221DF88
ov10_0221DF88: ; 0x0221DF88
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r5, r0, #0
	str r1, [sp]
	add r0, r1, #0
	mov r1, #1
	bl ov10_0221EF24
	ldr r0, [sp]
	bl ov10_0221EEF0
	add r4, r0, #0
	ldr r0, [sp]
	bl ov10_0221EEF0
	str r0, [sp, #8]
	lsl r1, r4, #0x18
	ldr r0, [sp]
	lsr r1, r1, #0x18
	bl ov10_0221EF34
	add r6, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	mov r4, #0
	bl BattleSystem_GetPartySize
	cmp r0, #0
	ble _0221E010
	ldr r0, [sp]
	add r0, r0, r6
	str r0, [sp, #4]
_0221DFC8:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl BattleSystem_GetPartyMon
	ldr r2, [sp, #4]
	ldr r1, _0221E014 ; =0x0000219C
	str r0, [sp, #0xc]
	ldrb r1, [r2, r1]
	cmp r4, r1
	beq _0221E002
	mov r1, #0xa3
	mov r2, #0
	bl GetMonData
	add r7, r0, #0
	ldr r0, [sp, #0xc]
	mov r1, #0xa4
	mov r2, #0
	bl GetMonData
	cmp r7, r0
	beq _0221E002
	ldr r0, [sp]
	ldr r1, [sp, #8]
	bl ov10_0221EF24
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
_0221E002:
	add r0, r5, #0
	add r1, r6, #0
	add r4, r4, #1
	bl BattleSystem_GetPartySize
	cmp r4, r0
	blt _0221DFC8
_0221E010:
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0221E014: .word 0x0000219C
	thumb_func_end ov10_0221DF88

