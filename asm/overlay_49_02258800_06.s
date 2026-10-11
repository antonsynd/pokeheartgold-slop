	.include "asm/macros.inc"
	.include "overlay_49_02258800.inc"
	.include "global.inc"
	.public ov49_022589D8
	.public ov49_02258CB8
	.public ov49_02258DAC
	.public ov49_02258EEC
	.public ov49_02258FDC
	.public ov49_022593C0

    .text

	thumb_func_start ov49_02258CB8
ov49_02258CB8: ; 0x02258CB8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r0, #0
	add r7, r1, #0
	str r2, [sp, #4]
	bl ov49_022593C0
	mov r6, #0
	str r0, [sp, #8]
	add r4, r6, #0
_02258CCC:
	str r4, [sp]
	add r2, sp, #0xc
	ldr r0, [r5, #0x14]
	add r1, r7, #4
	add r2, #2
	add r3, sp, #0xc
	bl ov49_022589D8
	cmp r0, #0
	bne _02258CE6
	add sp, #0x1c
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02258CE6:
	add r0, r5, #0
	bl ov49_02258DAC
	cmp r0, #0
	bne _02258CF4
	mov r6, #1
	b _02258D06
_02258CF4:
	add r1, sp, #0xc
	add r2, sp, #0xc
	ldrh r1, [r1, #2]
	ldrh r2, [r2]
	bl ov49_02258FDC
	cmp r0, #0
	bne _02258D06
	mov r6, #1
_02258D06:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r6, #0
	beq _02258CCC
	add r1, sp, #0xc
	ldrh r0, [r1, #2]
	lsl r0, r0, #4
	strh r0, [r1, #4]
	ldrh r0, [r1]
	lsl r0, r0, #4
	strh r0, [r1, #6]
	strh r7, [r1, #8]
	mov r0, #0
	strh r0, [r1, #0xa]
	mov r0, #1
	strh r0, [r1, #0xc]
	ldr r0, [sp, #4]
	strh r0, [r1, #0xe]
	ldr r0, [r5]
	add r1, sp, #0x10
	bl ov42_022280B8
	ldr r1, [sp, #8]
	str r0, [r1]
	ldr r0, [r5, #4]
	ldr r1, [r1]
	bl ov45_0223070C
	ldr r1, [sp, #8]
	mov r2, #0
	str r0, [r1, #4]
	add r0, r5, #0
	bl ov49_02258EEC
	ldr r0, [sp, #8]
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov49_02258CB8

