	.include "asm/macros.inc"
	.include "overlay_49_0225EEAC.inc"
	.include "global.inc"
	.public ov49_022614CC
	.extern ov49_02269C00

    .text

	.text
	thumb_func_start ov49_022614CC
ov49_022614CC: ; 0x022614CC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0x12
	bl ov49_0225A10C
	mov r4, #1
	mov r6, #0
	add r7, r4, #0
_022614E0:
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl ov49_0225A40C
	add r0, r5, #0
	add r1, r7, #0
	mov r2, #6
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r5, #0
	add r2, r4, #0
	bl ov49_0225A144
	add r4, r4, #1
	cmp r4, #0x12
	blt _022614E0
	add r0, r5, #0
	mov r1, #1
	mov r2, #7
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #0
	bl ov49_0225A144
	ldr r2, [sp]
	ldr r3, _0226153C ; =ov49_02269C00
	add r2, #8
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	add r0, r5, #0
	bl ov49_0225A154
	ldr r1, [sp]
	str r0, [r1, #8]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0226153C: .word ov49_02269C00
	thumb_func_end ov49_022614CC

