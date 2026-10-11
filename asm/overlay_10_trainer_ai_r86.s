	.include "asm/macros.inc"
	.include "overlay_10.inc"
	.include "global.inc"
	.public ov10_0221E600
	.extern ov10_0221EEF0
	.extern ov10_0221EF24
	.extern ov10_0221EF34

	.text

	.text
	thumb_func_start ov10_0221E600
ov10_0221E600: ; 0x0221E600
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
	ldr r3, _0221E648 ; =0x000003CF
	mov r1, #0xc0
	ldrb r6, [r5, r3]
	add r2, r0, #0
	mul r2, r1
	add r0, r5, r2
	mul r1, r6
	add r1, r5, r1
	ldr r2, _0221E64C ; =0x00002D58
	add r0, r0, r4
	add r1, r1, r4
	ldrsb r0, [r0, r2]
	ldrsb r1, [r1, r2]
	sub r3, #0x73
	sub r0, r0, r1
	str r0, [r5, r3]
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0221E648: .word 0x000003CF
_0221E64C: .word 0x00002D58
	thumb_func_end ov10_0221E600

