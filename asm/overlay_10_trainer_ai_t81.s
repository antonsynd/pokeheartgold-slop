	.include "asm/macros.inc"
	.include "overlay_10.inc"
	.include "global.inc"
	.public ov10_0221E290
	.extern ov10_0221EEF0
	.extern ov10_0221EF24
	.extern ov10_0221EF34

	.text

	.text
	thumb_func_start ov10_0221E290
ov10_0221E290: ; 0x0221E290
	push {r4, lr}
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
	mov r1, #0x15
	lsl r1, r1, #4
	ldr r2, [r4, r1]
	mov r1, #0xc0
	mul r1, r0
	ldr r0, _0221E2C8 ; =0x00002DD4
	add r1, r4, r1
	ldr r0, [r1, r0]
	sub r1, r2, r0
	mov r0, #0xd7
	lsl r0, r0, #2
	str r1, [r4, r0]
	pop {r4, pc}
	.balign 4, 0
_0221E2C8: .word 0x00002DD4
	thumb_func_end ov10_0221E290

