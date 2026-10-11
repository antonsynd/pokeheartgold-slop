	.include "asm/macros.inc"
	.include "overlay_10.inc"
	.include "global.inc"
	.public ov10_0221E0EC
	.extern ov10_0221EF24

	.text

	.text
	thumb_func_start ov10_0221E0EC
ov10_0221E0EC: ; 0x0221E0EC
	push {r4, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov10_0221EF24
	ldr r1, _0221E114 ; =0x000003CF
	mov r0, #0xc0
	ldrb r2, [r4, r1]
	mul r0, r2
	add r2, r4, r0
	add r0, r1, #0
	sub r0, #0x7a
	ldrb r0, [r4, r0]
	sub r1, #0x73
	add r2, r2, r0
	ldr r0, _0221E118 ; =0x00002D6C
	ldrb r0, [r2, r0]
	str r0, [r4, r1]
	pop {r4, pc}
	.balign 4, 0
_0221E114: .word 0x000003CF
_0221E118: .word 0x00002D6C
	thumb_func_end ov10_0221E0EC

