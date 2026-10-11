	.include "asm/macros.inc"
	.include "overlay_10.inc"
	.include "global.inc"
	.public ov10_0221DF20
	.extern ov10_0221EEF0
	.extern ov10_0221EF24
	.extern ov10_0221EF34

	.text

	.text
	thumb_func_start ov10_0221DF20
ov10_0221DF20: ; 0x0221DF20
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r7, r0, #0
	add r0, r5, #0
	mov r1, #1
	bl ov10_0221EF24
	add r0, r5, #0
	bl ov10_0221EEF0
	add r6, r0, #0
	add r0, r5, #0
	bl ov10_0221EEF0
	lsl r1, r6, #0x18
	add r4, r0, #0
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov10_0221EF34
	add r1, r0, #0
	add r0, r7, #0
	bl BattleSystem_GetFieldSide
	cmp r4, #4
	beq _0221DF5E
	mov r1, #1
	lsl r1, r1, #0xa
	cmp r4, r1
	beq _0221DF74
	pop {r3, r4, r5, r6, r7, pc}
_0221DF5E:
	lsl r0, r0, #3
	add r1, r5, r0
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	lsl r0, r0, #0x1e
	lsr r1, r0, #0x1e
	mov r0, #0xd7
	lsl r0, r0, #2
	str r1, [r5, r0]
	pop {r3, r4, r5, r6, r7, pc}
_0221DF74:
	lsl r0, r0, #3
	add r2, r5, r0
	mov r0, #0x72
	lsl r0, r0, #2
	ldr r0, [r2, r0]
	sub r1, #0xa4
	lsl r0, r0, #0x1c
	lsr r0, r0, #0x1e
	str r0, [r5, r1]
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov10_0221DF20

