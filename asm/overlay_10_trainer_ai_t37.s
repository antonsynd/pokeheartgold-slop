	.include "asm/macros.inc"
	.include "overlay_10.inc"
	.include "global.inc"
	.public ov10_0221CE70
	.extern ov10_0221EEF0
	.extern ov10_0221EF24
	.extern ov10_0221EF34

	.text

	.text
	thumb_func_start ov10_0221CE70
ov10_0221CE70: ; 0x0221CE70
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
	lsl r0, r0, #1
	add r1, r4, r0
	ldr r0, _0221CEA0 ; =0x0000307C
	ldrh r1, [r1, r0]
	mov r0, #0xd7
	lsl r0, r0, #2
	str r1, [r4, r0]
	pop {r4, pc}
	nop
_0221CEA0: .word 0x0000307C
	thumb_func_end ov10_0221CE70

