	.include "asm/macros.inc"
	.include "overlay_87.inc"
	.include "global.inc"
	.public ov87_021E7C50

	.text

	.text
	thumb_func_start ov87_021E7C50
ov87_021E7C50: ; 0x021E7C50
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r6, r2, #0
	add r7, r3, #0
	str r6, [sp]
	add r5, r0, #0
	str r7, [sp, #4]
	mov r0, #0x7a
	str r0, [sp, #8]
	add r0, #0xb2
	lsl r4, r1, #4
	ldr r0, [r5, r0]
	mov r1, #0xcf
	mov r2, #0x20
	mov r3, #0
	bl AddCharResObjFromNarc
	mov r1, #0x4f
	add r2, r5, r4
	lsl r1, r1, #2
	str r0, [r2, r1]
	str r6, [sp]
	str r7, [sp, #4]
	mov r0, #5
	str r0, [sp, #8]
	mov r0, #0x7a
	str r0, [sp, #0xc]
	add r0, #0xb6
	ldr r0, [r5, r0]
	mov r1, #0xcf
	mov r2, #0x21
	mov r3, #0
	bl AddPlttResObjFromNarc
	mov r1, #5
	add r2, r5, r4
	lsl r1, r1, #6
	str r0, [r2, r1]
	str r6, [sp]
	mov r0, #2
	str r0, [sp, #4]
	mov r0, #0x7a
	str r0, [sp, #8]
	add r0, #0xba
	ldr r0, [r5, r0]
	mov r1, #0xcf
	mov r2, #0x1f
	mov r3, #0
	bl AddCellOrAnimResObjFromNarc
	mov r1, #0x51
	add r2, r5, r4
	lsl r1, r1, #2
	str r0, [r2, r1]
	str r6, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x7a
	str r0, [sp, #8]
	add r0, #0xbe
	ldr r0, [r5, r0]
	mov r1, #0xcf
	mov r2, #0x1e
	mov r3, #0
	bl AddCellOrAnimResObjFromNarc
	mov r1, #0x52
	add r2, r5, r4
	lsl r1, r1, #2
	str r0, [r2, r1]
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov87_021E7C50

