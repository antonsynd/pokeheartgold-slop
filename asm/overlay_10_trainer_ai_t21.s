	.include "asm/macros.inc"
	.include "overlay_10.inc"
	.include "global.inc"
	.public ov10_0221C8A8
	.extern ov10_0221EEF0
	.extern ov10_0221EF24

	.text

	.text
	thumb_func_start ov10_0221C8A8
ov10_0221C8A8: ; 0x0221C8A8
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r0, r5, #0
	mov r1, #1
	bl ov10_0221EF24
	add r0, r5, #0
	bl ov10_0221EEF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov10_0221EEF0
	add r1, r0, #0
	mov r0, #0xd7
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	cmp r0, r4
	ble _0221C8D4
	add r0, r5, #0
	bl ov10_0221EF24
_0221C8D4:
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov10_0221C8A8

