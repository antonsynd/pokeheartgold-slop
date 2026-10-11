	.include "asm/macros.inc"
	.include "overlay_10.inc"
	.include "global.inc"
	.public ov10_0221CCB4
	.extern ov10_0221EEF0
	.extern ov10_0221EF24
	.extern ov10_0221EF34

	.text

	.text
	thumb_func_start ov10_0221CCB4
ov10_0221CCB4: ; 0x0221CCB4
	push {r4, r5, r6, lr}
	add r5, r1, #0
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
	add r6, r0, #0
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x1b
	mov r3, #0
	bl GetBattlerVar
	cmp r4, r0
	beq _0221CCFC
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x1c
	mov r3, #0
	bl GetBattlerVar
	cmp r4, r0
	bne _0221CD06
_0221CCFC:
	mov r0, #0xd7
	mov r1, #1
	lsl r0, r0, #2
	str r1, [r5, r0]
	pop {r4, r5, r6, pc}
_0221CD06:
	mov r0, #0xd7
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
	pop {r4, r5, r6, pc}
	thumb_func_end ov10_0221CCB4

