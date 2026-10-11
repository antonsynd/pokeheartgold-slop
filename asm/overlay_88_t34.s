	.include "asm/macros.inc"
	.include "overlay_88.inc"
	.include "global.inc"
	.public ov88_02259404
	.extern ov88_02259280
	.extern ov88_02259560
	.extern ov88_022595DC
	.extern ov88_022595E4
	.extern ov88_02259910

	.text

	.text
	thumb_func_start ov88_02259404
ov88_02259404: ; 0x02259404
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r6, r0, #0
	add r5, r1, #0
	add r0, r2, #0
	add r1, sp, #0x14
	str r2, [sp, #4]
	str r3, [sp, #8]
	bl ov45_0222AB38
	mov r0, #2
	add r4, r6, #0
	ldr r7, _022594DC ; =ov88_02259910
	str r0, [sp, #0xc]
	add r4, #0x40
_02259422:
	ldrb r0, [r4]
	cmp r0, #0
	beq _02259458
	add r0, r4, #0
	bl ov88_022595E4
	cmp r0, #1
	bne _02259458
	ldr r0, [sp, #0xc]
	add r1, r0, #1
	cmp r1, #3
	bge _02259452
	add r0, r6, #0
	add r0, #0x98
	ldr r0, [r0]
	add r3, r4, #0
	str r0, [sp]
	lsl r0, r1, #5
	ldr r1, [r4, #8]
	ldr r2, [r7, #4]
	add r0, r6, r0
	add r3, #0x1c
	bl ov88_02259560
_02259452:
	add r0, r4, #0
	bl ov88_022595DC
_02259458:
	ldr r0, [sp, #0xc]
	sub r4, #0x20
	sub r7, r7, #4
	sub r0, r0, #1
	str r0, [sp, #0xc]
	bpl _02259422
	ldrb r0, [r6]
	cmp r0, #0
	bne _022594D6
	add r0, r5, #0
	bl ov45_0222DD44
	cmp r0, #1
	bne _022594D6
	add r7, sp, #0x14
_02259476:
	add r0, r5, #0
	bl ov45_0222DD5C
	add r4, r0, #0
	ldr r0, [sp, #8]
	add r3, r6, #0
	str r0, [sp]
	add r3, #0x90
	ldr r3, [r3]
	add r0, r5, #0
	add r1, r7, #0
	add r2, r4, #0
	bl ov45_0222DD78
	cmp r0, #1
	bne _022594C6
	ldr r3, [sp, #4]
	add r0, sp, #0x10
	add r1, r5, #0
	add r2, r4, #0
	bl ov88_02259280
	add r0, r6, #0
	add r0, #0x98
	ldr r0, [r0]
	mov r2, #0x15
	str r0, [sp]
	add r0, r6, #0
	add r6, #0x90
	ldr r1, [r6]
	lsl r2, r2, #4
	add r3, sp, #0x10
	bl ov88_02259560
	add r0, r5, #0
	bl ov45_0222DCE8
	add sp, #0x28
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022594C6:
	add r0, r5, #0
	bl ov45_0222DCE8
	add r0, r5, #0
	bl ov45_0222DD44
	cmp r0, #1
	beq _02259476
_022594D6:
	mov r0, #0
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_022594DC: .word ov88_02259910
	thumb_func_end ov88_02259404

