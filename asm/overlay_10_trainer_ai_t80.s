	.include "asm/macros.inc"
	.include "overlay_10.inc"
	.include "global.inc"
	.public ov10_0221E1CC
	.extern ov10_0221EEF0
	.extern ov10_0221EF24
	.extern ov10_0221EF34

	.text

	.text
	thumb_func_start ov10_0221E1CC
ov10_0221E1CC: ; 0x0221E1CC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	str r0, [sp, #4]
	str r1, [sp, #8]
	add r0, r1, #0
	mov r1, #1
	bl ov10_0221EF24
	ldr r0, [sp, #8]
	bl ov10_0221EEF0
	add r1, r0, #0
	lsl r1, r1, #0x18
	ldr r0, [sp, #8]
	lsr r1, r1, #0x18
	bl ov10_0221EF34
	str r0, [sp, #0x10]
	ldr r0, [sp, #4]
	bl BattleSystem_GetMaxBattlers
	mov r1, #0
	str r0, [sp, #0x14]
	cmp r0, #0
	ble _0221E20A
	add r2, sp, #0x24
_0221E200:
	ldr r0, [sp, #0x14]
	stmia r2!, {r1}
	add r1, r1, #1
	cmp r1, r0
	blt _0221E200
_0221E20A:
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x14]
	sub r0, r0, #1
	str r0, [sp, #0x1c]
	cmp r0, #0
	ble _0221E264
	add r6, sp, #0x24
	str r6, [sp, #0x20]
_0221E21C:
	ldr r0, [sp, #0xc]
	add r7, r0, #1
	ldr r0, [sp, #0x14]
	cmp r7, r0
	bge _0221E256
	ldr r0, [sp, #0x20]
	lsl r1, r7, #2
	add r5, r0, r1
_0221E22C:
	ldr r0, [r6]
	ldr r4, [r5]
	str r0, [sp, #0x18]
	mov r0, #1
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	ldr r2, [sp, #0x18]
	add r3, r4, #0
	bl CheckSortSpeed
	cmp r0, #0
	beq _0221E24C
	ldr r0, [sp, #0x18]
	str r4, [r6]
	str r0, [r5]
_0221E24C:
	ldr r0, [sp, #0x14]
	add r7, r7, #1
	add r5, r5, #4
	cmp r7, r0
	blt _0221E22C
_0221E256:
	ldr r0, [sp, #0xc]
	add r6, r6, #4
	add r1, r0, #1
	ldr r0, [sp, #0x1c]
	str r1, [sp, #0xc]
	cmp r1, r0
	blt _0221E21C
_0221E264:
	ldr r1, [sp, #0x14]
	mov r0, #0
	cmp r1, #0
	ble _0221E28C
	add r3, sp, #0x24
_0221E26E:
	ldr r2, [r3]
	ldr r1, [sp, #0x10]
	cmp r1, r2
	bne _0221E282
	mov r2, #0xd7
	ldr r1, [sp, #8]
	lsl r2, r2, #2
	str r0, [r1, r2]
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
_0221E282:
	ldr r1, [sp, #0x14]
	add r0, r0, #1
	add r3, r3, #4
	cmp r0, r1
	blt _0221E26E
_0221E28C:
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov10_0221E1CC

