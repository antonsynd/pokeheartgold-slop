	.include "asm/macros.inc"
	.include "overlay_90.inc"
	.include "global.inc"
	.public ov90_02259DAC
	.extern ov90_022591F4
	.extern ov90_02259210
	.extern ov90_02259220
	.extern ov90_022592A8

	.text

	.text
	thumb_func_start ov90_02259DAC
ov90_02259DAC: ; 0x02259DAC
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r6, r0, #0
	add r5, r1, #0
	add r4, r3, #0
	cmp r2, #0
	beq _02259DE8
	cmp r4, #0
	beq _02259E14
	add r0, r5, #0
	bl ov90_022591F4
	add r0, r5, #0
	add r1, r4, #0
	bl ov90_02259210
	mov r0, #0x10
	str r0, [sp]
	add r4, sp, #8
	mov r3, #0x14
	ldrsh r3, [r4, r3]
	add r0, r5, #0
	mov r1, #0xb
	lsl r3, r3, #0x18
	add r2, r6, #0
	lsr r3, r3, #0x18
	bl ov90_022592A8
	add sp, #4
	pop {r3, r4, r5, r6, pc}
_02259DE8:
	cmp r4, #0
	beq _02259E14
	add r0, r5, #0
	bl ov90_022591F4
	ldr r2, [sp, #0x18]
	add r0, r5, #0
	add r1, r4, #0
	bl ov90_02259220
	mov r0, #0x10
	str r0, [sp]
	add r4, sp, #8
	mov r3, #0x14
	ldrsh r3, [r4, r3]
	add r0, r5, #0
	mov r1, #0xc
	lsl r3, r3, #0x18
	add r2, r6, #0
	lsr r3, r3, #0x18
	bl ov90_022592A8
_02259E14:
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	thumb_func_end ov90_02259DAC

