	.include "asm/macros.inc"
	.include "overlay_49_02258800.inc"
	.include "global.inc"
	.public ov49_02258E7C
	.public ov49_02259294
	.public ov49_022592A8
	.public ov49_022594D8
	.public ov49_02269658
	.public ov49_0226965C

    .text

	thumb_func_start ov49_022594D8
ov49_022594D8: ; 0x022594D8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldrh r0, [r4, #8]
	add r5, r1, #0
	cmp r0, #4
	bhi _022595C0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022594F0: ; jump table
	.short _022594FA - _022594F0 - 2 ; case 0
	.short _0225950C - _022594F0 - 2 ; case 1
	.short _02259522 - _022594F0 - 2 ; case 2
	.short _0225958E - _022594F0 - 2 ; case 3
	.short _022595B0 - _022594F0 - 2 ; case 4
_022594FA:
	ldr r0, _022595C4 ; =ov49_02269658
	mov r1, #4
	bl ov49_02259294
	strh r0, [r4, #0xc]
	ldrh r0, [r4, #8]
	add r0, r0, #1
	strh r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0225950C:
	mov r0, #0xc
	ldrsh r1, [r4, r0]
	sub r1, r1, #1
	strh r1, [r4, #0xc]
	ldrsh r0, [r4, r0]
	cmp r0, #0
	bne _022595C0
	ldrh r0, [r4, #8]
	add r0, r0, #1
	strh r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_02259522:
	ldr r0, [r4]
	mov r1, #4
	bl ov42_02228188
	add r6, r0, #0
	ldr r0, [r4]
	mov r1, #6
	bl ov42_02228188
	add r7, r0, #0
	ldr r0, _022595C8 ; =ov49_0226965C
	mov r1, #4
	bl ov49_02259294
	strh r0, [r4, #0xe]
	mov r2, #0xe
	ldrsh r2, [r4, r2]
	add r0, r5, #0
	add r1, r4, #0
	add r3, r6, #4
	bl ov49_022592A8
	cmp r0, #1
	bne _0225957A
	mov r0, #0xe
	ldrsh r3, [r4, r0]
	cmp r7, r3
	bne _0225956A
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #2
	bl ov49_02258E7C
	mov r0, #4
	strh r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0225956A:
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	bl ov49_02258E7C
	mov r0, #3
	strh r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0225957A:
	mov r3, #0xe
	ldrsh r3, [r4, r3]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #1
	bl ov49_02258E7C
	mov r0, #4
	strh r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_0225958E:
	ldr r0, [r4]
	mov r1, #5
	bl ov42_02228188
	cmp r0, #0
	bne _022595C0
	mov r3, #0xe
	ldrsh r3, [r4, r3]
	add r0, r5, #0
	add r1, r4, #0
	mov r2, #2
	bl ov49_02258E7C
	ldrh r0, [r4, #8]
	add r0, r0, #1
	strh r0, [r4, #8]
	pop {r3, r4, r5, r6, r7, pc}
_022595B0:
	ldr r0, [r4]
	mov r1, #5
	bl ov42_02228188
	cmp r0, #0
	bne _022595C0
	mov r0, #0
	strh r0, [r4, #8]
_022595C0:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_022595C4: .word ov49_02269658
_022595C8: .word ov49_0226965C
	thumb_func_end ov49_022594D8


