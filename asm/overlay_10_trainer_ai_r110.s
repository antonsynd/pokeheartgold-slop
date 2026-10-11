	.include "asm/macros.inc"
	.include "overlay_10.inc"
	.include "global.inc"
	.public ov10_0221EDB4
	.extern ov10_0221EEF0
	.extern ov10_0221EF24
	.extern ov10_0221EF34

	.text

	.text
	thumb_func_start ov10_0221EDB4
ov10_0221EDB4: ; 0x0221EDB4
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r0, r5, #0
	mov r1, #1
	bl ov10_0221EF24
	add r0, r5, #0
	bl ov10_0221EEF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov10_0221EEF0
	lsl r1, r4, #0x18
	add r6, r0, #0
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov10_0221EF34
	mov r1, #0xc0
	mul r1, r0
	ldr r0, _0221EDF4 ; =0x00002DC8
	add r1, r5, r1
	ldr r0, [r1, r0]
	lsr r0, r0, #0x1f
	beq _0221EDF0
	add r0, r5, #0
	add r1, r6, #0
	bl ov10_0221EF24
_0221EDF0:
	pop {r4, r5, r6, pc}
	nop
_0221EDF4: .word 0x00002DC8
	thumb_func_end ov10_0221EDB4

