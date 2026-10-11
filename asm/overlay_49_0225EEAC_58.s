	.include "asm/macros.inc"
	.include "overlay_49_0225EEAC.inc"
	.include "global.inc"
	.public ov49_02261DBC
	.extern ov49_02269B90
	.extern ov49_02269BA0
	.extern ov49_02269BB0
	.extern ov49_02269BC0
	.extern ov49_02269BD0
	.extern ov49_02269C20
	.extern ov49_02269C40

    .text

	.text
	thumb_func_start ov49_02261DBC
ov49_02261DBC: ; 0x02261DBC
	push {r4, r5, r6, r7, lr}
	sub sp, #0x24
	add r6, r2, #0
	add r4, r0, #0
	add r0, r6, #0
	str r1, [sp, #4]
	str r3, [sp, #8]
	mov r7, #0
	bl ov49_02259FF0
	add r5, r0, #0
	bl ov49_02258DAC
	str r0, [sp, #0xc]
	add r0, r6, #0
	bl ov49_0225A000
	add r6, r0, #0
	ldr r0, [sp, #8]
	mov r1, #4
	bl ov49_02258E60
	str r0, [sp, #0x10]
	mov r0, #1
	str r0, [sp, #0x20]
	add r0, sp, #0x28
	ldrb r0, [r0, #0x10]
	cmp r0, #0xe
	bls _02261DF8
	b _02261F42
_02261DF8:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02261E04: ; jump table
	.short _02261F42 - _02261E04 - 2 ; case 0
	.short _02261F42 - _02261E04 - 2 ; case 1
	.short _02261E22 - _02261E04 - 2 ; case 2
	.short _02261E3E - _02261E04 - 2 ; case 3
	.short _02261E58 - _02261E04 - 2 ; case 4
	.short _02261E72 - _02261E04 - 2 ; case 5
	.short _02261E90 - _02261E04 - 2 ; case 6
	.short _02261EAE - _02261E04 - 2 ; case 7
	.short _02261ECC - _02261E04 - 2 ; case 8
	.short _02261EF0 - _02261E04 - 2 ; case 9
	.short _02261EEA - _02261E04 - 2 ; case 10
	.short _02261F42 - _02261E04 - 2 ; case 11
	.short _02261F42 - _02261E04 - 2 ; case 12
	.short _02261F42 - _02261E04 - 2 ; case 13
	.short _02261F42 - _02261E04 - 2 ; case 14
_02261E22:
	add r0, sp, #0x1c
	str r0, [sp]
	ldr r2, _02261FA4 ; =ov49_02269B90
	add r0, r6, #0
	add r1, r5, #0
	mov r3, #4
	bl ov49_02261FC0
	cmp r0, #0
	beq _02261E38
	b _02261F48
_02261E38:
	add sp, #0x24
	add r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_02261E3E:
	add r0, sp, #0x1c
	str r0, [sp]
	ldr r2, _02261FA8 ; =ov49_02269BC0
	add r0, r6, #0
	add r1, r5, #0
	mov r3, #4
	bl ov49_02261FC0
	cmp r0, #0
	bne _02261F48
	add sp, #0x24
	add r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_02261E58:
	add r0, sp, #0x1c
	str r0, [sp]
	ldr r2, _02261FAC ; =ov49_02269BA0
	add r0, r6, #0
	add r1, r5, #0
	mov r3, #4
	bl ov49_02261FC0
	cmp r0, #0
	bne _02261F48
	add sp, #0x24
	add r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_02261E72:
	add r0, r7, #0
	str r0, [sp, #0x20]
	add r0, sp, #0x1c
	str r0, [sp]
	ldr r2, _02261FB0 ; =ov49_02269C20
	add r0, r6, #0
	add r1, r5, #0
	mov r3, #8
	bl ov49_02261FC0
	cmp r0, #0
	bne _02261F48
	add sp, #0x24
	add r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_02261E90:
	add r0, r7, #0
	str r0, [sp, #0x20]
	add r0, sp, #0x1c
	str r0, [sp]
	ldr r2, _02261FB4 ; =ov49_02269C40
	add r0, r6, #0
	add r1, r5, #0
	mov r3, #8
	bl ov49_02261FC0
	cmp r0, #0
	bne _02261F48
	add sp, #0x24
	add r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_02261EAE:
	mov r0, #3
	str r0, [sp, #0x20]
	add r0, sp, #0x1c
	str r0, [sp]
	ldr r2, _02261FB8 ; =ov49_02269BB0
	add r0, r6, #0
	add r1, r5, #0
	mov r3, #4
	bl ov49_02261FC0
	cmp r0, #0
	bne _02261F48
	add sp, #0x24
	add r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_02261ECC:
	add r0, r7, #0
	str r0, [sp, #0x20]
	add r0, sp, #0x1c
	str r0, [sp]
	ldr r2, _02261FBC ; =ov49_02269BD0
	add r0, r6, #0
	add r1, r5, #0
	mov r3, #4
	bl ov49_02261FC0
	cmp r0, #0
	bne _02261F48
	add sp, #0x24
	add r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_02261EEA:
	add sp, #0x24
	add r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_02261EF0:
	ldr r0, [sp, #4]
	bl ov45_0222AFF8
	cmp r0, #0
	bne _02261F00
	add sp, #0x24
	add r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_02261F00:
	ldr r0, [sp, #4]
	bl ov45_0222B00C
	cmp r0, #0
	bne _02261F10
	add sp, #0x24
	add r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_02261F10:
	ldr r0, [sp, #4]
	bl ov45_0222B020
	ldr r1, [sp, #0x10]
	cmp r1, r0
	beq _02261F22
	add sp, #0x24
	add r0, r7, #0
	pop {r4, r5, r6, r7, pc}
_02261F22:
	ldr r1, [sp, #0xc]
	add r0, r5, #0
	add r2, sp, #0x20
	add r3, sp, #0x1c
	bl ov49_0225904C
	cmp r0, #1
	beq _02261F36
	bl GF_AssertFail
_02261F36:
	ldr r0, [sp, #0x20]
	bl ov42_022282A4
	str r0, [sp, #0x20]
	mov r7, #1
	b _02261F48
_02261F42:
	add sp, #0x24
	mov r0, #0
	pop {r4, r5, r6, r7, pc}
_02261F48:
	ldr r0, [sp, #8]
	bl ov49_02258E34
	add r1, sp, #0x14
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	mov r3, sp
	sub r3, r3, #4
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
	ldrh r2, [r1, #8]
	ldr r0, [sp, #8]
	strh r2, [r3]
	ldrh r1, [r1, #0xa]
	strh r1, [r3, #2]
	ldr r1, [r3]
	ldr r2, [sp, #0x20]
	bl ov49_02258E04
	add r1, sp, #0x14
	mov r0, #4
	ldrsh r2, [r1, r0]
	asr r0, r2, #3
	lsr r0, r0, #0x1c
	add r0, r2, r0
	asr r0, r0, #4
	strb r0, [r4]
	mov r0, #6
	ldrsh r1, [r1, r0]
	asr r0, r1, #3
	lsr r0, r0, #0x1c
	add r0, r1, r0
	asr r0, r0, #4
	strb r0, [r4, #1]
	add r0, sp, #0x28
	ldrb r0, [r0, #0x10]
	strb r0, [r4, #2]
	ldr r0, [sp, #0x3c]
	strb r7, [r4, #3]
	strb r0, [r4, #4]
	mov r0, #1
	add sp, #0x24
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_02261FA4: .word ov49_02269B90
_02261FA8: .word ov49_02269BC0
_02261FAC: .word ov49_02269BA0
_02261FB0: .word ov49_02269C20
_02261FB4: .word ov49_02269C40
_02261FB8: .word ov49_02269BB0
_02261FBC: .word ov49_02269BD0
	thumb_func_end ov49_02261DBC


