	.include "asm/macros.inc"
	.include "overlay_49_022649F4.inc"
	.include "global.inc"
	.public ov49_02264C04
	.extern ov49_02269EC4
	.extern ov49_02269EC6

    .text

	.text
	thumb_func_start ov49_02264C04
ov49_02264C04: ; 0x02264C04
	push {r4, r5, r6, lr}
	add r6, r1, #0
	add r5, r0, #0
	add r4, r2, #0
	bl ov49_02259FE8
	add r1, r6, #0
	bl ov45_0222AB28
	cmp r0, #1
	bne _02264C36
	ldr r3, _02264C44 ; =ov49_02269EC4
	ldr r0, _02264C48 ; =0x00000163
	mov r2, #0
_02264C20:
	ldrh r1, [r3]
	cmp r4, r1
	bne _02264C2E
	ldr r0, _02264C4C ; =ov49_02269EC6
	lsl r1, r2, #2
	ldrh r4, [r0, r1]
	b _02264C36
_02264C2E:
	add r2, r2, #1
	add r3, r3, #4
	cmp r2, r0
	blo _02264C20
_02264C36:
	add r0, r5, #0
	mov r1, #3
	add r2, r4, #0
	bl ov49_0225A30C
	pop {r4, r5, r6, pc}
	nop
_02264C44: .word ov49_02269EC4
_02264C48: .word 0x00000163
_02264C4C: .word ov49_02269EC6
	thumb_func_end ov49_02264C04

