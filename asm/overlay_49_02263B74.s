	.include "asm/macros.inc"
	.include "overlay_49_02263B74.inc"
	.include "global.inc"

    .text

	thumb_func_start ov49_02263B74
ov49_02263B74: ; 0x02263B74
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	bl ov49_02259FE8
	add r7, r0, #0
	add r0, r6, #0
	bl ov49_0225EF84
	add r4, r0, #0
	add r0, r7, #0
	bl ov45_0222B034
	str r0, [sp, #0x14]
	add r0, r7, #0
	bl ov45_0222B040
	str r0, [sp, #0x10]
	add r0, r7, #0
	bl ov45_0222B06C
	cmp r0, #0
	beq _02263BC2
	cmp r4, #0
	beq _02263BC2
	ldrh r0, [r4, #0xa]
	cmp r0, #1
	bne _02263BC2
	add r0, r6, #0
	mov r1, #0x1a
	bl ov49_0225EF8C
	add r0, r5, #0
	bl ov49_0225A0CC
	mov r0, #0
	strh r0, [r4, #0xa]
_02263BC2:
	cmp r4, #0
	beq _02263BD8
	add r0, r7, #0
	bl ov45_0222A5C0
	str r0, [sp, #0xc]
	ldrb r1, [r4, #3]
	add r0, r7, #0
	bl ov45_0222A578
	str r0, [sp, #8]
_02263BD8:
	add r0, r6, #0
	bl ov49_0225EF88
	cmp r0, #0
	beq _02263C00
	ldrh r0, [r4, #0xa]
	cmp r0, #1
	bne _02263C00
	ldr r0, [sp, #8]
	cmp r0, #0
	bne _02263C00
	add r0, r6, #0
	mov r1, #0x1a
	bl ov49_0225EF8C
	add r0, r5, #0
	bl ov49_0225A0CC
	mov r0, #0
	strh r0, [r4, #0xa]
_02263C00:
	add r0, r6, #0
	bl ov49_0225EF88
	cmp r0, #0x1f
	bhi _02263CCA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02263C16: ; jump table
	.short _02263C56 - _02263C16 - 2 ; case 0
	.short _02263CC0 - _02263C16 - 2 ; case 1
	.short _02263CF4 - _02263C16 - 2 ; case 2
	.short _02263D28 - _02263C16 - 2 ; case 3
	.short _02263D9A - _02263C16 - 2 ; case 4
	.short _02263DC4 - _02263C16 - 2 ; case 5
	.short _02263DF2 - _02263C16 - 2 ; case 6
	.short _02263E2A - _02263C16 - 2 ; case 7
	.short _02263E58 - _02263C16 - 2 ; case 8
	.short _02263E86 - _02263C16 - 2 ; case 9
	.short _02263F4C - _02263C16 - 2 ; case 10
	.short _02263F88 - _02263C16 - 2 ; case 11
	.short _02263FD0 - _02263C16 - 2 ; case 12
	.short _0226400C - _02263C16 - 2 ; case 13
	.short _0226405A - _02263C16 - 2 ; case 14
	.short _0226409E - _02263C16 - 2 ; case 15
	.short _022640CC - _02263C16 - 2 ; case 16
	.short _0226412C - _02263C16 - 2 ; case 17
	.short _0226417A - _02263C16 - 2 ; case 18
	.short _022641AA - _02263C16 - 2 ; case 19
	.short _022641DA - _02263C16 - 2 ; case 20
	.short _0226420C - _02263C16 - 2 ; case 21
	.short _02264240 - _02263C16 - 2 ; case 22
	.short _022642CE - _02263C16 - 2 ; case 23
	.short _0226431A - _02263C16 - 2 ; case 24
	.short _02264364 - _02263C16 - 2 ; case 25
	.short _02264392 - _02263C16 - 2 ; case 26
	.short _022643FC - _02263C16 - 2 ; case 27
	.short _0226442E - _02263C16 - 2 ; case 28
	.short _0226445C - _02263C16 - 2 ; case 29
	.short _02264466 - _02263C16 - 2 ; case 30
	.short _02264472 - _02263C16 - 2 ; case 31
_02263C56:
	add r0, r6, #0
	mov r1, #0x50
	bl ov49_0225EF40
	add r4, r0, #0
	mov r1, #0
	add r0, #0x44
	strh r1, [r0]
	add r0, r4, #0
	add r0, #0x46
	strh r1, [r0]
	add r0, r7, #0
	str r1, [r4, #0x48]
	bl ov45_0222B020
	str r0, [sp, #0x18]
	ldr r2, [sp, #0x18]
	add r0, r4, #0
	add r1, r7, #0
	bl ov49_02264CA8
	str r0, [sp, #0x1c]
	ldr r0, _02263FC8 ; =0x000005E4
	bl PlaySE
	add r0, r7, #0
	mov r1, #9
	bl ov45_0222A5E8
	ldr r0, [sp, #0x1c]
	cmp r0, #1
	bne _02263CB4
	ldr r1, [sp, #0x18]
	add r0, r5, #0
	mov r2, #0
	bl ov49_0225A428
	ldr r1, [sp, #0x18]
	add r0, r7, #0
	bl ov45_0222B0E8
	add r0, r6, #0
	mov r1, #1
	bl ov49_0225EF8C
	bl _022644DA
_02263CB4:
	add r0, r6, #0
	mov r1, #0x1a
	bl ov49_0225EF8C
	bl _022644DA
_02263CC0:
	add r0, r7, #0
	bl ov45_0222B0B0
	cmp r0, #0
	bne _02263CCE
_02263CCA:
	bl _022644DA
_02263CCE:
	ldr r0, [sp, #8]
	add r1, r7, #0
	str r0, [sp]
	ldr r0, [sp, #0xc]
	add r2, r5, #0
	str r0, [sp, #4]
	ldrb r3, [r4, #5]
	add r0, r4, #0
	bl ov49_02264D4C
	mov r0, #0x1e
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #2
	add r3, r6, #0
	bl ov49_02264CFC
	b _022644DA
_02263CF4:
	add r0, r7, #0
	bl IncrementGameStat47
	add r0, r7, #0
	mov r1, #7
	bl ov45_0222B118
	ldr r0, [sp, #0xc]
	add r1, r7, #0
	str r0, [sp]
	ldr r0, [sp, #8]
	add r2, r5, #0
	str r0, [sp, #4]
	ldrb r3, [r4, #4]
	add r0, r4, #0
	bl ov49_02264D4C
	mov r0, #0x1e
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #3
	add r3, r6, #0
	bl ov49_02264CFC
	b _022644DA
_02263D28:
	ldr r0, [sp, #0x14]
	cmp r0, #4
	bhi _02263D8A
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02263D3A: ; jump table
	.short _02263D8A - _02263D3A - 2 ; case 0
	.short _02263D8A - _02263D3A - 2 ; case 1
	.short _02263D70 - _02263D3A - 2 ; case 2
	.short _02263D44 - _02263D3A - 2 ; case 3
	.short _02263D8A - _02263D3A - 2 ; case 4
_02263D44:
	add r0, r5, #0
	bl ov49_0225A0CC
	add r0, r7, #0
	mov r1, #0
	bl ov45_0222AED8
	add r0, r7, #0
	bl ov45_0222B028
	cmp r0, #0
	beq _02263D66
	add r0, r6, #0
	mov r1, #4
	bl ov49_0225EF8C
	b _022644DA
_02263D66:
	add r0, r6, #0
	mov r1, #6
	bl ov49_0225EF8C
	b _022644DA
_02263D70:
	add r0, r5, #0
	bl ov49_0225A0DC
	cmp r0, #0
	bne _02263D80
	add r0, r5, #0
	bl ov49_0225A0BC
_02263D80:
	add r0, r4, #0
	add r1, r5, #0
	bl ov49_02264EC8
	b _022644DA
_02263D8A:
	add r0, r6, #0
	mov r1, #0x1a
	bl ov49_0225EF8C
	add r0, r5, #0
	bl ov49_0225A0CC
	b _022644DA
_02263D9A:
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl ov49_02264E20
	cmp r0, #1
	bne _02263DBA
	mov r0, #0x1e
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #5
	add r3, r6, #0
	bl ov49_02264CFC
	b _022644DA
_02263DBA:
	add r0, r6, #0
	mov r1, #5
	bl ov49_0225EF8C
	b _022644DA
_02263DC4:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov49_0225A334
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0x28
	bl ov49_02264C04
	add r1, r0, #0
	add r0, r5, #0
	bl ov49_0225A08C
	mov r0, #0x1e
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #7
	add r3, r6, #0
	bl ov49_02264CFC
	b _022644DA
_02263DF2:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov49_0225A334
	ldrh r1, [r4, #8]
	add r0, r5, #0
	mov r2, #1
	bl ov49_0225A334
	ldrb r1, [r4, #3]
	ldrh r2, [r4, #8]
	add r0, r5, #0
	bl ov49_02264C50
	add r1, r0, #0
	add r0, r5, #0
	bl ov49_0225A08C
	mov r0, #0x1e
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #7
	add r3, r6, #0
	bl ov49_02264CFC
	b _022644DA
_02263E2A:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov49_0225A334
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0x2f
	bl ov49_02264C04
	add r1, r0, #0
	add r0, r5, #0
	bl ov49_0225A08C
	mov r0, #0x1e
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #9
	add r3, r6, #0
	bl ov49_02264CFC
	b _022644DA
_02263E58:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov49_0225A334
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0x35
	bl ov49_02264C04
	add r1, r0, #0
	add r0, r5, #0
	bl ov49_0225A08C
	mov r0, #0x1e
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #9
	add r3, r6, #0
	bl ov49_02264CFC
	b _022644DA
_02263E86:
	ldr r0, [sp, #0x14]
	cmp r0, #4
	bhi _02263F3C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02263E98: ; jump table
	.short _02263F2C - _02263E98 - 2 ; case 0
	.short _02263F3C - _02263E98 - 2 ; case 1
	.short _02263F12 - _02263E98 - 2 ; case 2
	.short _02263EA2 - _02263E98 - 2 ; case 3
	.short _02263F3C - _02263E98 - 2 ; case 4
_02263EA2:
	ldr r0, [sp, #0x10]
	cmp r0, #3
	beq _02263EB2
	cmp r0, #4
	beq _02263ECE
	cmp r0, #5
	beq _02263EEA
	b _02263EFC
_02263EB2:
	add r0, r6, #0
	mov r1, #0xa
	bl ov49_0225EF8C
	add r0, r7, #0
	bl ov45_0222B0BC
	mov r0, #1
	str r0, [r4, #0x4c]
	ldr r1, [sp, #8]
	add r0, r4, #0
	bl ov49_02264F78
	b _02263F0A
_02263ECE:
	add r0, r6, #0
	mov r1, #0xe
	bl ov49_0225EF8C
	add r0, r7, #0
	bl ov45_0222B0BC
	mov r0, #1
	str r0, [r4, #0x4c]
	ldr r1, [sp, #8]
	add r0, r4, #0
	bl ov49_02264F78
	b _02263F0A
_02263EEA:
	add r0, r7, #0
	mov r1, #1
	bl ov45_0222AED8
	add r0, r6, #0
	mov r1, #0xf
	bl ov49_0225EF8C
	b _02263F0A
_02263EFC:
	add r0, r6, #0
	mov r1, #0x1a
	bl ov49_0225EF8C
	add r0, r5, #0
	bl ov49_0225A0CC
_02263F0A:
	add r0, r5, #0
	bl ov49_0225A0CC
	b _022644DA
_02263F12:
	add r0, r5, #0
	bl ov49_0225A0DC
	cmp r0, #0
	bne _02263F22
	add r0, r5, #0
	bl ov49_0225A0BC
_02263F22:
	add r0, r4, #0
	add r1, r5, #0
	bl ov49_02264EC8
	b _022644DA
_02263F2C:
	add r0, r6, #0
	mov r1, #0x1b
	bl ov49_0225EF8C
	add r0, r5, #0
	bl ov49_0225A0CC
	b _022644DA
_02263F3C:
	add r0, r6, #0
	mov r1, #0x1a
	bl ov49_0225EF8C
	add r0, r5, #0
	bl ov49_0225A0CC
	b _022644DA
_02263F4C:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov49_0225A334
	mov r3, #1
	str r3, [sp]
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl ov49_02264E90
	ldrb r1, [r4, #3]
	ldr r2, _02263FCC ; =0x000001FF
	add r0, r5, #0
	bl ov49_02264C04
	add r1, r0, #0
	add r0, r5, #0
	bl ov49_0225A08C
	mov r0, #0x1e
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0xb
	add r3, r6, #0
	bl ov49_02264CFC
	b _022644DA
_02263F88:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov49_0225A334
	mov r3, #1
	str r3, [sp]
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl ov49_02264E90
	mov r2, #2
	ldrb r1, [r4, #3]
	add r0, r5, #0
	lsl r2, r2, #8
	bl ov49_02264C04
	add r1, r0, #0
	add r0, r5, #0
	bl ov49_0225A08C
	mov r0, #0x1e
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0xc
	add r3, r6, #0
	bl ov49_02264CFC
	b _022644DA
	nop
_02263FC8: .word 0x000005E4
_02263FCC: .word 0x000001FF
_02263FD0:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov49_0225A334
	mov r3, #1
	str r3, [sp]
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl ov49_02264E90
	ldrb r1, [r4, #3]
	ldr r2, _02264348 ; =0x00000201
	add r0, r5, #0
	bl ov49_02264C04
	add r1, r0, #0
	add r0, r5, #0
	bl ov49_0225A08C
	mov r0, #0x1e
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0xd
	add r3, r6, #0
	bl ov49_02264CFC
	b _022644DA
_0226400C:
	ldr r0, _0226434C ; =0x000005BF
	bl PlaySE
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov49_0225A334
	ldrb r1, [r4, #3]
	ldr r2, _02264350 ; =0x00000202
	add r0, r5, #0
	bl ov49_02264C04
	add r1, r0, #0
	add r0, r5, #0
	bl ov49_0225A08C
	mov r0, #0x1e
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #8
	add r3, r6, #0
	bl ov49_02264CFC
	add r0, r7, #0
	mov r1, #2
	bl ov45_0222AED8
	add r0, r7, #0
	bl ov45_0222A5C0
	bl ov45_0222AAC8
	add r1, r0, #0
	add r0, r5, #0
	bl ov49_0225A478
	b _022644DA
_0226405A:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov49_0225A334
	mov r3, #1
	str r3, [sp]
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl ov49_02264E90
	ldrb r1, [r4, #3]
	ldr r2, _02264354 ; =0x000001FB
	add r0, r5, #0
	bl ov49_02264C04
	add r1, r0, #0
	add r0, r5, #0
	bl ov49_0225A08C
	mov r0, #0x1e
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x1b
	add r3, r6, #0
	bl ov49_02264CFC
	add r0, r7, #0
	mov r1, #2
	bl ov45_0222AED8
	b _022644DA
_0226409E:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov49_0225A334
	ldrb r1, [r4, #3]
	ldr r2, _02264358 ; =0x000002AF
	add r0, r5, #0
	bl ov49_02264C04
	add r1, r0, #0
	add r0, r5, #0
	bl ov49_0225A08C
	mov r0, #0x1e
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x10
	add r3, r6, #0
	bl ov49_02264CFC
	b _022644DA
_022640CC:
	ldr r0, [sp, #0x14]
	cmp r0, #4
	bhi _0226411C
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022640DE: ; jump table
	.short _0226411C - _022640DE - 2 ; case 0
	.short _0226411C - _022640DE - 2 ; case 1
	.short _02264102 - _022640DE - 2 ; case 2
	.short _022640E8 - _022640DE - 2 ; case 3
	.short _0226411C - _022640DE - 2 ; case 4
_022640E8:
	add r0, r6, #0
	mov r1, #0x11
	bl ov49_0225EF8C
	add r0, r5, #0
	bl ov49_0225A0CC
	add r0, r7, #0
	bl ov45_0222B0BC
	mov r0, #1
	str r0, [r4, #0x4c]
	b _022644DA
_02264102:
	add r0, r5, #0
	bl ov49_0225A0DC
	cmp r0, #0
	bne _02264112
	add r0, r5, #0
	bl ov49_0225A0BC
_02264112:
	add r0, r4, #0
	add r1, r5, #0
	bl ov49_02264EC8
	b _022644DA
_0226411C:
	add r0, r6, #0
	mov r1, #0x1a
	bl ov49_0225EF8C
	add r0, r5, #0
	bl ov49_0225A0CC
	b _022644DA
_0226412C:
	ldr r0, [sp, #0x10]
	cmp r0, #6
	blo _02264136
	cmp r0, #0x7e
	blo _02264140
_02264136:
	add r0, r6, #0
	mov r1, #0x1a
	bl ov49_0225EF8C
	b _022644DA
_02264140:
	sub r0, r0, #6
	strb r0, [r4, #2]
	ldrb r0, [r4, #2]
	mov r2, #0
	lsr r0, r0, #2
	strb r0, [r4]
	ldrb r1, [r4, #3]
	add r0, r5, #0
	bl ov49_0225A334
	ldrb r2, [r4]
	ldrb r1, [r4, #3]
	add r0, r5, #0
	add r2, #0x37
	bl ov49_02264C04
	add r1, r0, #0
	add r0, r5, #0
	bl ov49_0225A08C
	mov r0, #0x1e
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x12
	add r3, r6, #0
	bl ov49_02264CFC
	b _022644DA
_0226417A:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov49_0225A334
	ldrb r2, [r4]
	ldrb r1, [r4, #3]
	add r0, r5, #0
	add r2, #0x55
	bl ov49_02264C04
	add r1, r0, #0
	add r0, r5, #0
	bl ov49_0225A08C
	mov r0, #0x1e
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x13
	add r3, r6, #0
	bl ov49_02264CFC
	b _022644DA
_022641AA:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov49_0225A334
	ldrb r2, [r4, #2]
	ldrb r1, [r4, #3]
	add r0, r5, #0
	add r2, #0xec
	bl ov49_02264C04
	add r1, r0, #0
	add r0, r5, #0
	bl ov49_0225A08C
	mov r0, #0x1e
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x14
	add r3, r6, #0
	bl ov49_02264CFC
	b _022644DA
_022641DA:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov49_0225A334
	ldrb r3, [r4]
	ldr r2, _0226435C ; =0x000001DD
	ldrb r1, [r4, #3]
	add r0, r5, #0
	add r2, r3, r2
	bl ov49_02264C04
	add r1, r0, #0
	add r0, r5, #0
	bl ov49_0225A08C
	mov r0, #0x1e
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x15
	add r3, r6, #0
	bl ov49_02264CFC
	b _022644DA
_0226420C:
	mov r0, #2
	str r0, [sp]
	ldrb r3, [r4]
	add r0, r4, #0
	add r0, #0x14
	lsl r3, r3, #2
	add r1, r5, #0
	mov r2, #5
	add r3, #0x73
	bl ov49_02264F9C
	add r1, r4, #0
	mov r2, #0
	add r0, r5, #0
	add r1, #0x14
	add r3, r2, #0
	bl ov49_0225A174
	add r0, r4, #0
	bl ov49_02264F10
	add r0, r6, #0
	mov r1, #0x16
	bl ov49_0225EF8C
	b _022644DA
_02264240:
	add r0, r5, #0
	bl ov49_0225A1D4
	cmp r0, #4
	bhi _0226429A
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02264256: ; jump table
	.short _02264260 - _02264256 - 2 ; case 0
	.short _02264260 - _02264256 - 2 ; case 1
	.short _02264260 - _02264256 - 2 ; case 2
	.short _02264260 - _02264256 - 2 ; case 3
	.short _02264282 - _02264256 - 2 ; case 4
_02264260:
	ldrb r1, [r4]
	lsl r1, r1, #2
	add r0, r0, r1
	strb r0, [r4, #1]
	ldrb r1, [r4, #1]
	add r0, r7, #0
	add r1, r1, #6
	lsl r1, r1, #0x10
	lsr r1, r1, #0x10
	bl ov45_0222AED8
	add r0, r6, #0
	mov r1, #0x17
	bl ov49_0225EF8C
	mov r0, #1
	b _022642A4
_02264282:
	mov r0, #0x7e
	strb r0, [r4, #1]
	ldrb r1, [r4, #1]
	add r0, r7, #0
	bl ov45_0222AED8
	add r0, r6, #0
	mov r1, #0x1c
	bl ov49_0225EF8C
	mov r0, #1
	b _022642A4
_0226429A:
	add r0, r4, #0
	add r1, r5, #0
	bl ov49_02264F24
	mov r0, #0
_022642A4:
	cmp r0, #0
	bne _022642AA
	b _022644DA
_022642AA:
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	bl ov49_0225A1E4
	add r0, r4, #0
	add r0, #0x14
	add r1, r5, #0
	bl ov49_02265260
	add r0, r4, #0
	bl ov49_02264F1C
	ldr r1, [sp, #8]
	add r0, r4, #0
	bl ov49_02264F78
	b _022644DA
_022642CE:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov49_0225A334
	ldrb r3, [r4, #1]
	ldr r2, _02264360 ; =0x00000165
	ldrb r1, [r4, #3]
	add r0, r5, #0
	add r2, r3, r2
	bl ov49_02264C04
	add r1, r0, #0
	add r0, r5, #0
	bl ov49_0225A08C
	ldrb r1, [r4, #2]
	ldrb r0, [r4, #1]
	cmp r1, r0
	bne _02264308
	mov r0, #0x1e
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x18
	add r3, r6, #0
	bl ov49_02264CFC
	b _022644DA
_02264308:
	mov r0, #0x1e
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x19
	add r3, r6, #0
	bl ov49_02264CFC
	b _022644DA
_0226431A:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov49_0225A334
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0x33
	bl ov49_02264C04
	add r1, r0, #0
	add r0, r5, #0
	bl ov49_0225A08C
	mov r0, #0x1e
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x19
	add r3, r6, #0
	bl ov49_02264CFC
	b _022644DA
	.balign 4, 0
_02264348: .word 0x00000201
_0226434C: .word 0x000005BF
_02264350: .word 0x00000202
_02264354: .word 0x000001FB
_02264358: .word 0x000002AF
_0226435C: .word 0x000001DD
_02264360: .word 0x00000165
_02264364:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov49_0225A334
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0x34
	bl ov49_02264C04
	add r1, r0, #0
	add r0, r5, #0
	bl ov49_0225A08C
	mov r0, #0x1e
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #8
	add r3, r6, #0
	bl ov49_02264CFC
	b _022644DA
_02264392:
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	bl ov49_0225A1E4
	add r0, r4, #0
	add r0, #0x14
	add r1, r5, #0
	bl ov49_02265260
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0x2d
	bl ov49_02264C04
	str r0, [sp, #0x20]
	ldr r1, [sp, #0x20]
	add r0, r5, #0
	bl ov49_0225A08C
	mov r0, #0
	strh r0, [r4, #0xa]
	ldr r0, [sp, #0x20]
	bl String_GetLength
	str r0, [sp, #0x24]
	add r0, r5, #0
	bl ov49_0225CB70
	ldr r1, [sp, #0x24]
	mul r0, r1
	lsr r1, r0, #1
	add r1, #0x3c
	cmp r1, #0x80
	bhs _022643DC
	mov r1, #0x80
	b _022643E2
_022643DC:
	cmp r1, #0xff
	bls _022643E2
	mov r1, #0xff
_022643E2:
	mov r0, #0x1d
	lsl r1, r1, #0x18
	str r0, [sp]
	add r0, r4, #0
	lsr r1, r1, #0x18
	mov r2, #0x1f
	add r3, r6, #0
	bl ov49_02264CFC
	add r0, r7, #0
	bl ov45_0222AFC4
	b _022644DA
_022643FC:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov49_0225A334
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0x2b
	bl ov49_02264C04
	add r1, r0, #0
	add r0, r5, #0
	bl ov49_0225A08C
	mov r0, #0
	strh r0, [r4, #0xa]
	mov r0, #0x1d
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x1f
	add r3, r6, #0
	bl ov49_02264CFC
	b _022644DA
_0226442E:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov49_0225A334
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0x31
	bl ov49_02264C04
	add r1, r0, #0
	add r0, r5, #0
	bl ov49_0225A08C
	mov r0, #0x1e
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x1b
	add r3, r6, #0
	bl ov49_02264CFC
	b _022644DA
_0226445C:
	add r0, r4, #0
	add r1, r6, #0
	bl ov49_02264D14
	b _022644DA
_02264466:
	add r0, r4, #0
	add r1, r6, #0
	add r2, r5, #0
	bl ov49_02264D30
	b _022644DA
_02264472:
	add r0, r4, #0
	add r0, #0x44
	ldrh r0, [r0]
	cmp r0, #1
	bne _0226448A
	add r1, r4, #0
	add r1, #0x46
	ldrh r1, [r1]
	ldr r2, [r4, #0x48]
	add r0, r7, #0
	bl ov45_0222A704
_0226448A:
	ldr r0, [r4, #0x4c]
	cmp r0, #0
	bne _02264498
	ldrb r1, [r4, #3]
	add r0, r7, #0
	bl ov45_0222B0D8
_02264498:
	add r0, r7, #0
	bl ov45_0222AE64
	add r0, r5, #0
	bl ov49_0225A0EC
	add r0, r4, #0
	bl ov49_02264CF8
	add r0, r6, #0
	bl ov49_0225EF68
	add r0, r7, #0
	mov r1, #1
	bl ov45_0222A5E8
	add r0, r5, #0
	bl ov49_02259FF0
	add r4, r0, #0
	bl ov49_02258DAC
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #1
	bl ov49_02258EEC
	add r0, r5, #0
	bl ov49_0225A4D0
	add sp, #0x28
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_022644DA:
	add r0, r4, #0
	bl ov49_02264F60
	mov r0, #0
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov49_02263B74

	thumb_func_start ov49_022644E8
ov49_022644E8: ; 0x022644E8
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r6, r0, #0
	bl ov49_0225EF84
	add r5, r0, #0
	add r0, r4, #0
	bl ov49_02259FE8
	add r7, r0, #0
	add r0, r6, #0
	bl ov49_0225EF88
	cmp r0, #0x18
	bls _0226450A
	b _022649EA
_0226450A:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02264516: ; jump table
	.short _02264548 - _02264516 - 2 ; case 0
	.short _02264588 - _02264516 - 2 ; case 1
	.short _022645A8 - _02264516 - 2 ; case 2
	.short _022645C8 - _02264516 - 2 ; case 3
	.short _022645E8 - _02264516 - 2 ; case 4
	.short _02264608 - _02264516 - 2 ; case 5
	.short _02264632 - _02264516 - 2 ; case 6
	.short _022646E0 - _02264516 - 2 ; case 7
	.short _02264700 - _02264516 - 2 ; case 8
	.short _0226471E - _02264516 - 2 ; case 9
	.short _02264796 - _02264516 - 2 ; case 10
	.short _022647C0 - _02264516 - 2 ; case 11
	.short _022647EA - _02264516 - 2 ; case 12
	.short _02264814 - _02264516 - 2 ; case 13
	.short _02264834 - _02264516 - 2 ; case 14
	.short _02264854 - _02264516 - 2 ; case 15
	.short _02264874 - _02264516 - 2 ; case 16
	.short _02264898 - _02264516 - 2 ; case 17
	.short _0226490E - _02264516 - 2 ; case 18
	.short _0226492E - _02264516 - 2 ; case 19
	.short _0226494E - _02264516 - 2 ; case 20
	.short _0226496E - _02264516 - 2 ; case 21
	.short _0226498E - _02264516 - 2 ; case 22
	.short _022649AE - _02264516 - 2 ; case 23
	.short _022649C2 - _02264516 - 2 ; case 24
_02264548:
	add r0, r6, #0
	mov r1, #0x28
	bl ov49_0225EF40
	ldr r0, _02264894 ; =0x000005DC
	bl PlaySE
	add r0, r7, #0
	bl ov45_0222A330
	cmp r0, #1
	bne _0226456A
	add r0, r6, #0
	mov r1, #2
	bl ov49_0225EF8C
	b _022649EA
_0226456A:
	add r0, r7, #0
	bl ov45_0222A374
	cmp r0, #1
	bne _0226457E
	add r0, r6, #0
	mov r1, #1
	bl ov49_0225EF8C
	b _022649EA
_0226457E:
	add r0, r6, #0
	mov r1, #3
	bl ov49_0225EF8C
	b _022649EA
_02264588:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x4e
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r4, #0
	bl ov49_0225A08C
	mov r0, #0x18
	str r0, [r5]
	add r0, r6, #0
	mov r1, #0x17
	bl ov49_0225EF8C
	b _022649EA
_022645A8:
	add r0, r4, #0
	mov r1, #1
	mov r2, #3
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r4, #0
	bl ov49_0225A08C
	mov r0, #0x18
	str r0, [r5]
	add r0, r6, #0
	mov r1, #0x17
	bl ov49_0225EF8C
	b _022649EA
_022645C8:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0xf
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r4, #0
	bl ov49_0225A08C
	mov r0, #4
	str r0, [r5]
	add r0, r6, #0
	mov r1, #0x17
	bl ov49_0225EF8C
	b _022649EA
_022645E8:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x10
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r4, #0
	bl ov49_0225A08C
	mov r0, #5
	str r0, [r5]
	add r0, r6, #0
	mov r1, #0x17
	bl ov49_0225EF8C
	b _022649EA
_02264608:
	add r0, r5, #4
	add r1, r4, #0
	bl ov49_02265110
	mov r0, #0x10
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0xf
	mov r2, #0
	str r0, [sp, #8]
	add r0, r4, #0
	add r1, r5, #4
	add r3, r2, #0
	bl ov49_0225A1A4
	add r0, r6, #0
	mov r1, #6
	bl ov49_0225EF8C
	b _022649EA
_02264632:
	add r0, r4, #0
	mov r7, #0
	bl ov49_0225A1D4
	cmp r0, #7
	bhi _0226465A
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_0226464A: ; jump table
	.short _02264664 - _0226464A - 2 ; case 0
	.short _02264670 - _0226464A - 2 ; case 1
	.short _0226467C - _0226464A - 2 ; case 2
	.short _02264688 - _0226464A - 2 ; case 3
	.short _02264694 - _0226464A - 2 ; case 4
	.short _022646A0 - _0226464A - 2 ; case 5
	.short _022646AC - _0226464A - 2 ; case 6
	.short _022646BE - _0226464A - 2 ; case 7
_0226465A:
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	beq _022646B8
	b _022646C8
_02264664:
	add r0, r6, #0
	mov r1, #7
	bl ov49_0225EF8C
	mov r7, #1
	b _022646C8
_02264670:
	add r0, r6, #0
	mov r1, #8
	bl ov49_0225EF8C
	mov r7, #1
	b _022646C8
_0226467C:
	add r0, r6, #0
	mov r1, #0xd
	bl ov49_0225EF8C
	mov r7, #1
	b _022646C8
_02264688:
	add r0, r6, #0
	mov r1, #0xe
	bl ov49_0225EF8C
	mov r7, #1
	b _022646C8
_02264694:
	add r0, r6, #0
	mov r1, #0xf
	bl ov49_0225EF8C
	mov r7, #1
	b _022646C8
_022646A0:
	add r0, r6, #0
	mov r1, #0x15
	bl ov49_0225EF8C
	mov r7, #1
	b _022646C8
_022646AC:
	add r0, r6, #0
	mov r1, #0x10
	bl ov49_0225EF8C
	mov r7, #1
	b _022646C8
_022646B8:
	ldr r0, _02264894 ; =0x000005DC
	bl PlaySE
_022646BE:
	add r0, r6, #0
	mov r1, #0x16
	bl ov49_0225EF8C
	mov r7, #1
_022646C8:
	cmp r7, #1
	bne _02264780
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov49_0225A1E4
	add r0, r5, #4
	add r1, r4, #0
	bl ov49_02265260
	b _022649EA
_022646E0:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x17
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r4, #0
	bl ov49_0225A08C
	mov r0, #4
	str r0, [r5]
	add r0, r6, #0
	mov r1, #0x17
	bl ov49_0225EF8C
	b _022649EA
_02264700:
	add r0, r5, #4
	add r1, r4, #0
	bl ov49_022651E8
	mov r2, #0
	add r0, r4, #0
	add r1, r5, #4
	add r3, r2, #0
	bl ov49_0225A174
	add r0, r6, #0
	mov r1, #9
	bl ov49_0225EF8C
	b _022649EA
_0226471E:
	add r0, r4, #0
	mov r7, #0
	bl ov49_0225A1D4
	cmp r0, #3
	bhi _0226473E
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_02264736: ; jump table
	.short _02264748 - _02264736 - 2 ; case 0
	.short _02264754 - _02264736 - 2 ; case 1
	.short _02264760 - _02264736 - 2 ; case 2
	.short _02264772 - _02264736 - 2 ; case 3
_0226473E:
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	beq _0226476C
	b _0226477C
_02264748:
	add r0, r6, #0
	mov r1, #0xa
	bl ov49_0225EF8C
	mov r7, #1
	b _0226477C
_02264754:
	add r0, r6, #0
	mov r1, #0xb
	bl ov49_0225EF8C
	mov r7, #1
	b _0226477C
_02264760:
	add r0, r6, #0
	mov r1, #0xc
	bl ov49_0225EF8C
	mov r7, #1
	b _0226477C
_0226476C:
	ldr r0, _02264894 ; =0x000005DC
	bl PlaySE
_02264772:
	add r0, r6, #0
	mov r1, #4
	bl ov49_0225EF8C
	mov r7, #1
_0226477C:
	cmp r7, #1
	beq _02264782
_02264780:
	b _022649EA
_02264782:
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov49_0225A1E4
	add r0, r5, #4
	add r1, r4, #0
	bl ov49_02265260
	b _022649EA
_02264796:
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov49_0225A37C
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x18
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r4, #0
	bl ov49_0225A08C
	mov r0, #4
	str r0, [r5]
	add r0, r6, #0
	mov r1, #0x17
	bl ov49_0225EF8C
	b _022649EA
_022647C0:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0
	bl ov49_0225A37C
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x19
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r4, #0
	bl ov49_0225A08C
	mov r0, #4
	str r0, [r5]
	add r0, r6, #0
	mov r1, #0x17
	bl ov49_0225EF8C
	b _022649EA
_022647EA:
	add r0, r4, #0
	mov r1, #2
	mov r2, #0
	bl ov49_0225A37C
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x1a
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r4, #0
	bl ov49_0225A08C
	mov r0, #4
	str r0, [r5]
	add r0, r6, #0
	mov r1, #0x17
	bl ov49_0225EF8C
	b _022649EA
_02264814:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x12
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r4, #0
	bl ov49_0225A08C
	mov r0, #4
	str r0, [r5]
	add r0, r6, #0
	mov r1, #0x17
	bl ov49_0225EF8C
	b _022649EA
_02264834:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x13
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r4, #0
	bl ov49_0225A08C
	mov r0, #4
	str r0, [r5]
	add r0, r6, #0
	mov r1, #0x17
	bl ov49_0225EF8C
	b _022649EA
_02264854:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x14
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r4, #0
	bl ov49_0225A08C
	mov r0, #4
	str r0, [r5]
	add r0, r6, #0
	mov r1, #0x17
	bl ov49_0225EF8C
	b _022649EA
_02264874:
	add r0, r5, #4
	add r1, r4, #0
	bl ov49_02265170
	mov r2, #0
	add r0, r4, #0
	add r1, r5, #4
	add r3, r2, #0
	bl ov49_0225A174
	add r0, r6, #0
	mov r1, #0x11
	bl ov49_0225EF8C
	b _022649EA
	nop
_02264894: .word 0x000005DC
_02264898:
	add r0, r4, #0
	mov r7, #0
	bl ov49_0225A1D4
	cmp r0, #3
	bhi _022648B8
	add r1, r0, r0
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_022648B0: ; jump table
	.short _022648C2 - _022648B0 - 2 ; case 0
	.short _022648CE - _022648B0 - 2 ; case 1
	.short _022648DA - _022648B0 - 2 ; case 2
	.short _022648EC - _022648B0 - 2 ; case 3
_022648B8:
	mov r1, #1
	mvn r1, r1
	cmp r0, r1
	beq _022648E6
	b _022648F6
_022648C2:
	add r0, r6, #0
	mov r1, #0x12
	bl ov49_0225EF8C
	mov r7, #1
	b _022648F6
_022648CE:
	add r0, r6, #0
	mov r1, #0x13
	bl ov49_0225EF8C
	mov r7, #1
	b _022648F6
_022648DA:
	add r0, r6, #0
	mov r1, #0x14
	bl ov49_0225EF8C
	mov r7, #1
	b _022648F6
_022648E6:
	ldr r0, _022649F0 ; =0x000005DC
	bl PlaySE
_022648EC:
	add r0, r6, #0
	mov r1, #4
	bl ov49_0225EF8C
	mov r7, #1
_022648F6:
	cmp r7, #1
	bne _022649EA
	mov r1, #0
	add r0, r4, #0
	add r2, r1, #0
	bl ov49_0225A1E4
	add r0, r5, #4
	add r1, r4, #0
	bl ov49_02265260
	b _022649EA
_0226490E:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x1b
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r4, #0
	bl ov49_0225A08C
	mov r0, #4
	str r0, [r5]
	add r0, r6, #0
	mov r1, #0x17
	bl ov49_0225EF8C
	b _022649EA
_0226492E:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x1c
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r4, #0
	bl ov49_0225A08C
	mov r0, #4
	str r0, [r5]
	add r0, r6, #0
	mov r1, #0x17
	bl ov49_0225EF8C
	b _022649EA
_0226494E:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x1d
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r4, #0
	bl ov49_0225A08C
	mov r0, #4
	str r0, [r5]
	add r0, r6, #0
	mov r1, #0x17
	bl ov49_0225EF8C
	b _022649EA
_0226496E:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x1e
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r4, #0
	bl ov49_0225A08C
	mov r0, #4
	str r0, [r5]
	add r0, r6, #0
	mov r1, #0x17
	bl ov49_0225EF8C
	b _022649EA
_0226498E:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x16
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r4, #0
	bl ov49_0225A08C
	mov r0, #0x18
	str r0, [r5]
	add r0, r6, #0
	mov r1, #0x17
	bl ov49_0225EF8C
	b _022649EA
_022649AE:
	add r0, r4, #0
	bl ov49_0225A0AC
	cmp r0, #0
	beq _022649EA
	ldr r1, [r5]
	add r0, r6, #0
	bl ov49_0225EF8C
	b _022649EA
_022649C2:
	add r0, r6, #0
	bl ov49_0225EF68
	add r0, r4, #0
	bl ov49_0225A0EC
	add r0, r4, #0
	bl ov49_02259FF0
	add r4, r0, #0
	bl ov49_02258DAC
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #1
	bl ov49_02258EEC
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_022649EA:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
_022649F0: .word 0x000005DC
	thumb_func_end ov49_022644E8

