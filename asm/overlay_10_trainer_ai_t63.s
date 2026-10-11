	.include "asm/macros.inc"
	.include "overlay_10.inc"
	.include "global.inc"
	.public ov10_0221DCEC
	.extern ov10_0221EEF0
	.extern ov10_0221EF24
	.extern ov10_0221EF34

	.text

	.text
	thumb_func_start ov10_0221DCEC
ov10_0221DCEC: ; 0x0221DCEC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r0, r5, #0
	mov r1, #1
	bl ov10_0221EF24
	add r0, r5, #0
	bl ov10_0221EEF0
	add r6, r0, #0
	add r0, r5, #0
	bl ov10_0221EEF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov10_0221EEF0
	lsl r1, r6, #0x18
	add r7, r0, #0
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl ov10_0221EF34
	cmp r4, #0
	beq _0221DD24
	cmp r4, #1
	beq _0221DD3E
	pop {r3, r4, r5, r6, r7, pc}
_0221DD24:
	mov r1, #0xc0
	mul r1, r0
	ldr r0, _0221DD58 ; =0x00002DC8
	add r1, r5, r1
	ldr r0, [r1, r0]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1d
	beq _0221DD56
	add r0, r5, #0
	add r1, r7, #0
	bl ov10_0221EF24
	pop {r3, r4, r5, r6, r7, pc}
_0221DD3E:
	mov r1, #0xc0
	mul r1, r0
	ldr r0, _0221DD58 ; =0x00002DC8
	add r1, r5, r1
	ldr r0, [r1, r0]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1d
	beq _0221DD56
	add r0, r5, #0
	add r1, r7, #0
	bl ov10_0221EF24
_0221DD56:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0221DD58: .word 0x00002DC8
	thumb_func_end ov10_0221DCEC

