	.include "asm/macros.inc"
	.include "overlay_10.inc"
	.include "global.inc"
	.public ov10_0221C7D8
	.extern ov10_0221EEF0
	.extern ov10_0221EF24
	.extern ov10_0221EF34

	.text

	.text
	thumb_func_start ov10_0221C7D8
ov10_0221C7D8: ; 0x0221C7D8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov10_0221EF24
	add r0, r5, #0
	bl ov10_0221EEF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov10_0221EEF0
	add r6, r0, #0
	add r0, r5, #0
	bl ov10_0221EEF0
	lsl r1, r4, #0x18
	str r0, [sp]
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov10_0221EF34
	add r1, r0, #0
	add r0, r7, #0
	bl BattleSystem_GetFieldSide
	lsl r0, r0, #2
	add r1, r5, r0
	mov r0, #0x6f
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	tst r0, r6
	beq _0221C826
	ldr r1, [sp]
	add r0, r5, #0
	bl ov10_0221EF24
_0221C826:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov10_0221C7D8

