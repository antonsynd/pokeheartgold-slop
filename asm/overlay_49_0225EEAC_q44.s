	.include "asm/macros.inc"
	.include "overlay_49_0225EEAC.inc"
	.include "global.inc"
	.public ov49_02260428
	.public ov49_022607C4
	.extern ov49_0225EF40
	.extern ov49_0225EF68
	.extern ov49_0225EF84
	.extern ov49_0225EF88
	.extern ov49_0225EF8C
	.extern ov49_0225EF90
	.extern ov49_0225EF98
	.extern ov49_0225EFC4
	.extern ov49_02260C58
	.extern ov49_02260CC0
	.extern ov49_02260D28
	.extern ov49_02269B38
	.extern ov49_02269B88

    .text

	.text
	thumb_func_start ov49_02260428
ov49_02260428: ; 0x02260428
	push {r4, r5, r6, r7, lr}
	sub sp, #0x44
	add r4, r1, #0
	add r5, r0, #0
	str r2, [sp, #0x10]
	add r0, r4, #0
	bl ov49_02259FF0
	ldr r1, [sp, #0x10]
	str r0, [sp, #0x28]
	bl ov49_02258D70
	add r7, r0, #0
	add r0, r4, #0
	bl ov49_0225A040
	str r0, [sp, #0x20]
	add r0, r5, #0
	bl ov49_0225EF84
	add r6, r0, #0
	add r0, r4, #0
	bl ov49_02259FE8
	str r0, [sp, #0x24]
	add r0, r5, #0
	bl ov49_0225EF88
	cmp r0, #8
	bls _02260466
	b _022607B8
_02260466:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02260472: ; jump table
	.short _02260484 - _02260472 - 2 ; case 0
	.short _02260544 - _02260472 - 2 ; case 1
	.short _022605E2 - _02260472 - 2 ; case 2
	.short _022606B0 - _02260472 - 2 ; case 3
	.short _02260702 - _02260472 - 2 ; case 4
	.short _0226071A - _02260472 - 2 ; case 5
	.short _02260740 - _02260472 - 2 ; case 6
	.short _0226075A - _02260472 - 2 ; case 7
	.short _02260788 - _02260472 - 2 ; case 8
_02260484:
	add r0, r5, #0
	mov r1, #0xc
	bl ov49_0225EF40
	add r4, r0, #0
	ldr r0, [sp, #0x20]
	bl ov49_02260C58
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #3
	bhi _022604C8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022604A8: ; jump table
	.short _022604B0 - _022604A8 - 2 ; case 0
	.short _022604B6 - _022604A8 - 2 ; case 1
	.short _022604BC - _022604A8 - 2 ; case 2
	.short _022604C2 - _022604A8 - 2 ; case 3
_022604B0:
	mov r0, #3
	str r0, [r4, #8]
	b _022604D0
_022604B6:
	mov r0, #4
	str r0, [r4, #8]
	b _022604D0
_022604BC:
	mov r0, #5
	str r0, [r4, #8]
	b _022604D0
_022604C2:
	mov r0, #6
	str r0, [r4, #8]
	b _022604D0
_022604C8:
	bl GF_AssertFail
	mov r0, #5
	str r0, [r4, #8]
_022604D0:
	ldr r0, [sp, #0x24]
	bl ov45_0222A330
	cmp r0, #1
	bne _022604EC
	mov r0, #0x16
	strh r0, [r4, #4]
	mov r0, #0
	strh r0, [r4, #6]
	add r0, r5, #0
	mov r1, #5
	bl ov49_0225EF8C
	b _022607B8
_022604EC:
	ldr r0, [sp, #0x24]
	bl ov45_0222A208
	cmp r0, #1
	bne _02260508
	mov r0, #0x48
	strh r0, [r4, #4]
	mov r0, #1
	strh r0, [r4, #6]
	add r0, r5, #0
	mov r1, #5
	bl ov49_0225EF8C
	b _022607B8
_02260508:
	ldr r0, [sp, #0x20]
	bl ov49_02260C58
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	add r0, r6, #0
	bl ov45_0222EBF0
	cmp r0, #0
	bne _0226052E
	mov r0, #0x14
	strh r0, [r4, #4]
	mov r0, #0
	strh r0, [r4, #6]
	add r0, r5, #0
	mov r1, #3
	bl ov49_0225EF8C
	b _022607B8
_0226052E:
	add r0, r6, #0
	bl ov45_0222EB38
	cmp r0, #0
	bne _0226053C
	bl GF_AssertFail
_0226053C:
	add r0, r5, #0
	bl ov49_0225EF90
	b _022607B8
_02260544:
	bl ov45_0222EB74
	cmp r0, #1
	bne _022605CA
	add r0, r5, #0
	mov r1, #2
	bl ov49_0225EF8C
	add r1, sp, #0x40
	mov r0, #0
	strb r0, [r1]
	strb r0, [r1, #1]
	strb r0, [r1, #2]
	strb r0, [r1, #3]
	add r0, r4, #0
	bl ov49_02259FE8
	add r7, r0, #0
	bl ov45_0222AB68
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #0x1c]
	ldr r0, [r6, #8]
	sub r0, r0, #5
	cmp r0, #1
	bhi _022605A4
	mov r5, #0
	add r4, r5, #0
_0226057E:
	add r0, r7, #0
	add r1, r4, #0
	bl ov45_0222AB78
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0226059C
	cmp r5, #4
	bhs _02260596
	add r1, sp, #0x40
	strb r0, [r1, r5]
_02260596:
	add r0, r5, #1
	lsl r0, r0, #0x18
	lsr r5, r0, #0x18
_0226059C:
	add r4, r4, #1
	cmp r4, #4
	blt _0226057E
	b _022605AA
_022605A4:
	ldr r0, [sp, #0x10]
	add r1, sp, #0x38
	strb r0, [r1, #8]
_022605AA:
	add r3, sp, #0x38
	ldrb r0, [r3, #9]
	str r0, [sp]
	ldrb r0, [r3, #0xa]
	str r0, [sp, #4]
	ldrb r0, [r3, #0xb]
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #0xc]
	ldrb r3, [r3, #8]
	ldr r1, [r6, #8]
	ldr r2, [sp, #0x1c]
	add r0, r7, #0
	bl ov45_0222AC14
	b _022607B8
_022605CA:
	cmp r0, #2
	beq _022605D0
	b _022607B8
_022605D0:
	mov r0, #0x14
	strh r0, [r6, #4]
	mov r0, #0
	strh r0, [r6, #6]
	add r0, r5, #0
	mov r1, #3
	bl ov49_0225EF8C
	b _022607B8
_022605E2:
	ldr r0, [sp, #0x20]
	bl ov49_02260CC0
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x20]
	bl ov49_02260D28
	str r0, [sp, #0x30]
	add r0, r4, #0
	mov r1, #1
	bl ov49_0225A034
	ldr r1, [sp, #0x2c]
	add r0, r4, #0
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl ov49_0225A038
	add r0, r4, #0
	bl ov49_02259FE8
	ldr r1, [sp, #0x30]
	bl ov45_0222A5E8
	ldr r0, [r6, #8]
	cmp r0, #6
	bhi _02260644
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02260624: ; jump table
	.short _02260644 - _02260624 - 2 ; case 0
	.short _02260644 - _02260624 - 2 ; case 1
	.short _02260644 - _02260624 - 2 ; case 2
	.short _02260632 - _02260624 - 2 ; case 3
	.short _02260632 - _02260624 - 2 ; case 4
	.short _02260638 - _02260624 - 2 ; case 5
	.short _0226063E - _02260624 - 2 ; case 6
_02260632:
	mov r0, #5
	str r0, [sp, #0x18]
	b _02260648
_02260638:
	mov r0, #3
	str r0, [sp, #0x18]
	b _02260648
_0226063E:
	mov r0, #4
	str r0, [sp, #0x18]
	b _02260648
_02260644:
	bl GF_AssertFail
_02260648:
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x18]
	bl ov45_0222B118
	add r0, r7, #0
	mov r1, #6
	bl ov49_02258E60
	bl ov42_022282A4
	str r0, [sp, #0x34]
	add r0, r4, #0
	bl ov49_02259FEC
	add r4, r0, #0
	add r0, r7, #0
	bl ov49_02258E34
	add r1, sp, #0x38
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
	mov r0, #1
	strh r0, [r4, #6]
	mov r0, #4
	ldrsh r2, [r1, r0]
	asr r0, r2, #3
	lsr r0, r0, #0x1c
	add r0, r2, r0
	asr r0, r0, #4
	strh r0, [r4]
	mov r0, #6
	ldrsh r1, [r1, r0]
	asr r0, r1, #3
	lsr r0, r0, #0x1c
	add r0, r1, r0
	asr r0, r0, #4
	strh r0, [r4, #2]
	ldr r0, [sp, #0x34]
	strh r0, [r4, #4]
	ldr r0, [r6, #8]
	strh r0, [r4, #8]
	add r0, r5, #0
	bl ov49_0225EF68
	add sp, #0x44
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_022606B0:
	add r0, r7, #0
	mov r1, #6
	bl ov49_02258E60
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	cmp r0, #3
	bhi _022606EC
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022606CC: ; jump table
	.short _022606D4 - _022606CC - 2 ; case 0
	.short _022606DA - _022606CC - 2 ; case 1
	.short _022606E0 - _022606CC - 2 ; case 2
	.short _022606E6 - _022606CC - 2 ; case 3
_022606D4:
	mov r0, #6
	str r0, [sp, #0x14]
	b _022606F0
_022606DA:
	mov r0, #5
	str r0, [sp, #0x14]
	b _022606F0
_022606E0:
	mov r0, #8
	str r0, [sp, #0x14]
	b _022606F0
_022606E6:
	mov r0, #7
	str r0, [sp, #0x14]
	b _022606F0
_022606EC:
	bl GF_AssertFail
_022606F0:
	ldr r0, [sp, #0x28]
	ldr r2, [sp, #0x14]
	add r1, r7, #0
	bl ov49_02258EEC
	add r0, r5, #0
	bl ov49_0225EF90
	b _022607B8
_02260702:
	add r0, r7, #0
	bl ov49_02258F38
	cmp r0, #1
	bne _022607B8
	mov r0, #8
	str r0, [r6]
	add r0, r5, #0
	mov r1, #7
	bl ov49_0225EF8C
	b _022607B8
_0226071A:
	add r0, r7, #0
	mov r1, #6
	bl ov49_02258E60
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	bl ov42_022282A4
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
	ldr r0, [sp, #0x28]
	add r1, r7, #0
	mov r2, #2
	bl ov49_02258EAC
	add r0, r5, #0
	bl ov49_0225EF90
	b _022607B8
_02260740:
	add r0, r7, #0
	mov r1, #5
	bl ov49_02258E60
	cmp r0, #0
	bne _022607B8
	mov r0, #8
	str r0, [r6]
	add r0, r5, #0
	mov r1, #7
	bl ov49_0225EF8C
	b _022607B8
_0226075A:
	ldr r0, [r6]
	sub r0, r0, #1
	str r0, [r6]
	cmp r0, #0
	bgt _022607B8
	ldr r1, [r6, #8]
	add r0, r4, #0
	mov r2, #0
	bl ov49_0225A37C
	ldrh r1, [r6, #6]
	ldrh r2, [r6, #4]
	add r0, r4, #0
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r4, #0
	bl ov49_0225A08C
	add r0, r5, #0
	bl ov49_0225EF90
	b _022607B8
_02260788:
	add r0, r4, #0
	bl ov49_0225A0AC
	cmp r0, #0
	beq _022607B8
	add r0, r5, #0
	bl ov49_0225EF68
	ldr r0, [sp, #0x28]
	add r1, r7, #0
	mov r2, #1
	bl ov49_02258EEC
	add r0, r4, #0
	bl ov49_0225A0EC
	add r0, r4, #0
	bl ov49_0225A010
	ldr r1, [sp, #0x10]
	ldr r2, _022607C0 ; =ov49_02269B38
	mov r3, #0
	bl ov49_0225EF98
_022607B8:
	mov r0, #0
	add sp, #0x44
	pop {r4, r5, r6, r7, pc}
	nop
_022607C0: .word ov49_02269B38
	thumb_func_end ov49_02260428

	thumb_func_start ov49_022607C4
ov49_022607C4: ; 0x022607C4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r4, r1, #0
	add r6, r0, #0
	str r2, [sp]
	bl ov49_0225EF84
	add r7, r0, #0
	add r0, r4, #0
	bl ov49_0225A010
	str r0, [sp, #0x14]
	add r0, r4, #0
	bl ov49_02259FF0
	str r0, [sp, #0x18]
	bl ov49_02258DAC
	str r0, [sp, #0x10]
	add r0, r4, #0
	bl ov49_02259FE8
	str r0, [sp, #0xc]
	add r0, r6, #0
	bl ov49_0225EF88
	cmp r0, #7
	bls _022607FE
	b _02260A5A
_022607FE:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0226080A: ; jump table
	.short _0226081A - _0226080A - 2 ; case 0
	.short _0226088E - _0226080A - 2 ; case 1
	.short _022608A8 - _0226080A - 2 ; case 2
	.short _0226095E - _0226080A - 2 ; case 3
	.short _0226097E - _0226080A - 2 ; case 4
	.short _02260992 - _0226080A - 2 ; case 5
	.short _02260A16 - _0226080A - 2 ; case 6
	.short _02260A2E - _0226080A - 2 ; case 7
_0226081A:
	add r0, r6, #0
	mov r1, #4
	bl ov49_0225EF40
	add r5, r0, #0
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x10]
	mov r2, #0
	bl ov49_02258EEC
	add r0, r6, #0
	bl ov49_0225EF90
	mov r0, #0
	strb r0, [r5]
	add r0, r4, #0
	bl ov49_0225A040
	cmp r0, #0x1e
	beq _0226084C
	cmp r0, #0x1f
	beq _02260858
	cmp r0, #0x20
	beq _02260864
	b _02260870
_0226084C:
	mov r0, #0
	strb r0, [r5, #1]
	strb r0, [r5, #2]
	mov r0, #2
	strb r0, [r5, #3]
	b _02260874
_02260858:
	mov r0, #1
	strb r0, [r5, #1]
	strb r0, [r5, #2]
	mov r0, #3
	strb r0, [r5, #3]
	b _02260874
_02260864:
	mov r0, #2
	strb r0, [r5, #1]
	strb r0, [r5, #2]
	mov r0, #4
	strb r0, [r5, #3]
	b _02260874
_02260870:
	bl GF_AssertFail
_02260874:
	add r0, r4, #0
	bl ov49_02259FE8
	mov r1, #0xc
	bl ov45_0222A5E8
	ldr r0, [sp, #0x14]
	ldr r1, [sp]
	ldr r2, _02260A60 ; =ov49_02269B88
	add r3, r5, #0
	bl ov49_0225EFC4
	b _02260A5A
_0226088E:
	ldrb r0, [r7]
	cmp r0, #8
	bne _0226089E
	add r0, r6, #0
	mov r1, #2
	bl ov49_0225EF8C
	b _02260A5A
_0226089E:
	add r0, r6, #0
	mov r1, #3
	bl ov49_0225EF8C
	b _02260A5A
_022608A8:
	add r0, r4, #0
	bl ov49_0225A040
	cmp r0, #0x1e
	beq _022608BC
	cmp r0, #0x1f
	beq _022608C4
	cmp r0, #0x20
	beq _022608CC
	b _022608D2
_022608BC:
	mov r0, #0
	mov r5, #3
	str r0, [sp, #8]
	b _022608D2
_022608C4:
	mov r0, #1
	mov r5, #4
	str r0, [sp, #8]
	b _022608D2
_022608CC:
	mov r0, #2
	mov r5, #5
	str r0, [sp, #8]
_022608D2:
	add r0, r4, #0
	mov r1, #1
	bl ov49_0225A034
	lsl r1, r5, #0x18
	add r0, r4, #0
	lsr r1, r1, #0x18
	bl ov49_0225A038
	ldr r0, [sp, #0xc]
	bl IncrementGameStat119
	ldr r0, [sp, #0xc]
	ldr r1, [sp, #8]
	bl ov45_0222B118
	ldr r0, [sp, #0x10]
	mov r1, #6
	bl ov49_02258E60
	bl ov42_022282A4
	str r0, [sp, #0x1c]
	add r0, r4, #0
	bl ov49_02259FEC
	add r5, r0, #0
	ldr r0, [sp, #0x10]
	bl ov49_02258E34
	add r1, sp, #0x20
	strh r0, [r1]
	lsr r0, r0, #0x10
	strh r0, [r1, #2]
	ldrh r0, [r1]
	strh r0, [r1, #4]
	ldrh r0, [r1, #2]
	strh r0, [r1, #6]
	mov r0, #2
	strh r0, [r5, #6]
	mov r0, #4
	ldrsh r0, [r1, r0]
	asr r2, r0, #3
	lsr r2, r2, #0x1c
	add r2, r0, r2
	asr r0, r2, #4
	strh r0, [r5]
	mov r0, #6
	ldrsh r1, [r1, r0]
	asr r0, r1, #3
	lsr r0, r0, #0x1c
	add r0, r1, r0
	asr r0, r0, #4
	strh r0, [r5, #2]
	ldr r0, [sp, #0x1c]
	strh r0, [r5, #4]
	ldrb r0, [r7, #2]
	strh r0, [r5, #8]
	add r0, r4, #0
	bl ov49_02259FE8
	mov r1, #1
	bl ov45_0222A4C8
	add r0, r6, #0
	bl ov49_0225EF68
	add sp, #0x28
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0226095E:
	ldr r0, [sp, #0x10]
	mov r1, #6
	bl ov49_02258E60
	bl ov42_022282A4
	add r3, r0, #0
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x10]
	mov r2, #2
	bl ov49_02258EAC
	add r0, r6, #0
	bl ov49_0225EF90
	b _02260A5A
_0226097E:
	ldr r0, [sp, #0x10]
	mov r1, #5
	bl ov49_02258E60
	cmp r0, #0
	bne _02260A5A
	add r0, r6, #0
	bl ov49_0225EF90
	b _02260A5A
_02260992:
	mov r0, #1
	str r0, [sp, #4]
	ldrb r0, [r7]
	cmp r0, #7
	bhi _022609E8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022609A8: ; jump table
	.short _022609B8 - _022609A8 - 2 ; case 0
	.short _022609C6 - _022609A8 - 2 ; case 1
	.short _022609CA - _022609A8 - 2 ; case 2
	.short _022609D8 - _022609A8 - 2 ; case 3
	.short _022609DC - _022609A8 - 2 ; case 4
	.short _022609E8 - _022609A8 - 2 ; case 5
	.short _022609E0 - _022609A8 - 2 ; case 6
	.short _022609E4 - _022609A8 - 2 ; case 7
_022609B8:
	ldrb r1, [r7, #2]
	add r0, r4, #0
	mov r2, #0
	bl ov49_0225A37C
	mov r5, #4
	b _022609EC
_022609C6:
	mov r5, #5
	b _022609EC
_022609CA:
	ldrb r1, [r7, #2]
	add r0, r4, #0
	mov r2, #0
	bl ov49_0225A37C
	mov r5, #6
	b _022609EC
_022609D8:
	mov r5, #0x13
	b _022609EC
_022609DC:
	mov r5, #0x11
	b _022609EC
_022609E0:
	mov r5, #0x1d
	b _022609EC
_022609E4:
	mov r5, #7
	b _022609EC
_022609E8:
	mov r0, #0
	str r0, [sp, #4]
_022609EC:
	ldr r0, [sp, #4]
	cmp r0, #0
	beq _02260A0C
	add r0, r4, #0
	mov r1, #0
	add r2, r5, #0
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r4, #0
	bl ov49_0225A08C
	add r0, r6, #0
	bl ov49_0225EF90
	b _02260A5A
_02260A0C:
	add r0, r6, #0
	mov r1, #7
	bl ov49_0225EF8C
	b _02260A5A
_02260A16:
	add r0, r4, #0
	bl ov49_0225A0AC
	cmp r0, #1
	bne _02260A5A
	add r0, r4, #0
	bl ov49_0225A0EC
	add r0, r6, #0
	bl ov49_0225EF90
	b _02260A5A
_02260A2E:
	add r0, r6, #0
	bl ov49_0225EF68
	add r0, r4, #0
	bl ov49_02259FE8
	mov r1, #1
	bl ov45_0222A5E8
	ldr r0, [sp, #0x18]
	ldr r1, [sp, #0x10]
	mov r2, #1
	bl ov49_02258EEC
	add r0, r4, #0
	bl ov49_0225A010
	ldr r1, [sp]
	ldr r2, _02260A64 ; =ov49_02269B38
	mov r3, #0
	bl ov49_0225EF98
_02260A5A:
	mov r0, #0
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02260A60: .word ov49_02269B88
_02260A64: .word ov49_02269B38
	thumb_func_end ov49_022607C4

