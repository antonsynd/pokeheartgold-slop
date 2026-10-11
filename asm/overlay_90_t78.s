	.include "asm/macros.inc"
	.include "overlay_90.inc"
	.include "global.inc"
	.public ov90_0225A1B8
	.public ov90_0225A204
	.public ov90_0225A258
	.public ov90_0225A28C
	.extern ov90_022588CC

	.text

	.text
	thumb_func_start ov90_0225A1B8
ov90_0225A1B8: ; 0x0225A1B8
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _0225A1FC ; =0x04000006
	ldrh r4, [r0]
	cmp r4, #0xc0
	bge _0225A1F8
	mov r0, #0xc1
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl sub_02014A60
	add r6, r0, #0
	ldr r0, _0225A200 ; =0x04000004
	ldrh r1, [r0]
	mov r0, #2
	tst r0, r1
	beq _0225A1F8
	lsl r4, r4, #1
	ldr r0, [r5]
	mov r1, #0
	ldrsh r3, [r6, r4]
	ldr r0, [r0]
	add r2, r1, #0
	bl BgSetPosTextAndCommit
	ldr r0, [r5]
	ldrsh r3, [r6, r4]
	ldr r0, [r0]
	mov r1, #1
	mov r2, #0
	bl BgSetPosTextAndCommit
_0225A1F8:
	pop {r4, r5, r6, pc}
	nop
_0225A1FC: .word 0x04000006
_0225A200: .word 0x04000004
	thumb_func_end ov90_0225A1B8

	thumb_func_start ov90_0225A204
ov90_0225A204: ; 0x0225A204
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	str r0, [sp]
	ldrb r0, [r5, #8]
	mov r4, #0
	cmp r0, #0
	ble _0225A252
	ldr r6, [sp]
_0225A216:
	add r1, r5, r4
	ldrb r1, [r1, #4]
	add r0, r5, #0
	bl ov90_022588CC
	str r0, [r6, #8]
	cmp r0, #0
	bne _0225A22A
	bl GF_AssertFail
_0225A22A:
	add r0, r5, r4
	str r0, [sp, #4]
	ldr r0, [sp]
	add r7, r0, r4
	ldr r0, [sp, #4]
	ldrb r0, [r0, #4]
	bl sub_020348A8
	ldr r1, [sp]
	strb r0, [r1, r4]
	ldr r0, [sp, #4]
	ldrb r0, [r0, #4]
	bl sub_020348CC
	strb r0, [r7, #4]
	ldrb r0, [r5, #8]
	add r4, r4, #1
	add r6, r6, #4
	cmp r4, r0
	blt _0225A216
_0225A252:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov90_0225A204

	thumb_func_start ov90_0225A258
ov90_0225A258: ; 0x0225A258
	push {r3, r4, r5, r6}
	ldrb r4, [r0, #8]
	mov r3, #0
	add r2, r3, #0
	sub r4, r4, #1
	cmp r4, #0
	ble _0225A286
	mov r5, #1
_0225A268:
	add r4, r1, r2
	ldrb r6, [r4, #1]
	ldrb r4, [r1, r2]
	cmp r4, r6
	bne _0225A27A
	cmp r4, #0
	beq _0225A27A
	cmp r6, #0
	bne _0225A27C
_0225A27A:
	add r3, r5, #0
_0225A27C:
	ldrb r4, [r0, #8]
	add r2, r2, #1
	sub r4, r4, #1
	cmp r2, r4
	blt _0225A268
_0225A286:
	add r0, r3, #0
	pop {r3, r4, r5, r6}
	bx lr
	thumb_func_end ov90_0225A258

	thumb_func_start ov90_0225A28C
ov90_0225A28C: ; 0x0225A28C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r1, #3
	bl _u32_div_f
	add r4, r1, #0
	add r0, r5, #0
	mov r1, #3
	bl _u32_div_f
	add r1, r4, #1
	cmp r1, #3
	bhs _0225A2A8
	add r4, r1, #0
_0225A2A8:
	lsl r1, r0, #1
	add r0, r0, r1
	add r0, r0, r4
	pop {r3, r4, r5, pc}
	thumb_func_end ov90_0225A28C

