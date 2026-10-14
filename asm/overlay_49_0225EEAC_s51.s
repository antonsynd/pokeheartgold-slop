	.include "asm/macros.inc"
	.include "overlay_49_0225EEAC.inc"
	.include "global.inc"
	.public ov49_02260E2C
	.extern ov49_0225EF40
	.extern ov49_0225EF68
	.extern ov49_0225EF84
	.extern ov49_0225EF88
	.extern ov49_0225EF8C
	.extern ov49_0225EF98
	.extern ov49_022611D4
	.extern ov49_022611F4
	.extern ov49_02261234
	.extern ov49_022613AC
	.extern ov49_02261434
	.extern ov49_02261460
	.extern ov49_02269B38

    .text

	.text
	thumb_func_start ov49_02260E2C
ov49_02260E2C: ; 0x02260E2C
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	str r2, [sp]
	bl ov49_02259FF0
	str r0, [sp, #8]
	add r0, r5, #0
	bl ov49_02259FF8
	add r7, r0, #0
	add r0, r5, #0
	bl ov49_0225A008
	str r0, [sp, #0xc]
	add r0, r5, #0
	bl ov49_02259FE8
	str r0, [sp, #4]
	add r0, r6, #0
	bl ov49_0225EF84
	add r4, r0, #0
	add r0, r6, #0
	bl ov49_0225EF88
	cmp r0, #0xf
	bls _02260E6A
	b _022611C0
_02260E6A:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02260E76: ; jump table
	.short _02260E96 - _02260E76 - 2 ; case 0
	.short _02260EDE - _02260E76 - 2 ; case 1
	.short _02260F52 - _02260E76 - 2 ; case 2
	.short _02260FE2 - _02260E76 - 2 ; case 3
	.short _02261016 - _02260E76 - 2 ; case 4
	.short _02261046 - _02260E76 - 2 ; case 5
	.short _02261082 - _02260E76 - 2 ; case 6
	.short _02261098 - _02260E76 - 2 ; case 7
	.short _022610B0 - _02260E76 - 2 ; case 8
	.short _022610D0 - _02260E76 - 2 ; case 9
	.short _022610F0 - _02260E76 - 2 ; case 10
	.short _02261110 - _02260E76 - 2 ; case 11
	.short _02261124 - _02260E76 - 2 ; case 12
	.short _02261134 - _02260E76 - 2 ; case 13
	.short _02261180 - _02260E76 - 2 ; case 14
	.short _02261196 - _02260E76 - 2 ; case 15
_02260E96:
	add r0, r6, #0
	mov r1, #0x18
	bl ov49_0225EF40
	add r4, r0, #0
	ldr r0, [sp, #8]
	ldr r1, [sp]
	bl ov49_02258D70
	str r0, [r4, #0xc]
	add r0, r5, #0
	bl ov49_0225A040
	cmp r0, #0x21
	beq _02260EBE
	cmp r0, #0x22
	beq _02260EC4
	cmp r0, #0x23
	beq _02260ECA
	b _02260ED0
_02260EBE:
	mov r0, #2
	strh r0, [r4, #6]
	b _02260ED4
_02260EC4:
	mov r0, #1
	strh r0, [r4, #6]
	b _02260ED4
_02260ECA:
	mov r0, #0
	strh r0, [r4, #6]
	b _02260ED4
_02260ED0:
	bl GF_AssertFail
_02260ED4:
	add r0, r6, #0
	mov r1, #1
	bl ov49_0225EF8C
	b _022611C0
_02260EDE:
	ldr r0, [sp, #4]
	bl ov45_0222A374
	cmp r0, #0
	bne _02260EF6
	mov r0, #8
	strh r0, [r4, #4]
	add r0, r6, #0
	mov r1, #6
	bl ov49_0225EF8C
	b _022611C0
_02260EF6:
	ldr r0, [sp, #4]
	bl ov45_0222A330
	cmp r0, #1
	bne _02260F0E
	mov r0, #0xa
	strh r0, [r4, #4]
	add r0, r6, #0
	mov r1, #6
	bl ov49_0225EF8C
	b _022611C0
_02260F0E:
	ldrh r2, [r4, #6]
	ldr r0, [sp, #4]
	ldr r1, [sp]
	bl ov45_0222ADB8
	mov r1, #0
	mvn r1, r1
	str r0, [r4]
	cmp r0, r1
	beq _02260F44
	add r0, r6, #0
	mov r1, #2
	bl ov49_0225EF8C
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x1f
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r5, #0
	bl ov49_0225A09C
	add r0, r5, #0
	bl ov49_0225A0BC
	b _022611C0
_02260F44:
	mov r0, #9
	strh r0, [r4, #4]
	add r0, r6, #0
	mov r1, #6
	bl ov49_0225EF8C
	b _022611C0
_02260F52:
	ldr r0, _022611C8 ; =gSystem
	mov r1, #2
	ldr r0, [r0, #0x48]
	tst r1, r0
	bne _02260F62
	mov r1, #0x80
	tst r0, r1
	beq _02260F82
_02260F62:
	ldr r0, [sp, #4]
	ldr r1, [sp]
	bl ov45_0222ADC8
	add r0, r5, #0
	bl ov49_0225A0CC
	mov r0, #6
	strb r0, [r4, #0xa]
	mov r0, #0xf
	strh r0, [r4, #4]
	add r0, r6, #0
	mov r1, #0xc
	bl ov49_0225EF8C
	b _022611C0
_02260F82:
	add r0, r4, #0
	add r1, r7, #0
	bl ov49_022611F4
	cmp r0, #1
	beq _02260F90
	b _022611C0
_02260F90:
	add r0, r5, #0
	bl ov49_0225A0CC
	ldr r0, [sp, #4]
	bl ov45_0222AE44
	mov r0, #0
	strh r0, [r4, #8]
	add r0, r5, #0
	bl ov49_02259FE8
	mov r1, #0xa
	bl ov45_0222A5E8
	add r0, r5, #0
	bl ov49_0225A044
	ldr r0, [sp, #0xc]
	bl ov49_0225CC44
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl ov49_02259130
	ldr r0, [r4, #0xc]
	mov r1, #1
	bl ov49_0225916C
	ldr r0, _022611CC ; =0x000005C1
	bl PlaySE
	add r0, r5, #0
	bl ov49_0225A510
	mov r0, #3
	strb r0, [r4, #0xa]
	add r0, r6, #0
	mov r1, #0xc
	bl ov49_0225EF8C
	b _022611C0
_02260FE2:
	ldr r2, [sp, #0xc]
	add r0, r4, #0
	add r1, r7, #0
	bl ov49_02261234
	cmp r0, #1
	bne _022610A4
	ldr r0, [r4, #0xc]
	mov r1, #0
	bl ov49_0225916C
	ldr r0, [r4, #0xc]
	mov r1, #2
	bl ov49_02259160
	ldr r0, [r4, #0xc]
	mov r1, #8
	bl ov49_022591B4
	add r0, r6, #0
	mov r1, #4
	bl ov49_0225EF8C
	mov r0, #0
	strh r0, [r4, #8]
	b _022611C0
_02261016:
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl ov49_02261434
	ldr r1, [sp, #0xc]
	add r0, r4, #0
	bl ov49_022611D4
	add r0, r4, #0
	add r1, r7, #0
	bl ov49_022613AC
	cmp r0, #1
	bne _022610A4
	add r0, r6, #0
	mov r1, #5
	bl ov49_0225EF8C
	add r0, r5, #0
	mov r1, #0
	bl ov49_0225A53C
	b _022611C0
_02261046:
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl ov49_02261434
	ldr r1, [sp, #0xc]
	add r0, r4, #0
	bl ov49_022611D4
	ldr r0, [r4, #0xc]
	add r1, sp, #0x10
	bl ov49_02259154
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl ov49_02261460
	mov r0, #6
	ldr r1, [sp, #0x10]
	lsl r0, r0, #0x10
	cmp r1, r0
	bge _022610A4
	mov r0, #0
	strb r0, [r4, #0xb]
	add r0, r6, #0
	mov r1, #0xd
	bl ov49_0225EF8C
	b _022611C0
_02261082:
	ldr r0, [sp, #8]
	ldr r1, [r4, #0xc]
	mov r2, #2
	mov r3, #1
	bl ov49_02258EAC
	add r0, r6, #0
	mov r1, #7
	bl ov49_0225EF8C
	b _022611C0
_02261098:
	ldr r0, [r4, #0xc]
	mov r1, #5
	bl ov49_02258E60
	cmp r0, #0
	beq _022610A6
_022610A4:
	b _022611C0
_022610A6:
	ldrh r1, [r4, #4]
	add r0, r6, #0
	bl ov49_0225EF8C
	b _022611C0
_022610B0:
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x1e
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r5, #0
	bl ov49_0225A08C
	mov r0, #0xf
	strh r0, [r4, #4]
	add r0, r6, #0
	mov r1, #0xb
	bl ov49_0225EF8C
	b _022611C0
_022610D0:
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x20
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r5, #0
	bl ov49_0225A08C
	mov r0, #0xf
	strh r0, [r4, #4]
	add r0, r6, #0
	mov r1, #0xb
	bl ov49_0225EF8C
	b _022611C0
_022610F0:
	add r0, r5, #0
	mov r1, #0
	mov r2, #0x21
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r5, #0
	bl ov49_0225A08C
	mov r0, #0xf
	strh r0, [r4, #4]
	add r0, r6, #0
	mov r1, #0xb
	bl ov49_0225EF8C
	b _022611C0
_02261110:
	add r0, r5, #0
	bl ov49_0225A0AC
	cmp r0, #1
	bne _022611C0
	ldrh r1, [r4, #4]
	add r0, r6, #0
	bl ov49_0225EF8C
	b _022611C0
_02261124:
	add r0, r5, #0
	bl ov49_0225A0EC
	ldrb r1, [r4, #0xa]
	add r0, r6, #0
	bl ov49_0225EF8C
	b _022611C0
_02261134:
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl ov49_02261434
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl ov49_02261460
	ldrb r0, [r4, #0xb]
	add r0, r0, #1
	strb r0, [r4, #0xb]
	ldrb r0, [r4, #0xb]
	cmp r0, #0x78
	bls _022611C0
	add r0, r5, #0
	mov r1, #1
	bl ov49_0225A034
	add r0, r5, #0
	mov r1, #0
	bl ov49_0225A038
	add r0, r5, #0
	bl ov49_0225A0EC
	add r0, r5, #0
	bl ov49_02259FE8
	mov r1, #0xb
	bl ov45_0222A5E8
	add r0, r6, #0
	mov r1, #0xe
	bl ov49_0225EF8C
	b _022611C0
_02261180:
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl ov49_02261434
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl ov49_02261460
	b _022611C0
_02261196:
	add r0, r5, #0
	bl ov49_0225A010
	add r7, r0, #0
	add r0, r5, #0
	bl ov49_0225A0EC
	ldr r0, [sp, #8]
	ldr r1, [r4, #0xc]
	mov r2, #1
	bl ov49_02258EEC
	add r0, r6, #0
	bl ov49_0225EF68
	ldr r1, [sp]
	ldr r2, _022611D0 ; =ov49_02269B38
	add r0, r7, #0
	mov r3, #0
	bl ov49_0225EF98
_022611C0:
	mov r0, #0
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_022611C8: .word gSystem
_022611CC: .word 0x000005C1
_022611D0: .word ov49_02269B38
	thumb_func_end ov49_02260E2C

