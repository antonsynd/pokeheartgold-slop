	.include "asm/macros.inc"
	.include "overlay_80_02237A70.inc"
	.include "global.inc"
	.public ov80_02237ADC
	.extern ov80_02237A70

    .text

	.text
	thumb_func_start ov80_02237ADC
ov80_02237ADC: ; 0x02237ADC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r6, r2, #0
	str r0, [sp]
	str r1, [sp, #4]
	add r7, r3, #0
	mov r4, #0
	add r5, r6, #0
_02237AEC:
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add r2, r4, #0
	bl ov80_02237A70
	mov r1, #0
	strh r0, [r5]
	cmp r4, #0
	ble _02237B12
	lsl r0, r4, #1
	ldrh r3, [r6, r0]
	add r2, r6, #0
_02237B04:
	ldrh r0, [r2]
	cmp r0, r3
	beq _02237B12
	add r1, r1, #1
	add r2, r2, #2
	cmp r1, r4
	blt _02237B04
_02237B12:
	cmp r1, r4
	bne _02237B1A
	add r5, r5, #2
	add r4, r4, #1
_02237B1A:
	cmp r4, r7
	blt _02237AEC
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov80_02237ADC

