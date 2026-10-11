	.include "asm/macros.inc"
	.include "overlay_10.inc"
	.include "global.inc"
	.public ov10_0221E5B0
	.extern ov10_0221EEF0
	.extern ov10_0221EF24
	.extern ov10_0221EF34

	.text

	.text
	thumb_func_start ov10_0221E5B0
ov10_0221E5B0: ; 0x0221E5B0
	push {r4, r5, r6, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov10_0221EF24
	add r0, r4, #0
	bl ov10_0221EEF0
	add r1, r0, #0
	lsl r1, r1, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl ov10_0221EF34
	mov r2, #0xd7
	mov r3, #0xd7
	mov r1, #0
	lsl r2, r2, #2
	str r1, [r4, r2]
	mov r2, #0xc0
	mul r2, r0
	add r0, r4, r2
	ldr r2, _0221E5FC ; =0x00002D58
	lsl r3, r3, #2
_0221E5E2:
	ldrsb r5, [r0, r2]
	cmp r5, #6
	ble _0221E5F0
	ldr r6, [r4, r3]
	sub r5, r5, #6
	add r5, r6, r5
	str r5, [r4, r3]
_0221E5F0:
	add r1, r1, #1
	add r0, r0, #1
	cmp r1, #8
	blt _0221E5E2
	pop {r4, r5, r6, pc}
	nop
_0221E5FC: .word 0x00002D58
	thumb_func_end ov10_0221E5B0

