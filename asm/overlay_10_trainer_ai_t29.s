	.include "asm/macros.inc"
	.include "overlay_10.inc"
	.include "global.inc"
	.public ov10_0221CA4C
	.extern ov10_0221EEF0
	.extern ov10_0221EF10
	.extern ov10_0221EF24

	.text

	.text
	thumb_func_start ov10_0221CA4C
ov10_0221CA4C: ; 0x0221CA4C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r0, r5, #0
	mov r1, #1
	bl ov10_0221EF24
	add r0, r5, #0
	bl ov10_0221EEF0
	add r4, r0, #0
	add r0, r5, #0
	bl ov10_0221EEF0
	str r0, [sp]
	add r0, r5, #0
	add r1, r4, #0
	bl ov10_0221EF10
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0221CA92
	mov r6, #0xd7
	add r7, r1, #0
	lsl r6, r6, #2
_0221CA7E:
	ldr r1, [r5, r6]
	cmp r1, r0
	beq _0221CA9A
	add r4, r4, #1
	add r0, r5, #0
	add r1, r4, #0
	bl ov10_0221EF10
	cmp r0, r7
	bne _0221CA7E
_0221CA92:
	ldr r1, [sp]
	add r0, r5, #0
	bl ov10_0221EF24
_0221CA9A:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov10_0221CA4C

