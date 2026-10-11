	.include "asm/macros.inc"
	.include "overlay_49_022649F4.inc"
	.include "global.inc"
	.public ov49_02264F9C
	.public ov49_02265044
	.public ov49_02265110
	.public ov49_02265170
	.public ov49_022651E8
	.extern ov49_02269E1C
	.extern ov49_02269E24

    .text

	.text
	thumb_func_start ov49_02264F9C
ov49_02264F9C: ; 0x02264F9C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r1, #0
	add r7, r2, #0
	str r0, [sp]
	add r0, r5, #0
	add r1, r7, #0
	str r3, [sp, #4]
	ldr r6, [sp, #0x20]
	bl ov49_0225A10C
	ldr r0, [sp]
	mov r4, #0
	str r7, [r0, #0x20]
	cmp r7, #0
	bls _02265006
	sub r0, r7, #1
	str r0, [sp, #8]
_02264FC0:
	cmp r6, #0
	beq _02264FEA
	ldr r0, [sp, #8]
	cmp r4, r0
	bne _02264FEA
	cmp r6, #1
	bne _02264FDC
	ldr r2, _0226503C ; =0x00000205
	add r0, r5, #0
	mov r1, #3
	bl ov49_0225A30C
	add r1, r0, #0
	b _02264FF8
_02264FDC:
	add r0, r5, #0
	mov r1, #3
	mov r2, #0xeb
	bl ov49_0225A30C
	add r1, r0, #0
	b _02264FF8
_02264FEA:
	ldr r2, [sp, #4]
	add r0, r5, #0
	mov r1, #3
	add r2, r2, r4
	bl ov49_0225A30C
	add r1, r0, #0
_02264FF8:
	add r0, r5, #0
	add r2, r4, #0
	bl ov49_0225A144
	add r4, r4, #1
	cmp r4, r7
	blo _02264FC0
_02265006:
	ldr r3, _02265040 ; =ov49_02269E24
	ldr r2, [sp]
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [sp]
	ldr r1, [r0, #0x20]
	strh r1, [r0, #0x10]
	ldr r1, [r0, #0x20]
	ldrh r0, [r0, #0x12]
	cmp r0, r1
	bls _0226502C
	ldr r0, [sp]
	strh r1, [r0, #0x12]
_0226502C:
	add r0, r5, #0
	bl ov49_0225A154
	ldr r1, [sp]
	str r0, [r1]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	nop
_0226503C: .word 0x00000205
_02265040: .word ov49_02269E24
	thumb_func_end ov49_02264F9C

	thumb_func_start ov49_02265044
ov49_02265044: ; 0x02265044
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	str r0, [sp]
	ldr r0, [sp, #0x20]
	add r5, r1, #0
	str r0, [sp, #0x20]
	ldr r0, [sp, #0x24]
	str r3, [sp, #4]
	str r0, [sp, #0x24]
	add r0, r5, #0
	add r1, r3, #0
	add r4, r2, #0
	bl ov49_0225A120
	ldr r1, [sp, #4]
	ldr r0, [sp]
	mov r7, #0
	str r1, [r0, #0x20]
	add r0, r1, #0
	beq _022650D4
	sub r0, r0, #1
	str r0, [sp, #8]
_02265070:
	ldr r0, [sp, #0x24]
	cmp r0, #0
	beq _022650A0
	ldr r0, [sp, #8]
	cmp r7, r0
	bne _022650A0
	ldr r0, [sp, #0x24]
	add r6, r4, #0
	cmp r0, #1
	bne _02265092
	ldr r2, _02265108 ; =0x00000205
	add r0, r5, #0
	mov r1, #3
	bl ov49_0225A30C
	add r1, r0, #0
	b _022650C4
_02265092:
	add r0, r5, #0
	mov r1, #3
	mov r2, #0xeb
	bl ov49_0225A30C
	add r1, r0, #0
	b _022650C4
_022650A0:
	bl MTRandom
	add r1, r4, #0
	bl _u32_div_f
	add r0, r5, #0
	add r6, r1, #0
	bl ov49_0225A164
	cmp r0, #1
	beq _022650A0
	ldr r2, [sp, #0x20]
	add r0, r5, #0
	mov r1, #3
	add r2, r2, r6
	bl ov49_0225A30C
	add r1, r0, #0
_022650C4:
	add r0, r5, #0
	add r2, r6, #0
	bl ov49_0225A144
	ldr r0, [sp, #4]
	add r7, r7, #1
	cmp r7, r0
	blo _02265070
_022650D4:
	ldr r3, _0226510C ; =ov49_02269E24
	ldr r2, [sp]
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [sp]
	ldr r1, [r0, #0x20]
	strh r1, [r0, #0x10]
	ldr r1, [r0, #0x20]
	ldrh r0, [r0, #0x12]
	cmp r0, r1
	bls _022650FA
	ldr r0, [sp]
	strh r1, [r0, #0x12]
_022650FA:
	add r0, r5, #0
	bl ov49_0225A154
	ldr r1, [sp]
	str r0, [r1]
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_02265108: .word 0x00000205
_0226510C: .word ov49_02269E24
	thumb_func_end ov49_02265044

	thumb_func_start ov49_02265110
ov49_02265110: ; 0x02265110
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	add r7, r0, #0
	add r0, r6, #0
	mov r1, #8
	bl ov49_0225A10C
	mov r0, #8
	ldr r5, _02265168 ; =ov49_02269E1C
	str r0, [r7, #0x20]
	mov r4, #0
_02265126:
	ldrb r2, [r5]
	add r0, r6, #0
	mov r1, #1
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r6, #0
	add r2, r4, #0
	bl ov49_0225A144
	add r4, r4, #1
	add r5, r5, #1
	cmp r4, #8
	blt _02265126
	ldr r3, _0226516C ; =ov49_02269E24
	add r2, r7, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r7, #0x20]
	strh r0, [r7, #0x10]
	ldr r0, [r7, #0x20]
	strh r0, [r7, #0x12]
	add r0, r6, #0
	bl ov49_0225A154
	str r0, [r7]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02265168: .word ov49_02269E1C
_0226516C: .word ov49_02269E24
	thumb_func_end ov49_02265110

	thumb_func_start ov49_02265170
ov49_02265170: ; 0x02265170
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #4
	bl ov49_0225A10C
	mov r0, #4
	mov r4, #0
	str r0, [r6, #0x20]
	add r7, r4, #0
_02265186:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ov49_0225A38C
	add r0, r5, #0
	mov r1, #1
	mov r2, #0x27
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r5, #0
	add r2, r4, #0
	bl ov49_0225A144
	add r4, r4, #1
	cmp r4, #3
	blt _02265186
	add r0, r5, #0
	mov r1, #1
	mov r2, #0x25
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #3
	bl ov49_0225A144
	ldr r3, _022651E4 ; =ov49_02269E24
	add r2, r6, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r6, #0x20]
	strh r0, [r6, #0x10]
	ldr r0, [r6, #0x20]
	strh r0, [r6, #0x12]
	add r0, r5, #0
	bl ov49_0225A154
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_022651E4: .word ov49_02269E24
	thumb_func_end ov49_02265170

	thumb_func_start ov49_022651E8
ov49_022651E8: ; 0x022651E8
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	mov r1, #4
	bl ov49_0225A10C
	mov r0, #4
	mov r4, #0
	str r0, [r6, #0x20]
	add r7, r4, #0
_022651FE:
	add r0, r5, #0
	add r1, r4, #0
	add r2, r7, #0
	bl ov49_0225A37C
	add r0, r5, #0
	mov r1, #1
	mov r2, #0x26
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r5, #0
	add r2, r4, #0
	bl ov49_0225A144
	add r4, r4, #1
	cmp r4, #3
	blt _022651FE
	add r0, r5, #0
	mov r1, #1
	mov r2, #0x25
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r5, #0
	mov r2, #3
	bl ov49_0225A144
	ldr r3, _0226525C ; =ov49_02269E24
	add r2, r6, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldr r0, [r6, #0x20]
	strh r0, [r6, #0x10]
	ldr r0, [r6, #0x20]
	strh r0, [r6, #0x12]
	add r0, r5, #0
	bl ov49_0225A154
	str r0, [r6]
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0226525C: .word ov49_02269E24
	thumb_func_end ov49_022651E8

