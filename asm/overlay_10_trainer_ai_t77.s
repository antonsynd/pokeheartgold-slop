	.include "asm/macros.inc"
	.include "overlay_10.inc"
	.include "global.inc"
	.public ov10_0221E11C
	.extern ov10_0221EEF0
	.extern ov10_0221EF24
	.extern ov10_0221EF34

	.text

	.text
	thumb_func_start ov10_0221E11C
ov10_0221E11C: ; 0x0221E11C
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #1
	bl ov10_0221EF24
	add r0, r4, #0
	bl ov10_0221EEF0
	add r5, r0, #0
	add r0, r4, #0
	bl ov10_0221EEF0
	lsl r1, r5, #0x18
	add r7, r0, #0
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl ov10_0221EF34
	add r5, r0, #0
	add r0, r6, #0
	add r1, r4, #0
	add r2, r5, #0
	bl GetBattlerLearnedMoveCount
	mov r1, #0xc0
	mul r1, r5
	add r2, r4, r1
	ldr r1, _0221E174 ; =0x00002DCC
	ldr r1, [r2, r1]
	lsl r1, r1, #0x13
	lsr r2, r1, #0x1d
	sub r1, r0, #1
	cmp r2, r1
	blo _0221E170
	cmp r0, #1
	ble _0221E170
	add r0, r4, #0
	add r1, r7, #0
	bl ov10_0221EF24
_0221E170:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0221E174: .word 0x00002DCC
	thumb_func_end ov10_0221E11C

