	.include "asm/macros.inc"
	.include "overlay_10.inc"
	.include "global.inc"
	.public ov10_0221EA7C
	.extern ov10_0221EEF0
	.extern ov10_0221EF24
	.extern ov10_0221EF34

	.text

	.text
	thumb_func_start ov10_0221EA7C
ov10_0221EA7C: ; 0x0221EA7C
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
	add r2, r0, #0
	mov r1, #0xc0
	mul r2, r1
	ldr r0, _0221EAC4 ; =0x00002DD4
	add r2, r4, r2
	add r1, #0x90
	ldr r2, [r2, r0]
	ldr r0, [r4, r1]
	cmp r2, r0
	bge _0221EAB8
	mov r0, #0xd7
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r4, r0]
	pop {r4, pc}
_0221EAB8:
	mov r1, #1
	mov r0, #0xd7
	lsl r0, r0, #2
	str r1, [r4, r0]
	pop {r4, pc}
	nop
_0221EAC4: .word 0x00002DD4
	thumb_func_end ov10_0221EA7C

