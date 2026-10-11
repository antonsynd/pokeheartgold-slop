	.include "asm/macros.inc"
	.include "overlay_49_022595CC.inc"
	.include "global.inc"
	.public ov49_022595CC
	.public ov49_0225967C

    .text

	.text
	thumb_func_start ov49_022595CC
ov49_022595CC: ; 0x022595CC
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldrh r0, [r4, #8]
	cmp r0, #3
	bhi _02259672
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022595E4: ; jump table
	.short _022595EC - _022595E4 - 2 ; case 0
	.short _02259616 - _022595E4 - 2 ; case 1
	.short _02259632 - _022595E4 - 2 ; case 2
	.short _02259672 - _022595E4 - 2 ; case 3
_022595EC:
	ldr r0, [r4, #4]
	mov r1, #0
	bl ov45_0223089C
	ldr r0, [r4, #4]
	mov r1, #0
	bl ov45_0223093C
	add r0, r4, #0
	mov r2, #0x7d
	add r0, #0xc
	mov r1, #0
	lsl r2, r2, #0xe
	mov r3, #0x18
	bl ov49_02259320
	mov r0, #0x20
	str r0, [r4, #0x1c]
	ldrh r0, [r4, #8]
	add r0, r0, #1
	strh r0, [r4, #8]
_02259616:
	ldr r0, [r4, #0x1c]
	sub r0, r0, #1
	str r0, [r4, #0x1c]
	bne _02259672
	ldrh r0, [r4, #8]
	add r0, r0, #1
	strh r0, [r4, #8]
	mov r0, #0
	str r0, [r4, #0x1c]
	ldr r0, _02259678 ; =0x0000064E
	bl PlaySE
	add sp, #0xc
	pop {r4, r5, pc}
_02259632:
	add r0, r4, #0
	ldr r1, [r4, #0x1c]
	add r0, #0xc
	bl ov49_0225932C
	add r5, r0, #0
	ldr r0, [r4, #0x1c]
	add r1, sp, #0
	add r0, r0, #1
	str r0, [r4, #0x1c]
	ldr r0, [r4, #4]
	bl ov45_02230908
	add r0, r4, #0
	add r0, #0xc
	bl ov49_022593BC
	str r0, [sp, #4]
	ldr r0, [r4, #4]
	add r1, sp, #0
	bl ov45_022308E4
	cmp r5, #1
	bne _02259672
	ldrh r0, [r4, #8]
	add r0, r0, #1
	strh r0, [r4, #8]
	ldr r0, [r4, #4]
	bl ov45_02230968
	mov r0, #1
	strb r0, [r4, #0xa]
_02259672:
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_02259678: .word 0x0000064E
	thumb_func_end ov49_022595CC

	thumb_func_start ov49_0225967C
ov49_0225967C: ; 0x0225967C
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldrh r0, [r4, #8]
	cmp r0, #3
	bhi _0225972A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02259694: ; jump table
	.short _0225969C - _02259694 - 2 ; case 0
	.short _022596CC - _02259694 - 2 ; case 1
	.short _0225970A - _02259694 - 2 ; case 2
	.short _0225972A - _02259694 - 2 ; case 3
_0225969C:
	ldr r0, [r4, #4]
	mov r1, #0
	bl ov45_0223089C
	ldr r0, [r4, #4]
	mov r1, #0
	bl ov45_0223093C
	add r0, r4, #0
	mov r1, #0x7d
	add r0, #0xc
	lsl r1, r1, #0xe
	mov r2, #0
	mov r3, #0x18
	bl ov49_02259320
	mov r0, #0
	str r0, [r4, #0x1c]
	ldrh r0, [r4, #8]
	add r0, r0, #1
	strh r0, [r4, #8]
	ldr r0, _02259730 ; =0x0000064E
	bl PlaySE
_022596CC:
	add r0, r4, #0
	ldr r1, [r4, #0x1c]
	add r0, #0xc
	bl ov49_0225932C
	add r5, r0, #0
	ldr r0, [r4, #0x1c]
	add r1, sp, #0
	add r0, r0, #1
	str r0, [r4, #0x1c]
	ldr r0, [r4, #4]
	bl ov45_02230908
	add r0, r4, #0
	add r0, #0xc
	bl ov49_022593BC
	str r0, [sp, #4]
	ldr r0, [r4, #4]
	add r1, sp, #0
	bl ov45_022308E4
	cmp r5, #1
	bne _0225972A
	mov r0, #0x20
	str r0, [r4, #0x1c]
	ldrh r0, [r4, #8]
	add sp, #0xc
	add r0, r0, #1
	strh r0, [r4, #8]
	pop {r4, r5, pc}
_0225970A:
	ldr r0, [r4, #0x1c]
	sub r0, r0, #1
	str r0, [r4, #0x1c]
	bne _0225972A
	ldrh r0, [r4, #8]
	add r0, r0, #1
	strh r0, [r4, #8]
	ldr r0, [r4, #4]
	bl ov45_02230968
	ldr r0, [r4, #4]
	mov r1, #1
	bl ov45_0223089C
	mov r0, #1
	strb r0, [r4, #0xa]
_0225972A:
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_02259730: .word 0x0000064E
	thumb_func_end ov49_0225967C

