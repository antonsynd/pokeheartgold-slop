	.include "asm/macros.inc"
	.include "overlay_90.inc"
	.include "global.inc"
	.public ov90_0225A3E0
	.public ov90_0225A428
	.extern ov90_02258CF0
	.extern ov90_02258D4C
	.extern ov90_0225A60C
	.extern ov90_0225C1F8
	.extern ov90_0225C204
	.extern ov90_0225C228
	.extern ov90_0225C234
	.extern ov90_0225C240
	.extern ov90_0225C24C

	.text

	.text
	thumb_func_start ov90_0225A3E0
ov90_0225A3E0: ; 0x0225A3E0
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	mov r0, #0
	strh r0, [r5, #0x2c]
	strh r0, [r5, #0x2e]
	ldr r0, [r5, #0x10]
	add r4, r1, #0
	lsl r3, r0, #2
	ldr r1, _0225A41C ; =ov90_0225C228
	ldr r2, _0225A420 ; =ov90_0225C1F8
	mov r0, #8
	str r0, [sp]
	add r0, r5, #0
	ldr r6, _0225A424 ; =ov90_0225C204
	ldr r1, [r1, r3]
	ldr r2, [r2, r3]
	ldr r3, [r6, r3]
	add r0, #0x18
	bl ov90_02258CF0
	ldr r2, [r5, #0x18]
	add r0, r5, #0
	add r1, r4, #0
	asr r2, r2, #0xc
	bl ov90_0225A60C
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_0225A41C: .word ov90_0225C228
_0225A420: .word ov90_0225C1F8
_0225A424: .word ov90_0225C204
	thumb_func_end ov90_0225A3E0

	thumb_func_start ov90_0225A428
ov90_0225A428: ; 0x0225A428
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #0x2e
	ldrsh r0, [r4, r0]
	add r5, r1, #0
	cmp r0, #3
	bhi _0225A528
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0225A444: ; jump table
	.short _0225A44C - _0225A444 - 2 ; case 0
	.short _0225A4A2 - _0225A444 - 2 ; case 1
	.short _0225A4F2 - _0225A444 - 2 ; case 2
	.short _0225A522 - _0225A444 - 2 ; case 3
_0225A44C:
	mov r1, #0x2c
	ldrsh r1, [r4, r1]
	add r0, r4, #0
	add r0, #0x18
	bl ov90_02258D4C
	ldr r2, [r4, #0x18]
	add r6, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	asr r2, r2, #0xc
	bl ov90_0225A60C
	mov r0, #0x2c
	ldrsh r0, [r4, r0]
	add r0, r0, #1
	strh r0, [r4, #0x2c]
	cmp r6, #1
	bne _0225A528
	ldr r0, _0225A530 ; =0x00000581
	bl PlaySE
	ldr r0, [r4, #0x10]
	ldr r1, _0225A534 ; =ov90_0225C228
	lsl r3, r0, #2
	ldr r2, _0225A538 ; =ov90_0225C234
	mov r0, #4
	str r0, [sp]
	add r0, r4, #0
	ldr r5, _0225A53C ; =ov90_0225C240
	ldr r1, [r1, r3]
	ldr r2, [r2, r3]
	ldr r3, [r5, r3]
	add r0, #0x18
	bl ov90_02258CF0
	mov r0, #0x2e
	ldrsh r0, [r4, r0]
	add r0, r0, #1
	strh r0, [r4, #0x2e]
	mov r0, #0
	strh r0, [r4, #0x2c]
	b _0225A528
_0225A4A2:
	mov r1, #0x2c
	ldrsh r1, [r4, r1]
	add r0, r4, #0
	add r0, #0x18
	bl ov90_02258D4C
	ldr r2, [r4, #0x18]
	add r6, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	asr r2, r2, #0xc
	bl ov90_0225A60C
	mov r0, #0x2c
	ldrsh r0, [r4, r0]
	add r0, r0, #1
	strh r0, [r4, #0x2c]
	cmp r6, #1
	bne _0225A528
	ldr r0, [r4, #0x10]
	ldr r1, _0225A538 ; =ov90_0225C234
	lsl r3, r0, #2
	ldr r2, _0225A534 ; =ov90_0225C228
	mov r0, #4
	str r0, [sp]
	add r0, r4, #0
	ldr r5, _0225A540 ; =ov90_0225C24C
	ldr r1, [r1, r3]
	ldr r2, [r2, r3]
	ldr r3, [r5, r3]
	add r0, #0x18
	bl ov90_02258CF0
	mov r0, #0x2e
	ldrsh r0, [r4, r0]
	add r0, r0, #1
	strh r0, [r4, #0x2e]
	mov r0, #0
	strh r0, [r4, #0x2c]
	b _0225A528
_0225A4F2:
	mov r1, #0x2c
	ldrsh r1, [r4, r1]
	add r0, r4, #0
	add r0, #0x18
	bl ov90_02258D4C
	ldr r2, [r4, #0x18]
	add r6, r0, #0
	add r0, r4, #0
	add r1, r5, #0
	asr r2, r2, #0xc
	bl ov90_0225A60C
	mov r0, #0x2c
	ldrsh r0, [r4, r0]
	add r0, r0, #1
	strh r0, [r4, #0x2c]
	cmp r6, #1
	bne _0225A528
	mov r0, #0x2e
	ldrsh r0, [r4, r0]
	add r0, r0, #1
	strh r0, [r4, #0x2e]
	b _0225A528
_0225A522:
	add sp, #4
	mov r0, #1
	pop {r3, r4, r5, r6, pc}
_0225A528:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	nop
_0225A530: .word 0x00000581
_0225A534: .word ov90_0225C228
_0225A538: .word ov90_0225C234
_0225A53C: .word ov90_0225C240
_0225A540: .word ov90_0225C24C
	thumb_func_end ov90_0225A428

