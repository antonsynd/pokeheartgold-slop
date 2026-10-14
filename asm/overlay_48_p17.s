	.include "macros.inc"
	.include "overlay_48.inc"
	.include "global.inc"
	.public ov48_022591D8
	.extern ov48_02258F0C
	.extern ov48_022592E0
	.extern ov48_022598CC
	.extern ov48_02259B3C
	.extern ov48_02259B68
	.extern ov48_02259BBC

	.text

	.text
	thumb_func_start ov48_022591D8
ov48_022591D8: ; 0x022591D8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	add r5, r0, #0
	mov r0, #0x89
	lsl r0, r0, #2
	add r0, r5, r0
	bl ov48_02259BBC
	str r0, [sp, #0xc]
	mov r0, #0x5e
	lsl r0, r0, #2
	add r0, r5, r0
	add r1, sp, #0x28
	bl ov48_022598CC
	ldr r1, [sp, #0x28]
	add r0, r1, #0
	sub r0, #0x80
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add r1, #0x80
	str r0, [sp, #4]
	lsl r0, r1, #0x10
	asr r0, r0, #0x10
	str r0, [sp]
	ldr r0, [sp, #0x2c]
	add r1, r0, #0
	sub r1, #0x80
	lsl r1, r1, #0x10
	asr r6, r1, #0x10
	add r1, r0, #0
	add r1, #0x80
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	str r1, [sp, #0x18]
	sub r2, r1, r6
	bpl _02259224
	neg r2, r2
_02259224:
	mov r1, #1
	lsl r1, r1, #8
	cmp r2, r1
	ble _0225925E
	lsl r0, r0, #0x10
	asr r6, r0, #0x10
	str r6, [sp, #0x18]
	cmp r6, #0
	ble _02259240
	lsl r0, r1, #8
	sub r0, r6, r0
	str r0, [sp, #0x14]
	str r0, [sp, #0x10]
	b _02259248
_02259240:
	lsl r0, r1, #8
	add r0, r6, r0
	str r0, [sp, #0x14]
	str r0, [sp, #0x10]
_02259248:
	ldr r0, [sp, #0x18]
	sub r6, #0x80
	add r0, #0x80
	str r0, [sp, #0x18]
	ldr r0, [sp, #0x14]
	sub r0, #0x80
	str r0, [sp, #0x14]
	ldr r0, [sp, #0x10]
	add r0, #0x80
	str r0, [sp, #0x10]
	b _02259264
_0225925E:
	ldr r0, [sp, #0x18]
	str r6, [sp, #0x14]
	str r0, [sp, #0x10]
_02259264:
	ldr r0, [sp, #0xc]
	mov r7, #1
	lsl r7, r7, #8
	mov r4, #0
	str r0, [sp, #8]
	cmp r0, #0
	bls _022592DA
_02259272:
	mov r0, #0x89
	lsl r0, r0, #2
	add r0, r5, r0
	add r1, sp, #0x1c
	add r2, r4, #0
	bl ov48_02259B3C
	mov r0, #0x89
	lsl r0, r0, #2
	add r0, r5, r0
	add r1, r4, #0
	bl ov48_02259B68
	ldr r1, [sp, #0x1c]
	ldr r2, [sp, #4]
	cmp r1, r2
	ble _022592D2
	ldr r2, [sp]
	cmp r1, r2
	bge _022592D2
	ldr r1, [sp, #0x20]
	cmp r1, r6
	ble _022592A6
	ldr r2, [sp, #0x18]
	cmp r1, r2
	blt _022592B2
_022592A6:
	ldr r2, [sp, #0x14]
	cmp r1, r2
	ble _022592D2
	ldr r2, [sp, #0x10]
	cmp r1, r2
	bge _022592D2
_022592B2:
	cmp r0, #3
	beq _022592D2
	add r0, sp, #0x28
	bl ov48_02258F0C
	add r0, sp, #0x1c
	bl ov48_02258F0C
	add r0, sp, #0x28
	add r1, sp, #0x1c
	bl ov48_022592E0
	cmp r0, r7
	bhs _022592D2
	add r7, r0, #0
	str r4, [sp, #8]
_022592D2:
	ldr r0, [sp, #0xc]
	add r4, r4, #1
	cmp r4, r0
	blo _02259272
_022592DA:
	ldr r0, [sp, #8]
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov48_022591D8

