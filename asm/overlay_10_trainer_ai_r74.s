	.include "asm/macros.inc"
	.include "overlay_10.inc"
	.include "global.inc"
	.public ov10_0221E018
	.extern ov10_0221EEF0
	.extern ov10_0221EF24
	.extern ov10_0221EF34

	.text

	.text
	thumb_func_start ov10_0221E018
ov10_0221E018: ; 0x0221E018
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	str r0, [sp]
	str r1, [sp, #4]
	add r0, r1, #0
	mov r1, #1
	bl ov10_0221EF24
	ldr r0, [sp, #4]
	bl ov10_0221EEF0
	add r4, r0, #0
	ldr r0, [sp, #4]
	bl ov10_0221EEF0
	str r0, [sp, #0x10]
	lsl r1, r4, #0x18
	ldr r0, [sp, #4]
	lsr r1, r1, #0x18
	bl ov10_0221EF34
	str r0, [sp, #8]
	ldr r0, [sp]
	ldr r1, [sp, #8]
	mov r7, #0
	bl BattleSystem_GetPartySize
	cmp r0, #0
	ble _0221E0B2
	ldr r1, [sp, #4]
	ldr r0, [sp, #8]
	add r0, r1, r0
	str r0, [sp, #0xc]
_0221E05A:
	ldr r0, [sp]
	ldr r1, [sp, #8]
	add r2, r7, #0
	bl BattleSystem_GetPartyMon
	add r5, r0, #0
	ldr r1, [sp, #0xc]
	ldr r0, _0221E0B8 ; =0x0000219C
	ldrb r0, [r1, r0]
	cmp r7, r0
	beq _0221E0A4
	mov r4, #0
_0221E072:
	add r1, r4, #0
	add r0, r5, #0
	add r1, #0x3a
	mov r2, #0
	bl GetMonData
	add r1, r4, #0
	add r6, r0, #0
	add r0, r5, #0
	add r1, #0x42
	mov r2, #0
	bl GetMonData
	cmp r6, r0
	beq _0221E09A
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x10]
	bl ov10_0221EF24
	b _0221E0A0
_0221E09A:
	add r4, r4, #1
	cmp r4, #4
	blt _0221E072
_0221E0A0:
	cmp r4, #4
	bne _0221E0B2
_0221E0A4:
	ldr r0, [sp]
	ldr r1, [sp, #8]
	add r7, r7, #1
	bl BattleSystem_GetPartySize
	cmp r7, r0
	blt _0221E05A
_0221E0B2:
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_0221E0B8: .word 0x0000219C
	thumb_func_end ov10_0221E018

