	.include "asm/macros.inc"
	.include "overlay_49_02262DB8.inc"
	.include "global.inc"

    .text

	thumb_func_start ov49_02262DB8
ov49_02262DB8: ; 0x02262DB8
	mov r2, #0
	strb r2, [r0]
	strb r2, [r0, #1]
	strb r2, [r0, #2]
	strb r2, [r0, #3]
	strb r2, [r0, #4]
	strb r2, [r0, #5]
	strb r2, [r0, #6]
	strb r2, [r0, #7]
	ldr r3, _02262DD0 ; =ov49_0225A22C
	add r0, r1, #0
	bx r3
	.balign 4, 0
_02262DD0: .word ov49_0225A22C
	thumb_func_end ov49_02262DB8

	thumb_func_start ov49_02262DD4
ov49_02262DD4: ; 0x02262DD4
	push {r4, lr}
	add r4, r0, #0
	add r0, r1, #0
	mov r1, #0x1e
	bl _s32_div_f
	lsl r0, r0, #0x10
	asr r1, r0, #0x10
	mov r0, #4
	ldrsh r0, [r4, r0]
	cmp r1, r0
	beq _02262DF6
	strh r1, [r4, #4]
	ldrb r1, [r4, #7]
	mov r0, #8
	orr r0, r1
	strb r0, [r4, #7]
_02262DF6:
	pop {r4, pc}
	thumb_func_end ov49_02262DD4

	thumb_func_start ov49_02262DF8
ov49_02262DF8: ; 0x02262DF8
	push {r3, lr}
	mov r3, #0
	bl ov49_02262E10
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov49_02262DF8

	thumb_func_start ov49_02262E04
ov49_02262E04: ; 0x02262E04
	push {r3, lr}
	mov r3, #1
	bl ov49_02262E10
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov49_02262E04

	thumb_func_start ov49_02262E10
ov49_02262E10: ; 0x02262E10
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r4, r1, #0
	str r3, [sp, #4]
	cmp r2, #0
	beq _02262E22
	mov r0, #0xff
	strb r0, [r5, #7]
_02262E22:
	ldrb r0, [r5, #3]
	cmp r0, #0
	beq _02262E32
	cmp r0, #1
	beq _02262E36
	cmp r0, #2
	beq _02262E3A
	b _02262E3E
_02262E32:
	mov r6, #0
	b _02262E44
_02262E36:
	mov r6, #1
	b _02262E44
_02262E3A:
	mov r6, #2
	b _02262E44
_02262E3E:
	bl GF_AssertFail
	mov r6, #2
_02262E44:
	add r0, r6, #0
	bl ov45_0222F274
	add r7, r0, #0
	ldrb r0, [r5]
	cmp r0, r7
	beq _02262E5A
	ldrb r1, [r5, #7]
	mov r0, #4
	orr r0, r1
	strb r0, [r5, #7]
_02262E5A:
	strb r7, [r5]
	add r0, r6, #0
	bl ov45_0222F294
	ldrb r1, [r5, #2]
	cmp r1, r0
	beq _02262E70
	ldrb r2, [r5, #7]
	mov r1, #4
	orr r1, r2
	strb r1, [r5, #7]
_02262E70:
	strb r0, [r5, #2]
	cmp r7, #1
	bne _02262E7E
	add r0, r6, #0
	bl ov45_0222F2D4
	b _02262E80
_02262E7E:
	mov r0, #4
_02262E80:
	ldrb r1, [r5, #1]
	cmp r1, r0
	beq _02262E8E
	ldrb r2, [r5, #7]
	mov r1, #2
	orr r1, r2
	strb r1, [r5, #7]
_02262E8E:
	strb r0, [r5, #1]
	ldrb r1, [r5, #7]
	mov r0, #1
	tst r0, r1
	beq _02262EC8
	mov r0, #0x10
	mov r1, #0
	str r0, [sp]
	add r0, r4, #0
	add r2, r1, #0
	mov r3, #0x68
	bl ov49_0225A24C
	ldrb r1, [r5, #3]
	add r0, r4, #0
	mov r2, #0
	bl ov49_0225A37C
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x36
	bl ov49_0225A30C
	mov r2, #0
	add r1, r0, #0
	add r0, r4, #0
	add r3, r2, #0
	bl ov49_0225A23C
_02262EC8:
	ldrb r1, [r5, #7]
	mov r0, #4
	tst r0, r1
	beq _02262F18
	mov r2, #0x10
	add r0, r4, #0
	mov r1, #0
	mov r3, #0x68
	str r2, [sp]
	bl ov49_0225A24C
	ldr r0, [sp, #4]
	cmp r0, #1
	bne _02262F18
	ldrb r0, [r5, #2]
	cmp r0, #0
	bne _02262F18
	ldrb r0, [r5]
	cmp r0, #1
	bne _02262F18
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x45
	bl ov49_0225A30C
	add r6, r0, #0
	mov r0, #0
	add r1, r6, #0
	add r2, r0, #0
	bl FontID_String_GetWidth
	mov r1, #0x68
	sub r0, r1, r0
	lsl r0, r0, #0x18
	lsr r2, r0, #0x18
	add r0, r4, #0
	add r1, r6, #0
	mov r3, #0x10
	bl ov49_0225A23C
_02262F18:
	ldrb r1, [r5, #7]
	mov r0, #2
	tst r0, r1
	beq _02262F68
	mov r2, #0x20
	add r0, r4, #0
	mov r1, #0
	mov r3, #0x68
	str r2, [sp]
	bl ov49_0225A24C
	mov r0, #2
	str r0, [sp]
	mov r2, #1
	ldrb r1, [r5, #1]
	add r0, r4, #0
	add r3, r2, #0
	bl ov49_0225A31C
	mov r0, #2
	str r0, [sp]
	ldrb r2, [r5, #1]
	mov r1, #4
	add r0, r4, #0
	sub r1, r1, r2
	mov r2, #1
	mov r3, #0
	bl ov49_0225A31C
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x44
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #0
	mov r3, #0x20
	bl ov49_0225A23C
_02262F68:
	ldrb r0, [r5, #6]
	cmp r0, #1
	bne _02262FAC
	ldrb r1, [r5, #7]
	mov r0, #8
	tst r0, r1
	beq _02262FAC
	mov r0, #0x10
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0
	mov r2, #0x40
	mov r3, #0x68
	bl ov49_0225A24C
	mov r2, #2
	str r2, [sp]
	mov r1, #4
	ldrsh r1, [r5, r1]
	add r0, r4, #0
	mov r3, #0
	bl ov49_0225A31C
	add r0, r4, #0
	mov r1, #0
	mov r2, #0xf
	bl ov49_0225A30C
	add r1, r0, #0
	add r0, r4, #0
	mov r2, #0
	mov r3, #0x40
	bl ov49_0225A23C
_02262FAC:
	mov r0, #0
	strb r0, [r5, #7]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov49_02262E10

	thumb_func_start ov49_02262FB4
ov49_02262FB4: ; 0x02262FB4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x54
	add r5, r1, #0
	add r6, r0, #0
	add r0, r5, #0
	str r2, [sp, #0xc]
	bl ov49_02259FE8
	add r7, r0, #0
	add r0, r5, #0
	bl ov49_0225A010
	str r0, [sp, #0x24]
	add r0, r6, #0
	bl ov49_0225EF84
	add r4, r0, #0
	add r0, r7, #0
	bl ov45_0222B034
	str r0, [sp, #0x20]
	add r0, r7, #0
	bl ov45_0222B040
	str r0, [sp, #0x1c]
	add r0, r7, #0
	bl ov45_0222B06C
	cmp r0, #0
	beq _0226300C
	cmp r4, #0
	beq _0226300C
	ldrh r0, [r4, #0xa]
	cmp r0, #0
	beq _0226300C
	add r0, r6, #0
	mov r1, #0x20
	bl ov49_0225EF8C
	add r0, r5, #0
	bl ov49_0225A0CC
	mov r0, #0
	strh r0, [r4, #0xa]
_0226300C:
	cmp r4, #0
	beq _0226302E
	add r0, r7, #0
	bl ov45_0222A5C0
	str r0, [sp, #0x18]
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _0226302A
	ldrb r1, [r4, #3]
	add r0, r7, #0
	bl ov45_0222A578
	str r0, [sp, #0x14]
	b _0226302E
_0226302A:
	mov r0, #0
	str r0, [sp, #0x14]
_0226302E:
	add r0, r6, #0
	bl ov49_0225EF88
	cmp r0, #0
	beq _02263056
	ldrh r0, [r4, #0xa]
	cmp r0, #0
	beq _02263056
	ldr r0, [sp, #0x14]
	cmp r0, #0
	bne _02263056
	add r0, r6, #0
	mov r1, #0x20
	bl ov49_0225EF8C
	add r0, r5, #0
	bl ov49_0225A0CC
	mov r0, #0
	strh r0, [r4, #0xa]
_02263056:
	add r0, r6, #0
	bl ov49_0225EF88
	cmp r0, #0x26
	bls _02263064
	bl _02263B5E
_02263064:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02263070: ; jump table
	.short _022630BE - _02263070 - 2 ; case 0
	.short _02263184 - _02263070 - 2 ; case 1
	.short _022631A8 - _02263070 - 2 ; case 2
	.short _022631F0 - _02263070 - 2 ; case 3
	.short _02263226 - _02263070 - 2 ; case 4
	.short _02263256 - _02263070 - 2 ; case 5
	.short _022632C8 - _02263070 - 2 ; case 6
	.short _022632F6 - _02263070 - 2 ; case 7
	.short _02263326 - _02263070 - 2 ; case 8
	.short _0226335E - _02263070 - 2 ; case 9
	.short _0226338C - _02263070 - 2 ; case 10
	.short _022633BA - _02263070 - 2 ; case 11
	.short _022633EA - _02263070 - 2 ; case 12
	.short _02263466 - _02263070 - 2 ; case 13
	.short _02263524 - _02263070 - 2 ; case 14
	.short _02263554 - _02263070 - 2 ; case 15
	.short _022635CC - _02263070 - 2 ; case 16
	.short _02263618 - _02263070 - 2 ; case 17
	.short _02263628 - _02263070 - 2 ; case 18
	.short _02263696 - _02263070 - 2 ; case 19
	.short _022636A8 - _02263070 - 2 ; case 20
	.short _022636E8 - _02263070 - 2 ; case 21
	.short _0226372A - _02263070 - 2 ; case 22
	.short _0226375C - _02263070 - 2 ; case 23
	.short _0226378A - _02263070 - 2 ; case 24
	.short _022637E2 - _02263070 - 2 ; case 25
	.short _02263828 - _02263070 - 2 ; case 26
	.short _02263870 - _02263070 - 2 ; case 27
	.short _022638B6 - _02263070 - 2 ; case 28
	.short _02263914 - _02263070 - 2 ; case 29
	.short _0226397C - _02263070 - 2 ; case 30
	.short _022639AA - _02263070 - 2 ; case 31
	.short _022639D8 - _02263070 - 2 ; case 32
	.short _02263A42 - _02263070 - 2 ; case 33
	.short _02263A74 - _02263070 - 2 ; case 34
	.short _02263A9C - _02263070 - 2 ; case 35
	.short _02263AD0 - _02263070 - 2 ; case 36
	.short _02263ADA - _02263070 - 2 ; case 37
	.short _02263AE6 - _02263070 - 2 ; case 38
_022630BE:
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
	add r0, r4, #0
	add r0, #0x38
	str r1, [r4, #0x48]
	bl ov49_0226526C
	add r0, r5, #0
	bl ov49_02259FF0
	str r0, [sp, #0x28]
	bl ov49_02258DAC
	str r0, [sp, #0x2c]
	ldr r0, [sp, #0x28]
	ldr r1, [sp, #0x2c]
	bl ov49_02258F40
	str r0, [sp, #0x30]
	cmp r0, #0
	bne _0226310A
	mov r0, #0
	strh r0, [r4, #0xa]
	add r0, r6, #0
	mov r1, #0x26
	bl ov49_0225EF8C
	bl _02263B5E
_0226310A:
	mov r1, #4
	bl ov49_02258E60
	str r0, [sp, #0x34]
	ldr r0, [sp, #0x2c]
	mov r1, #6
	bl ov49_02258E60
	bl ov42_022282A4
	str r0, [sp, #0x38]
	add r0, r7, #0
	bl ov45_0222AE64
	ldr r2, [sp, #0x34]
	add r0, r4, #0
	add r1, r7, #0
	bl ov49_02264CA8
	str r0, [sp, #0x3c]
	ldr r0, [sp, #0x30]
	mov r1, #0
	str r0, [r4, #0x10]
	bl ov49_02259130
	ldr r0, [sp, #0x30]
	ldr r1, [sp, #0x38]
	bl ov49_02259160
	ldr r0, [sp, #0x24]
	ldr r1, [sp, #0x34]
	mov r2, #0
	bl ov49_0225EFF0
	ldr r0, _022634A0 ; =0x000005E4
	bl PlaySE
	add r0, r7, #0
	mov r1, #9
	bl ov45_0222A5E8
	ldr r0, [sp, #0x3c]
	cmp r0, #1
	bne _02263178
	ldr r1, [sp, #0x34]
	add r0, r5, #0
	mov r2, #0
	bl ov49_0225A428
	add r0, r6, #0
	mov r1, #1
	bl ov49_0225EF8C
	bl _02263B5E
_02263178:
	add r0, r6, #0
	mov r1, #0x22
	bl ov49_0225EF8C
	bl _02263B5E
_02263184:
	ldrb r1, [r4, #3]
	add r0, r7, #0
	bl ov45_0222AE74
	cmp r0, #1
	bne _0226319C
	add r0, r6, #0
	mov r1, #2
	bl ov49_0225EF8C
	bl _02263B5E
_0226319C:
	add r0, r6, #0
	mov r1, #0x22
	bl ov49_0225EF8C
	bl _02263B5E
_022631A8:
	ldr r0, [sp, #0x20]
	cmp r0, #4
	bhi _022631E4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022631BA: ; jump table
	.short _022631D8 - _022631BA - 2 ; case 0
	.short _02263B5E - _022631BA - 2 ; case 1
	.short _022631C4 - _022631BA - 2 ; case 2
	.short _022631E4 - _022631BA - 2 ; case 3
	.short _022631E4 - _022631BA - 2 ; case 4
_022631C4:
	ldrb r1, [r4, #3]
	add r0, r7, #0
	bl ov45_0222B0E8
	add r0, r6, #0
	mov r1, #3
	bl ov49_0225EF8C
	bl _02263B5E
_022631D8:
	add r0, r6, #0
	mov r1, #0x22
	bl ov49_0225EF8C
	bl _02263B5E
_022631E4:
	add r0, r6, #0
	mov r1, #0x20
	bl ov49_0225EF8C
	bl _02263B5E
_022631F0:
	add r0, r7, #0
	bl IncrementGameStat47
	add r0, r7, #0
	mov r1, #7
	bl ov45_0222B118
	ldr r0, [sp, #0x18]
	add r1, r7, #0
	str r0, [sp]
	ldr r0, [sp, #0x14]
	add r2, r5, #0
	str r0, [sp, #4]
	ldrb r3, [r4, #4]
	add r0, r4, #0
	bl ov49_02264D4C
	mov r0, #0x25
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #4
	add r3, r6, #0
	bl ov49_02264CFC
	bl _02263B5E
_02263226:
	ldr r0, [sp, #0x14]
	add r1, r7, #0
	str r0, [sp]
	ldr r0, [sp, #0x18]
	add r2, r5, #0
	str r0, [sp, #4]
	ldrb r3, [r4, #5]
	add r0, r4, #0
	bl ov49_02264D4C
	mov r0, #0x25
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #5
	add r3, r6, #0
	bl ov49_02264CFC
	add r0, r7, #0
	mov r1, #0
	bl ov45_0222AED8
	bl _02263B5E
_02263256:
	ldr r0, [sp, #0x20]
	cmp r0, #4
	bhi _022632B6
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02263268: ; jump table
	.short _022632B6 - _02263268 - 2 ; case 0
	.short _022632B6 - _02263268 - 2 ; case 1
	.short _02263272 - _02263268 - 2 ; case 2
	.short _0226329A - _02263268 - 2 ; case 3
	.short _022632B6 - _02263268 - 2 ; case 4
_02263272:
	add r0, r5, #0
	bl ov49_0225A0CC
	add r0, r7, #0
	bl ov45_0222B028
	cmp r0, #0
	beq _0226328E
	add r0, r6, #0
	mov r1, #6
	bl ov49_0225EF8C
	bl _02263B5E
_0226328E:
	add r0, r6, #0
	mov r1, #8
	bl ov49_0225EF8C
	bl _02263B5E
_0226329A:
	add r0, r5, #0
	bl ov49_0225A0DC
	cmp r0, #0
	bne _022632AA
	add r0, r5, #0
	bl ov49_0225A0BC
_022632AA:
	add r0, r4, #0
	add r1, r5, #0
	bl ov49_02264EC8
	bl _02263B5E
_022632B6:
	add r0, r6, #0
	mov r1, #0x20
	bl ov49_0225EF8C
	add r0, r5, #0
	bl ov49_0225A0CC
	bl _02263B5E
_022632C8:
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	bl ov49_02264E20
	cmp r0, #1
	bne _022632EA
	mov r0, #0x25
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #7
	add r3, r6, #0
	bl ov49_02264CFC
	bl _02263B5E
_022632EA:
	add r0, r6, #0
	mov r1, #7
	bl ov49_0225EF8C
	bl _02263B5E
_022632F6:
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
	mov r0, #0x25
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #9
	add r3, r6, #0
	bl ov49_02264CFC
	bl _02263B5E
_02263326:
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
	mov r0, #0x25
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #9
	add r3, r6, #0
	bl ov49_02264CFC
	b _02263B5E
_0226335E:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov49_0225A334
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0x2e
	bl ov49_02264C04
	add r1, r0, #0
	add r0, r5, #0
	bl ov49_0225A08C
	mov r0, #0x25
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0xb
	add r3, r6, #0
	bl ov49_02264CFC
	b _02263B5E
_0226338C:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov49_0225A334
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0x36
	bl ov49_02264C04
	add r1, r0, #0
	add r0, r5, #0
	bl ov49_0225A08C
	mov r0, #0x25
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0xb
	add r3, r6, #0
	bl ov49_02264CFC
	b _02263B5E
_022633BA:
	mov r0, #0
	str r0, [sp]
	add r0, r4, #0
	ldr r3, _022634A4 ; =0x00000203
	add r0, #0x14
	add r1, r5, #0
	mov r2, #3
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
	mov r1, #0xc
	bl ov49_0225EF8C
	b _02263B5E
_022633EA:
	add r0, r5, #0
	bl ov49_0225A1D4
	cmp r0, #0
	beq _022633FE
	cmp r0, #1
	beq _0226340A
	cmp r0, #2
	beq _02263428
	b _0226343A
_022633FE:
	add r0, r6, #0
	mov r1, #0xd
	bl ov49_0225EF8C
	mov r0, #1
	b _02263444
_0226340A:
	add r0, r6, #0
	mov r1, #0x13
	bl ov49_0225EF8C
	ldr r0, [r4, #0x10]
	mov r1, #4
	bl ov49_02258E60
	add r2, r0, #0
	ldr r1, [sp, #0xc]
	add r0, r7, #0
	bl ov45_0222AB94
	mov r0, #1
	b _02263444
_02263428:
	add r0, r7, #0
	bl ov45_0222AF80
	add r0, r6, #0
	mov r1, #0x21
	bl ov49_0225EF8C
	mov r0, #1
	b _02263444
_0226343A:
	add r0, r4, #0
	add r1, r5, #0
	bl ov49_02264F24
	mov r0, #0
_02263444:
	cmp r0, #1
	beq _0226344A
	b _02263B5E
_0226344A:
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
	b _02263B5E
_02263466:
	ldr r0, [sp, #0x18]
	bl ov45_0222AAC8
	str r0, [sp, #0x40]
	ldr r0, [sp, #0x14]
	bl ov45_0222AAC8
	ldr r1, [sp, #0x40]
	cmp r1, r0
	bne _022634D4
	mov r0, #1
	strb r0, [r4, #0xc]
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov49_0225A334
	mov r0, #0
	str r0, [sp]
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	mov r3, #1
	bl ov49_02264E90
	ldrb r1, [r4, #3]
	ldr r2, _022634A8 ; =0x000001FB
	b _022634AC
	nop
_022634A0: .word 0x000005E4
_022634A4: .word 0x00000203
_022634A8: .word 0x000001FB
_022634AC:
	add r0, r5, #0
	bl ov49_02264C04
	add r1, r0, #0
	add r0, r5, #0
	bl ov49_0225A08C
	mov r0, #0x25
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x12
	add r3, r6, #0
	bl ov49_02264CFC
	add r0, r7, #0
	mov r1, #4
	bl ov45_0222AED8
	b _02263B5E
_022634D4:
	mov r2, #0
	strb r2, [r4, #0xc]
	ldrb r1, [r4, #3]
	add r0, r5, #0
	bl ov49_0225A334
	mov r3, #1
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	str r3, [sp]
	bl ov49_02264E90
	mov r0, #0
	str r0, [sp]
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	mov r3, #2
	bl ov49_02264E90
	mov r2, #0x7f
	ldrb r1, [r4, #3]
	add r0, r5, #0
	lsl r2, r2, #2
	bl ov49_02264C04
	add r1, r0, #0
	add r0, r5, #0
	bl ov49_0225A08C
	mov r0, #0x25
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0xe
	add r3, r6, #0
	bl ov49_02264CFC
	b _02263B5E
_02263524:
	mov r0, #1
	str r0, [sp]
	add r0, r4, #0
	ldr r3, _02263858 ; =0x00000206
	add r0, #0x14
	add r1, r5, #0
	mov r2, #2
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
	mov r1, #0xf
	bl ov49_0225EF8C
	b _02263B5E
_02263554:
	add r0, r5, #0
	bl ov49_0225A1D4
	cmp r0, #0
	beq _02263564
	cmp r0, #1
	beq _02263594
	b _022635A0
_02263564:
	add r0, r7, #0
	mov r1, #3
	bl ov45_0222AED8
	add r0, r6, #0
	mov r1, #0x10
	bl ov49_0225EF8C
	ldr r0, [r4, #0x10]
	mov r1, #4
	bl ov49_02258E60
	add r6, r0, #0
	ldr r0, [sp, #0x14]
	bl ov45_0222AAC8
	add r3, r0, #0
	ldr r1, [sp, #0xc]
	add r0, r7, #0
	add r2, r6, #0
	bl ov45_0222ABD0
	mov r0, #1
	b _022635AA
_02263594:
	add r0, r6, #0
	mov r1, #0xa
	bl ov49_0225EF8C
	mov r0, #1
	b _022635AA
_022635A0:
	add r0, r4, #0
	add r1, r5, #0
	bl ov49_02264F24
	mov r0, #0
_022635AA:
	cmp r0, #1
	beq _022635B0
	b _02263B5E
_022635B0:
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
	b _02263B5E
_022635CC:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov49_0225A334
	mov r0, #0
	str r0, [sp]
	add r0, r4, #0
	add r1, r7, #0
	add r2, r5, #0
	mov r3, #1
	bl ov49_02264E90
	ldrb r1, [r4, #3]
	ldr r2, _0226385C ; =0x000001FE
	add r0, r5, #0
	bl ov49_02264C04
	add r1, r0, #0
	add r0, r5, #0
	bl ov49_0225A08C
	mov r0, #0x25
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x11
	add r3, r6, #0
	bl ov49_02264CFC
	ldr r0, [sp, #0x14]
	bl ov45_0222AAC8
	add r1, r0, #0
	add r0, r7, #0
	bl ov45_0222A72C
	b _02263B5E
_02263618:
	ldr r0, _02263860 ; =0x000005BF
	bl PlaySE
	add r0, r6, #0
	mov r1, #0x12
	bl ov49_0225EF8C
	b _02263B5E
_02263628:
	ldr r0, [sp, #0x20]
	cmp r0, #4
	bhi _02263686
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0226363A: ; jump table
	.short _02263686 - _0226363A - 2 ; case 0
	.short _02263686 - _0226363A - 2 ; case 1
	.short _02263644 - _0226363A - 2 ; case 2
	.short _0226366C - _0226363A - 2 ; case 3
	.short _02263686 - _0226363A - 2 ; case 4
_02263644:
	ldr r1, [sp, #0x14]
	add r0, r4, #0
	bl ov49_02264F78
	ldrb r0, [r4, #0xc]
	cmp r0, #1
	bne _0226365C
	add r0, r6, #0
	mov r1, #0x21
	bl ov49_0225EF8C
	b _02263664
_0226365C:
	add r0, r6, #0
	mov r1, #0xa
	bl ov49_0225EF8C
_02263664:
	add r0, r5, #0
	bl ov49_0225A0CC
	b _02263B5E
_0226366C:
	add r0, r5, #0
	bl ov49_0225A0DC
	cmp r0, #0
	bne _0226367C
	add r0, r5, #0
	bl ov49_0225A0BC
_0226367C:
	add r0, r4, #0
	add r1, r5, #0
	bl ov49_02264EC8
	b _02263B5E
_02263686:
	add r0, r6, #0
	mov r1, #0x20
	bl ov49_0225EF8C
	add r0, r5, #0
	bl ov49_0225A0CC
	b _02263B5E
_02263696:
	add r0, r7, #0
	mov r1, #5
	bl ov45_0222AED8
	add r0, r6, #0
	mov r1, #0x14
	bl ov49_0225EF8C
	b _02263B5E
_022636A8:
	ldr r0, _02263864 ; =0x00000207
	add r1, r5, #0
	str r0, [sp]
	mov r0, #0
	str r0, [sp, #4]
	add r0, r4, #0
	add r0, #0x14
	mov r2, #0x1e
	mov r3, #4
	bl ov49_02265044
	mov r0, #8
	str r0, [sp]
	mov r0, #3
	str r0, [sp, #4]
	mov r0, #0x17
	add r1, r4, #0
	mov r2, #0
	str r0, [sp, #8]
	add r0, r5, #0
	add r1, #0x14
	add r3, r2, #0
	bl ov49_0225A1A4
	add r0, r6, #0
	mov r1, #0x15
	bl ov49_0225EF8C
	add r0, r4, #0
	bl ov49_02264F10
	b _02263B5E
_022636E8:
	add r0, r5, #0
	bl ov49_0225A1D4
	mov r1, #1
	mvn r1, r1
	str r0, [sp, #0x44]
	cmp r0, r1
	beq _022636FE
	add r1, r1, #1
	cmp r0, r1
	bne _02263708
_022636FE:
	add r0, r4, #0
	add r1, r5, #0
	bl ov49_02264F24
	b _02263B5E
_02263708:
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	bl ov49_0225A1E4
	add r0, r4, #0
	add r0, #0x14
	add r1, r5, #0
	bl ov49_02265260
	ldr r0, [sp, #0x44]
	mov r1, #0x16
	strb r0, [r4]
	add r0, r6, #0
	bl ov49_0225EF8C
	b _02263B5E
_0226372A:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov49_0225A334
	ldrb r3, [r4]
	ldr r2, _02263868 ; =0x000001DD
	ldrb r1, [r4, #3]
	add r0, r5, #0
	add r2, r3, r2
	bl ov49_02264C04
	add r1, r0, #0
	add r0, r5, #0
	bl ov49_0225A08C
	mov r0, #0x25
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x17
	add r3, r6, #0
	bl ov49_02264CFC
	b _02263B5E
_0226375C:
	mov r0, #0
	str r0, [sp]
	ldrb r3, [r4]
	add r0, r4, #0
	add r0, #0x14
	lsl r3, r3, #2
	add r1, r5, #0
	mov r2, #4
	add r3, #0x73
	bl ov49_02264F9C
	add r1, r4, #0
	mov r2, #0
	add r0, r5, #0
	add r1, #0x14
	add r3, r2, #0
	bl ov49_0225A174
	add r0, r6, #0
	mov r1, #0x18
	bl ov49_0225EF8C
	b _02263B5E
_0226378A:
	add r0, r5, #0
	bl ov49_0225A1D4
	str r0, [sp, #0x48]
	cmp r0, #3
	bhi _022637D8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022637A2: ; jump table
	.short _022637AA - _022637A2 - 2 ; case 0
	.short _022637AA - _022637A2 - 2 ; case 1
	.short _022637AA - _022637A2 - 2 ; case 2
	.short _022637AA - _022637A2 - 2 ; case 3
_022637AA:
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
	ldrb r0, [r4]
	lsl r1, r0, #2
	ldr r0, [sp, #0x48]
	add r0, r0, r1
	strb r0, [r4, #1]
	add r0, r6, #0
	mov r1, #0x19
	bl ov49_0225EF8C
	b _02263B5E
_022637D8:
	add r0, r4, #0
	add r1, r5, #0
	bl ov49_02264F24
	b _02263B5E
_022637E2:
	ldrb r2, [r4, #1]
	add r0, r4, #0
	add r0, #0x38
	add r2, r2, #6
	lsl r2, r2, #0x10
	add r1, r7, #0
	lsr r2, r2, #0x10
	mov r3, #2
	bl ov49_02265274
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov49_0225A334
	ldrb r3, [r4, #1]
	ldr r2, _0226386C ; =0x00000165
	ldrb r1, [r4, #3]
	add r0, r5, #0
	add r2, r3, r2
	bl ov49_02264C04
	add r1, r0, #0
	add r0, r5, #0
	bl ov49_0225A08C
	mov r0, #0x25
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x1a
	add r3, r6, #0
	bl ov49_02264CFC
	b _02263B5E
_02263828:
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
	mov r0, #0x25
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x1b
	add r3, r6, #0
	bl ov49_02264CFC
	b _02263B5E
	.balign 4, 0
_02263858: .word 0x00000206
_0226385C: .word 0x000001FE
_02263860: .word 0x000005BF
_02263864: .word 0x00000207
_02263868: .word 0x000001DD
_0226386C: .word 0x00000165
_02263870:
	add r0, r4, #0
	add r0, #0x38
	bl ov49_022652D0
	cmp r0, #1
	bne _022638A2
	add r0, r4, #0
	add r0, #0x38
	bl ov49_022652E0
	cmp r0, #2
	bne _02263892
	add r0, r6, #0
	mov r1, #0x1c
	bl ov49_0225EF8C
	b _02263B5E
_02263892:
	add r0, r6, #0
	mov r1, #0x20
	bl ov49_0225EF8C
	add r0, r5, #0
	bl ov49_0225A0CC
	b _02263B5E
_022638A2:
	add r0, r5, #0
	bl ov49_0225A0DC
	cmp r0, #0
	beq _022638AE
	b _02263B5E
_022638AE:
	add r0, r5, #0
	bl ov49_0225A0BC
	b _02263B5E
_022638B6:
	ldr r0, [sp, #0x20]
	cmp r0, #4
	bhi _02263904
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022638C8: ; jump table
	.short _02263904 - _022638C8 - 2 ; case 0
	.short _02263904 - _022638C8 - 2 ; case 1
	.short _022638D2 - _022638C8 - 2 ; case 2
	.short _022638EA - _022638C8 - 2 ; case 3
	.short _02263904 - _022638C8 - 2 ; case 4
_022638D2:
	ldr r1, [sp, #0x14]
	add r0, r4, #0
	bl ov49_02264F78
	add r0, r6, #0
	mov r1, #0x1d
	bl ov49_0225EF8C
	add r0, r5, #0
	bl ov49_0225A0CC
	b _02263B5E
_022638EA:
	add r0, r5, #0
	bl ov49_0225A0DC
	cmp r0, #0
	bne _022638FA
	add r0, r5, #0
	bl ov49_0225A0BC
_022638FA:
	add r0, r4, #0
	add r1, r5, #0
	bl ov49_02264EC8
	b _02263B5E
_02263904:
	add r0, r6, #0
	mov r1, #0x20
	bl ov49_0225EF8C
	add r0, r5, #0
	bl ov49_0225A0CC
	b _02263B5E
_02263914:
	ldr r0, [sp, #0x1c]
	sub r0, r0, #6
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	str r0, [sp, #0x10]
	ldr r0, [sp, #0x1c]
	cmp r0, #0x7e
	bhs _02263928
	cmp r0, #6
	bhs _02263932
_02263928:
	add r0, r6, #0
	mov r1, #0x23
	bl ov49_0225EF8C
	b _02263B5E
_02263932:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov49_0225A334
	ldr r2, [sp, #0x10]
	ldrb r1, [r4, #3]
	add r0, r5, #0
	add r2, #0xec
	bl ov49_02264C04
	add r1, r0, #0
	add r0, r5, #0
	bl ov49_0225A08C
	ldrb r1, [r4, #1]
	ldr r0, [sp, #0x10]
	cmp r0, r1
	bne _0226396A
	mov r0, #0x25
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x1e
	add r3, r6, #0
	bl ov49_02264CFC
	b _02263B5E
_0226396A:
	mov r0, #0x25
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x1f
	add r3, r6, #0
	bl ov49_02264CFC
	b _02263B5E
_0226397C:
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
	mov r0, #0x25
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0xa
	add r3, r6, #0
	bl ov49_02264CFC
	b _02263B5E
_022639AA:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov49_0225A334
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0x32
	bl ov49_02264C04
	add r1, r0, #0
	add r0, r5, #0
	bl ov49_0225A08C
	mov r0, #0x25
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0xa
	add r3, r6, #0
	bl ov49_02264CFC
	b _02263B5E
_022639D8:
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
	str r0, [sp, #0x4c]
	ldr r1, [sp, #0x4c]
	add r0, r5, #0
	bl ov49_0225A08C
	mov r0, #0
	strh r0, [r4, #0xa]
	ldr r0, [sp, #0x4c]
	bl String_GetLength
	str r0, [sp, #0x50]
	add r0, r5, #0
	bl ov49_0225CB70
	ldr r1, [sp, #0x50]
	mul r0, r1
	lsr r1, r0, #1
	add r1, #0x3c
	cmp r1, #0x80
	bhs _02263A22
	mov r1, #0x80
	b _02263A28
_02263A22:
	cmp r1, #0xff
	bls _02263A28
	mov r1, #0xff
_02263A28:
	mov r0, #0x24
	lsl r1, r1, #0x18
	str r0, [sp]
	add r0, r4, #0
	lsr r1, r1, #0x18
	mov r2, #0x26
	add r3, r6, #0
	bl ov49_02264CFC
	add r0, r7, #0
	bl ov45_0222AFC4
	b _02263B5E
_02263A42:
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
	mov r0, #0x24
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x26
	add r3, r6, #0
	bl ov49_02264CFC
	b _02263B5E
_02263A74:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0x2a
	bl ov49_02264C04
	add r1, r0, #0
	add r0, r5, #0
	bl ov49_0225A08C
	mov r0, #0
	strh r0, [r4, #0xa]
	mov r0, #0x24
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x26
	add r3, r6, #0
	bl ov49_02264CFC
	b _02263B5E
_02263A9C:
	ldrb r1, [r4, #3]
	add r0, r5, #0
	mov r2, #0
	bl ov49_0225A334
	mov r2, #0x59
	ldrb r1, [r4, #3]
	add r0, r5, #0
	lsl r2, r2, #2
	bl ov49_02264C04
	add r1, r0, #0
	add r0, r5, #0
	bl ov49_0225A08C
	mov r0, #0
	strh r0, [r4, #0xa]
	mov r0, #0x24
	str r0, [sp]
	add r0, r4, #0
	mov r1, #0x80
	mov r2, #0x26
	add r3, r6, #0
	bl ov49_02264CFC
	b _02263B5E
_02263AD0:
	add r0, r4, #0
	add r1, r6, #0
	bl ov49_02264D14
	b _02263B5E
_02263ADA:
	add r0, r4, #0
	add r1, r6, #0
	add r2, r5, #0
	bl ov49_02264D30
	b _02263B5E
_02263AE6:
	add r0, r4, #0
	add r0, #0x44
	ldrh r0, [r0]
	cmp r0, #1
	bne _02263AFE
	add r1, r4, #0
	add r1, #0x46
	ldrh r1, [r1]
	ldr r2, [r4, #0x48]
	add r0, r7, #0
	bl ov45_0222A704
_02263AFE:
	add r0, r7, #0
	bl ov45_0222AE64
	add r0, r5, #0
	bl ov49_0225A0EC
	add r0, r7, #0
	mov r1, #1
	bl ov45_0222A5E8
	add r0, r5, #0
	bl ov49_02259FF0
	add r7, r0, #0
	bl ov49_02258DAC
	add r1, r0, #0
	add r0, r7, #0
	mov r2, #1
	bl ov49_02258EEC
	ldr r0, [r4, #0x10]
	cmp r0, #0
	beq _02263B4C
	mov r1, #1
	bl ov49_02259130
	ldr r0, [r4, #0x10]
	mov r1, #4
	bl ov49_02258E60
	add r1, r0, #0
	ldr r0, [sp, #0x24]
	mov r2, #1
	bl ov49_0225EFF0
	add r0, r5, #0
	bl ov49_0225A4D0
_02263B4C:
	add r0, r4, #0
	bl ov49_02264CF8
	add r0, r6, #0
	bl ov49_0225EF68
	add sp, #0x54
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02263B5E:
	add r0, r4, #0
	bl ov49_02264F60
	add r4, #0x38
	add r0, r4, #0
	add r1, r7, #0
	bl ov49_0226529C
	mov r0, #0
	add sp, #0x54
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov49_02262FB4

