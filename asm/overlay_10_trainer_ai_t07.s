	.include "asm/macros.inc"
	.include "overlay_10.inc"
	.include "global.inc"
	.public ov10_0221C484
	.extern ov10_0221EEF0
	.extern ov10_0221EF24

	.text

	.text
	thumb_func_start ov10_0221C484
ov10_0221C484: ; 0x0221C484
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r0, r4, #0
	mov r1, #1
	bl ov10_0221EF24
	add r0, r4, #0
	bl ov10_0221EEF0
	mov r2, #0xd6
	lsl r2, r2, #2
	sub r3, r2, #3
	ldrb r5, [r4, r3]
	add r1, r4, r2
	ldrsb r3, [r1, r5]
	add r0, r3, r0
	strb r0, [r1, r5]
	sub r0, r2, #3
	ldrb r2, [r4, r0]
	ldrsb r0, [r1, r2]
	cmp r0, #0
	bge _0221C4B4
	mov r0, #0
	strb r0, [r1, r2]
_0221C4B4:
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov10_0221C484

