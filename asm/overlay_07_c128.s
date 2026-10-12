	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_0221ED94
	.extern ov07_0221C4A8
	.extern ov07_0221DF1C
	.extern ov07_0221ED14
	.extern ov07_0223789C

	.text

	.text
	thumb_func_start ov07_0221ED94
ov07_0221ED94: ; 0x0221ED94
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov07_0221DF1C
	add r4, r0, #0
	add r0, r5, #0
	mov r1, #4
	bl ov07_0221C4A8
	strb r0, [r4, #0xd]
	ldr r0, [r5, #0x18]
	ldr r2, _0221EE64 ; =0xFFFF0000
	add r0, r0, #4
	str r0, [r5, #0x18]
	ldr r0, [r0]
	str r0, [r4, #0x10]
	ldr r0, [r5, #0x18]
	add r1, r0, #4
	str r1, [r5, #0x18]
	ldr r0, [r1]
	add r1, r1, #4
	str r1, [r5, #0x18]
	lsl r1, r0, #0x10
	lsr r1, r1, #0x10
	and r0, r2
	str r1, [r4, #0x14]
	lsr r0, r0, #0x10
	str r0, [r4, #0x18]
	ldr r0, [r5, #0x18]
	ldr r1, [r0]
	add r0, r0, #4
	str r0, [r5, #0x18]
	add r0, r1, #0
	and r0, r2
	lsr r0, r0, #0x10
	lsl r1, r1, #0x10
	lsl r0, r0, #0x10
	asr r1, r1, #0x10
	asr r0, r0, #0x10
	cmp r1, #6
	bhi _0221EE4C
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0221EDF2: ; jump table
	.short _0221EE4C - _0221EDF2 - 2 ; case 0
	.short _0221EE00 - _0221EDF2 - 2 ; case 1
	.short _0221EE0A - _0221EDF2 - 2 ; case 2
	.short _0221EE14 - _0221EDF2 - 2 ; case 3
	.short _0221EE1E - _0221EDF2 - 2 ; case 4
	.short _0221EE28 - _0221EDF2 - 2 ; case 5
	.short _0221EE3A - _0221EDF2 - 2 ; case 6
_0221EE00:
	mov r1, #0xe
	ldrsb r1, [r4, r1]
	add r0, r1, r0
	strb r0, [r4, #0xe]
	b _0221EE56
_0221EE0A:
	mov r1, #0xe
	ldrsb r1, [r4, r1]
	sub r0, r1, r0
	strb r0, [r4, #0xe]
	b _0221EE56
_0221EE14:
	mov r1, #0xf
	ldrsb r1, [r4, r1]
	add r0, r1, r0
	strb r0, [r4, #0xf]
	b _0221EE56
_0221EE1E:
	mov r1, #0xf
	ldrsb r1, [r4, r1]
	sub r0, r1, r0
	strb r0, [r4, #0xf]
	b _0221EE56
_0221EE28:
	mov r1, #0xe
	ldrsb r1, [r4, r1]
	add r1, r1, r0
	strb r1, [r4, #0xe]
	mov r1, #0xf
	ldrsb r1, [r4, r1]
	add r0, r1, r0
	strb r0, [r4, #0xf]
	b _0221EE56
_0221EE3A:
	mov r1, #0xe
	ldrsb r1, [r4, r1]
	sub r1, r1, r0
	strb r1, [r4, #0xe]
	mov r1, #0xf
	ldrsb r1, [r4, r1]
	sub r0, r1, r0
	strb r0, [r4, #0xf]
	b _0221EE56
_0221EE4C:
	ldr r0, _0221EE68 ; =ov07_0223789C
	cmp r0, #0
	beq _0221EE56
	bl GF_AssertFail
_0221EE56:
	ldr r0, _0221EE6C ; =ov07_0221ED14
	ldr r2, _0221EE70 ; =0x0000044C
	add r1, r4, #0
	bl SysTask_CreateOnMainQueue
	pop {r3, r4, r5, pc}
	nop
_0221EE64: .word 0xFFFF0000
_0221EE68: .word ov07_0223789C
_0221EE6C: .word ov07_0221ED14
_0221EE70: .word 0x0000044C
	thumb_func_end ov07_0221ED94

