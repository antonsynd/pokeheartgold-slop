	.include "asm/macros.inc"
	.include "overlay_49_02268D94.inc"
	.include "global.inc"

    .text

	thumb_func_start ov49_02268D94
ov49_02268D94: ; 0x02268D94
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #9]
	cmp r0, #0
	bne _02268DA8
	ldr r0, _02268DAC ; =0x000005B5
	bl PlaySE
	mov r0, #1
	strb r0, [r4, #9]
_02268DA8:
	pop {r4, pc}
	nop
_02268DAC: .word 0x000005B5
	thumb_func_end ov49_02268D94

	thumb_func_start ov49_02268DB0
ov49_02268DB0: ; 0x02268DB0
	push {r4, lr}
	add r4, r0, #0
	ldrb r0, [r4, #9]
	cmp r0, #0
	beq _02268DC6
	ldr r0, _02268DC8 ; =0x000005B5
	mov r1, #0
	bl StopSE
	mov r0, #0
	strb r0, [r4, #9]
_02268DC6:
	pop {r4, pc}
	.balign 4, 0
_02268DC8: .word 0x000005B5
	thumb_func_end ov49_02268DB0

	thumb_func_start ov49_02268DCC
ov49_02268DCC: ; 0x02268DCC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x10
	add r4, r1, #0
	add r5, r0, #0
	bl ov49_0225EF84
	add r6, r0, #0
	add r0, r4, #0
	bl ov49_02259FE8
	str r0, [sp]
	add r0, r4, #0
	bl ov49_02259FF0
	str r0, [sp, #4]
	bl ov49_02258DB0
	add r7, r0, #0
	ldr r0, [sp, #4]
	bl ov49_02258DAC
	str r0, [sp, #8]
	add r0, r5, #0
	bl ov49_0225EF88
	cmp r0, #5
	bls _02268E04
	b _02268F9E
_02268E04:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02268E10: ; jump table
	.short _02268E1C - _02268E10 - 2 ; case 0
	.short _02268EF2 - _02268E10 - 2 ; case 1
	.short _02268F02 - _02268E10 - 2 ; case 2
	.short _02268F34 - _02268E10 - 2 ; case 3
	.short _02268F54 - _02268E10 - 2 ; case 4
	.short _02268F8A - _02268E10 - 2 ; case 5
_02268E1C:
	add r0, r5, #0
	mov r1, #4
	bl ov49_0225EF40
	add r6, r0, #0
	ldr r0, _02268FA8 ; =0x000005DC
	bl PlaySE
	ldr r0, [sp, #8]
	mov r1, #6
	bl ov49_02258E60
	bl ov42_022282A4
	str r0, [sp, #0xc]
	ldr r0, [sp, #4]
	add r1, r7, #0
	mov r2, #0
	bl ov49_02258EEC
	add r0, r7, #0
	mov r1, #0
	bl ov49_02259130
	ldr r1, [sp, #0xc]
	add r0, r7, #0
	bl ov49_02259160
	ldr r0, [sp]
	bl ov45_0222A330
	cmp r0, #0
	beq _02268E7E
	add r0, r4, #0
	mov r1, #1
	mov r2, #3
	bl ov49_0225A30C
	add r1, r0, #0
	mov r0, #4
	str r0, [r6]
	add r0, r4, #0
	bl ov49_0225A08C
	add r0, r5, #0
	mov r1, #5
	bl ov49_0225EF8C
	b _02268FA2
_02268E7E:
	ldr r0, [sp]
	bl ov45_0222A3A0
	cmp r0, #1
	bne _02268EA8
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x58
	bl ov49_0225A30C
	add r1, r0, #0
	mov r0, #4
	str r0, [r6]
	add r0, r4, #0
	bl ov49_0225A08C
	add r0, r5, #0
	mov r1, #5
	bl ov49_0225EF8C
	b _02268FA2
_02268EA8:
	ldr r0, [sp]
	bl ov45_0222A2E0
	cmp r0, #1
	bne _02268ED2
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x57
	bl ov49_0225A30C
	add r1, r0, #0
	mov r0, #4
	str r0, [r6]
	add r0, r4, #0
	bl ov49_0225A08C
	add r0, r5, #0
	mov r1, #5
	bl ov49_0225EF8C
	b _02268FA2
_02268ED2:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x51
	bl ov49_0225A30C
	add r1, r0, #0
	mov r0, #1
	str r0, [r6]
	add r0, r4, #0
	bl ov49_0225A08C
	add r0, r5, #0
	mov r1, #5
	bl ov49_0225EF8C
	b _02268FA2
_02268EF2:
	add r0, r4, #0
	bl ov49_0225A264
	add r0, r5, #0
	mov r1, #2
	bl ov49_0225EF8C
	b _02268FA2
_02268F02:
	add r0, r4, #0
	bl ov49_0225A2C4
	cmp r0, #0
	beq _02268F14
	cmp r0, #1
	beq _02268F24
	cmp r0, #2
	b _02268FA2
_02268F14:
	add r0, r5, #0
	mov r1, #3
	bl ov49_0225EF8C
	add r0, r4, #0
	bl ov49_0225A2F8
	b _02268FA2
_02268F24:
	add r0, r5, #0
	mov r1, #4
	bl ov49_0225EF8C
	add r0, r4, #0
	bl ov49_0225A2F8
	b _02268FA2
_02268F34:
	add r0, r4, #0
	mov r1, #1
	mov r2, #0x55
	bl ov49_0225A30C
	add r1, r0, #0
	mov r0, #4
	str r0, [r6]
	add r0, r4, #0
	bl ov49_0225A08C
	add r0, r5, #0
	mov r1, #5
	bl ov49_0225EF8C
	b _02268FA2
_02268F54:
	add r0, r4, #0
	bl ov49_0225A0EC
	add r0, r4, #0
	bl ov49_0225A2F8
	ldr r0, [sp, #4]
	ldr r1, [sp, #8]
	mov r2, #1
	bl ov49_02258EEC
	add r0, r5, #0
	bl ov49_0225EF68
	add r0, r7, #0
	mov r1, #1
	bl ov49_02259130
	ldr r0, [sp, #4]
	add r1, r7, #0
	mov r2, #0
	mov r3, #1
	bl ov49_02258EAC
	add sp, #0x10
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02268F8A:
	add r0, r4, #0
	bl ov49_0225A0AC
	cmp r0, #1
	bne _02268FA2
	ldr r1, [r6]
	add r0, r5, #0
	bl ov49_0225EF8C
	b _02268FA2
_02268F9E:
	bl GF_AssertFail
_02268FA2:
	mov r0, #0
	add sp, #0x10
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02268FA8: .word 0x000005DC
	thumb_func_end ov49_02268DCC

	thumb_func_start ov49_02268FAC
ov49_02268FAC: ; 0x02268FAC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r0, #0
	add r0, r1, #0
	mov r1, #0xc4
	bl Heap_Alloc
	add r4, r0, #0
	mov r1, #0
	mov r2, #0xc4
	bl memset
	str r5, [r4]
	add r0, r5, #0
	bl ov49_02259FE8
	str r0, [r4, #4]
	add r0, r5, #0
	bl ov49_02259FF8
	str r0, [r4, #8]
	add r0, r5, #0
	bl ov49_0225A000
	str r0, [r4, #0xc]
	bl ov49_022589A8
	add r1, r0, #6
	add r0, r4, #0
	add r0, #0xbc
	str r1, [r0]
	add r0, r4, #0
	add r0, #0xbc
	ldr r1, [r0]
	mov r0, #7
	mvn r0, r0
	sub r1, r0, r1
	add r0, r4, #0
	add r0, #0xc0
	str r1, [r0]
	add r0, r4, #0
	add r0, #0xbc
	ldr r0, [r0]
	ldr r6, _0226908C ; =ov49_0226A8C8
	lsl r1, r0, #0x10
	add r0, r4, #0
	add r0, #0xbc
	str r1, [r0]
	add r0, r4, #0
	add r0, #0xc0
	ldr r0, [r0]
	mov r7, #0
	lsl r1, r0, #0x10
	add r0, r4, #0
	add r0, #0xc0
	str r1, [r0]
	add r5, r4, #0
_0226901E:
	mov r0, #0
	str r0, [sp]
	ldrb r1, [r6]
	add r2, sp, #4
	ldr r0, [r4, #0xc]
	add r2, #2
	add r3, sp, #4
	bl ov49_022589D8
	add r0, sp, #4
	ldrh r0, [r0, #2]
	add r7, r7, #1
	add r6, r6, #1
	lsl r1, r0, #4
	add r0, r5, #0
	add r0, #0xaa
	strh r1, [r0]
	add r0, sp, #4
	ldrh r0, [r0]
	lsl r1, r0, #4
	add r0, r5, #0
	add r0, #0xac
	add r5, r5, #4
	strh r1, [r0]
	cmp r7, #3
	blt _0226901E
	mov r5, #0
_02269054:
	add r2, r4, #0
	add r2, #0xbc
	ldr r0, [r4, #8]
	ldr r2, [r2]
	add r1, r5, #0
	bl ov49_0225E3B8
	ldr r0, [r4, #4]
	add r1, r5, #0
	bl ov45_0222AD80
	cmp r0, #1
	bne _0226907E
	add r0, r4, #0
	add r1, r5, #0
	bl ov49_02269178
	add r0, r4, #0
	add r1, r5, #0
	bl ov49_022695C4
_0226907E:
	add r5, r5, #1
	cmp r5, #9
	blt _02269054
	add r0, r4, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0226908C: .word ov49_0226A8C8
	thumb_func_end ov49_02268FAC

	thumb_func_start ov49_02269090
ov49_02269090: ; 0x02269090
	ldr r3, _02269094 ; =Heap_Free
	bx r3
	.balign 4, 0
_02269094: .word Heap_Free
	thumb_func_end ov49_02269090

	thumb_func_start ov49_02269098
ov49_02269098: ; 0x02269098
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldr r0, [r5, #4]
	bl ov45_0222A53C
	add r1, r0, #0
	ldr r0, [r5, #4]
	bl ov45_0222ADA8
	mov r1, #0
	mvn r1, r1
	str r0, [sp, #8]
	cmp r0, r1
	bne _022690BA
	mov r6, #0
	b _022690C4
_022690BA:
	add r1, sp, #8
	add r2, sp, #4
	bl ov45_0222AE08
	mov r6, #1
_022690C4:
	mov r4, #0
_022690C6:
	ldr r0, [r5, #4]
	add r1, r4, #0
	bl ov45_0222AD80
	cmp r0, #1
	ldr r0, [r5, #8]
	bne _0226910E
	add r1, r4, #0
	mov r2, #1
	bl ov49_0225E4CC
	add r0, r5, #0
	add r1, r4, #0
	bl ov49_02269178
	add r0, r5, #0
	add r1, r4, #0
	bl ov49_022695C4
	cmp r6, #0
	beq _022690FC
	ldr r0, [sp, #8]
	cmp r0, r4
	bne _022690FA
	mov r7, #1
	b _022690FC
_022690FA:
	mov r7, #0
_022690FC:
	ldr r0, [sp, #4]
	add r1, r4, #0
	str r0, [sp]
	add r0, r5, #0
	add r2, r6, #0
	add r3, r7, #0
	bl ov49_02269240
	b _02269116
_0226910E:
	add r1, r4, #0
	mov r2, #0
	bl ov49_0225E4CC
_02269116:
	add r4, r4, #1
	cmp r4, #9
	blt _022690C6
	add r7, r5, #0
	mov r6, #0
	add r4, r5, #0
	add r7, #0x2c
_02269124:
	ldr r0, [r5, #8]
	add r1, r6, #0
	bl ov49_0225E524
	strb r0, [r4, #0x10]
	ldr r1, [r5, #8]
	add r0, r7, #0
	add r2, r6, #0
	bl ov49_02269430
	strb r0, [r4, #0x11]
	ldr r0, [r5, #8]
	add r1, r6, #0
	bl ov49_0225E54C
	strb r0, [r4, #0x12]
	add r6, r6, #1
	add r4, r4, #3
	add r7, #0xe
	cmp r6, #9
	blt _02269124
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov49_02269098

	thumb_func_start ov49_02269154
ov49_02269154: ; 0x02269154
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r6, r0, #0
	add r4, r2, #0
	cmp r5, #9
	blo _02269164
	bl GF_AssertFail
_02269164:
	cmp r4, #3
	blt _0226916C
	bl GF_AssertFail
_0226916C:
	lsl r0, r5, #1
	add r0, r5, r0
	add r0, r6, r0
	add r0, r0, r4
	ldrb r0, [r0, #0x10]
	pop {r4, r5, r6, pc}
	thumb_func_end ov49_02269154

	thumb_func_start ov49_02269178
ov49_02269178: ; 0x02269178
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r0, [r5, #4]
	str r1, [sp]
	bl ov45_0222AD90
	add r4, r0, #0
	ldr r0, [r5, #4]
	bl ov45_0222ADA0
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0xc0
	mov r1, #2
	ldr r0, [r0]
	lsl r1, r1, #0xc
	bl FX_Div
	add r7, r0, #0
	cmp r6, #0
	ble _022691B4
	lsl r0, r6, #0xc
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _022691C2
_022691B4:
	lsl r0, r6, #0xc
	bl _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_022691C2:
	add r6, r0, #0
	cmp r4, #0
	ble _022691DA
	lsl r0, r4, #0xc
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _022691E8
_022691DA:
	lsl r0, r4, #0xc
	bl _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_022691E8:
	bl _ffix
	asr r1, r0, #0x1f
	asr r3, r7, #0x1f
	add r2, r7, #0
	bl _ll_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r4, r2, #0xc
	orr r4, r0
	add r0, r6, #0
	bl _ffix
	add r1, r0, #0
	add r0, r4, #0
	bl FX_Div
	asr r2, r0, #0x1f
	lsl r3, r2, #0xd
	lsr r1, r0, #0x13
	lsl r2, r0, #0xd
	mov r0, #2
	orr r3, r1
	mov r1, #0
	lsl r0, r0, #0xa
	add r2, r2, r0
	adc r3, r1
	lsl r0, r3, #0x14
	lsr r3, r2, #0xc
	orr r3, r0
	add r0, r5, #0
	add r0, #0xbc
	ldr r2, [r0]
	ldr r0, [r5, #8]
	ldr r1, [sp]
	add r2, r3, r2
	bl ov49_0225E3B8
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov49_02269178

	thumb_func_start ov49_02269240
ov49_02269240: ; 0x02269240
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r7, r0, #0
	ldr r0, [sp, #0x30]
	str r1, [sp]
	str r0, [sp, #0x30]
	ldr r0, [r7, #4]
	str r2, [sp, #4]
	add r5, r3, #0
	bl ov45_0222AD3C
	add r6, r0, #0
	ldr r0, [r7, #4]
	bl ov45_0222AD2C
	ldr r0, [sp]
	mov r4, #0
	lsl r1, r0, #1
	add r0, r0, r1
	str r0, [sp, #0x10]
	ldr r0, [sp]
	mov r1, #3
	bl _u32_div_f
	str r1, [sp, #8]
	mov r0, #0xc
	ldr r1, _02269398 ; =ov49_0226A8DC
	mul r0, r6
	add r0, r1, r0
	str r0, [sp, #0xc]
	add r0, r7, #0
	str r0, [sp, #0x14]
	add r0, #0x2c
	str r0, [sp, #0x14]
	ldr r0, [sp]
	mov r1, #0xe
	mul r1, r0
	str r1, [sp, #0x18]
_0226928C:
	ldr r1, [sp, #0x10]
	ldr r0, [r7, #4]
	add r1, r4, r1
	bl ov45_0222ADE8
	mov r6, #0
	cmp r5, #1
	bne _022692A4
	ldr r1, [sp, #0x30]
	cmp r4, r1
	bne _022692A4
	mov r6, #1
_022692A4:
	cmp r0, #1
	bne _0226938A
	cmp r4, #0
	beq _022692B6
	cmp r4, #1
	beq _0226931A
	cmp r4, #2
	beq _02269350
	b _0226938A
_022692B6:
	ldr r0, [r7, #8]
	ldr r1, [sp]
	bl ov49_0225E47C
	cmp r0, #1
	bne _0226938A
	ldr r0, [sp, #8]
	cmp r0, #2
	bne _022692EC
	ldr r3, [sp, #0xc]
	ldr r0, [sp, #4]
	ldrh r3, [r3, #2]
	add r1, r5, #0
	add r2, r6, #0
	bl ov49_022693D4
	ldr r0, [sp, #0xc]
	ldrh r3, [r0, #8]
	ldr r0, _0226939C ; =0x0000FFFE
	cmp r3, r0
	beq _0226930E
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r6, #0
	bl ov49_022693A4
	b _0226930E
_022692EC:
	ldr r3, [sp, #0xc]
	ldr r0, [sp, #4]
	ldrh r3, [r3]
	add r1, r5, #0
	add r2, r6, #0
	bl ov49_022693D4
	ldr r0, [sp, #0xc]
	ldrh r3, [r0, #4]
	ldr r0, _0226939C ; =0x0000FFFE
	cmp r3, r0
	beq _0226930E
	ldr r0, [sp, #4]
	add r1, r5, #0
	add r2, r6, #0
	bl ov49_022693A4
_0226930E:
	ldr r1, [sp, #0x10]
	ldr r0, [r7, #4]
	add r1, r4, r1
	bl ov45_0222ADF8
	b _0226938A
_0226931A:
	ldr r0, [sp, #8]
	cmp r0, #2
	bne _02269324
	mov r1, #1
	b _02269326
_02269324:
	mov r1, #0
_02269326:
	ldr r2, [sp, #0x14]
	ldr r0, [sp, #0x18]
	ldr r3, [sp]
	add r0, r2, r0
	ldr r2, [r7, #8]
	bl ov49_022693F8
	cmp r0, #1
	bne _0226938A
	ldr r1, [sp, #0x10]
	ldr r0, [r7, #4]
	add r1, r4, r1
	bl ov45_0222ADF8
	ldr r0, [sp, #4]
	ldr r3, _022693A0 ; =0x000005C6
	add r1, r5, #0
	add r2, r6, #0
	bl ov49_022693A4
	b _0226938A
_02269350:
	ldr r0, [r7, #8]
	ldr r1, [sp]
	bl ov49_0225E4A4
	cmp r0, #1
	bne _0226938A
	ldr r1, [sp, #0x10]
	ldr r0, [r7, #4]
	add r1, r4, r1
	bl ov45_0222ADF8
	ldr r0, [sp, #8]
	cmp r0, #2
	bne _0226937C
	ldr r3, [sp, #0xc]
	ldr r0, [sp, #4]
	ldrh r3, [r3, #0xa]
	add r1, r5, #0
	add r2, r6, #0
	bl ov49_022693A4
	b _0226938A
_0226937C:
	ldr r3, [sp, #0xc]
	ldr r0, [sp, #4]
	ldrh r3, [r3, #6]
	add r1, r5, #0
	add r2, r6, #0
	bl ov49_022693A4
_0226938A:
	add r4, r4, #1
	cmp r4, #3
	bge _02269392
	b _0226928C
_02269392:
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	nop
_02269398: .word ov49_0226A8DC
_0226939C: .word 0x0000FFFE
_022693A0: .word 0x000005C6
	thumb_func_end ov49_02269240

	thumb_func_start ov49_022693A4
ov49_022693A4: ; 0x022693A4
	push {r3, lr}
	cmp r0, #0
	beq _022693C8
	cmp r1, #0
	beq _022693D0
	cmp r2, #0
	beq _022693BE
	lsl r0, r3, #0x10
	lsr r0, r0, #0x10
	mov r1, #5
	bl sub_0200606C
	pop {r3, pc}
_022693BE:
	lsl r0, r3, #0x10
	lsr r0, r0, #0x10
	bl PlaySE
	pop {r3, pc}
_022693C8:
	lsl r0, r3, #0x10
	lsr r0, r0, #0x10
	bl PlaySE
_022693D0:
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov49_022693A4

	thumb_func_start ov49_022693D4
ov49_022693D4: ; 0x022693D4
	push {r3, lr}
	cmp r0, #0
	beq _022693EA
	cmp r1, #0
	beq _022693F4
	lsl r0, r3, #0x10
	lsr r0, r0, #0x10
	mov r1, #0
	bl PlayCry
	pop {r3, pc}
_022693EA:
	lsl r0, r3, #0x10
	lsr r0, r0, #0x10
	mov r1, #0
	bl PlayCry
_022693F4:
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov49_022693D4

	thumb_func_start ov49_022693F8
ov49_022693F8: ; 0x022693F8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r6, r2, #0
	add r7, r3, #0
	cmp r4, #2
	blo _0226940A
	bl GF_AssertFail
_0226940A:
	ldrh r0, [r5]
	cmp r0, #1
	bne _02269414
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
_02269414:
	ldr r3, _0226942C ; =ov49_0226A8D4
	strh r4, [r5, #2]
	lsl r4, r4, #2
	mov r0, #1
	strh r0, [r5]
	ldr r3, [r3, r4]
	add r0, r5, #0
	add r1, r6, #0
	add r2, r7, #0
	blx r3
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0226942C: .word ov49_0226A8D4
	thumb_func_end ov49_022693F8

	thumb_func_start ov49_02269430
ov49_02269430: ; 0x02269430
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldrh r3, [r4]
	cmp r3, #0
	beq _0226946A
	ldrh r3, [r4, #2]
	lsl r5, r3, #2
	ldr r3, _02269470 ; =ov49_0226A8CC
	ldr r3, [r3, r5]
	blx r3
	cmp r0, #1
	bne _02269466
	mov r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	strb r0, [r4, #4]
	strb r0, [r4, #5]
	strb r0, [r4, #6]
	strb r0, [r4, #7]
	strb r0, [r4, #8]
	strb r0, [r4, #9]
	strb r0, [r4, #0xa]
	strb r0, [r4, #0xb]
	strb r0, [r4, #0xc]
	strb r0, [r4, #0xd]
_02269466:
	mov r0, #1
	pop {r3, r4, r5, pc}
_0226946A:
	mov r0, #0
	pop {r3, r4, r5, pc}
	nop
_02269470: .word ov49_0226A8CC
	thumb_func_end ov49_02269430

	thumb_func_start ov49_02269474
ov49_02269474: ; 0x02269474
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	strh r0, [r4, #4]
	mov r0, #8
	strh r0, [r4, #6]
	mov r0, #5
	bl GF_DegreeToSinCosIdx
	strh r0, [r4, #8]
	mov r0, #2
	strh r0, [r4, #0xa]
	mov r0, #4
	strh r0, [r4, #0xc]
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov49_02269474

	thumb_func_start ov49_02269494
ov49_02269494: ; 0x02269494
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	strh r0, [r4, #4]
	mov r0, #0x10
	strh r0, [r4, #6]
	mov r0, #0xa
	bl GF_DegreeToSinCosIdx
	strh r0, [r4, #8]
	mov r0, #4
	strh r0, [r4, #0xa]
	mov r0, #2
	strh r0, [r4, #0xc]
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov49_02269494

	thumb_func_start ov49_022694B4
ov49_022694B4: ; 0x022694B4
	push {r3, r4, r5, r6, lr}
	sub sp, #0x1c
	add r5, r0, #0
	add r0, sp, #0x10
	mov r4, #0
	str r4, [r0]
	str r4, [r0, #4]
	str r4, [r0, #8]
	mov r0, #4
	ldrsh r0, [r5, r0]
	str r1, [sp]
	str r2, [sp, #4]
	add r1, r0, #1
	mov r0, #6
	ldrsh r0, [r5, r0]
	cmp r1, r0
	bge _022694DA
	strh r1, [r5, #4]
	b _022694EC
_022694DA:
	strh r4, [r5, #4]
	mov r0, #0xc
	ldrsh r0, [r5, r0]
	sub r0, r0, #1
	cmp r0, #0
	ble _022694EA
	strh r0, [r5, #0xc]
	b _022694EC
_022694EA:
	mov r4, #1
_022694EC:
	mov r0, #4
	ldrsh r1, [r5, r0]
	ldr r0, _022695BC ; =0x0000FFFF
	mul r0, r1
	mov r1, #6
	ldrsh r1, [r5, r1]
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r6, r0, #0x10
	ldrh r0, [r5, #8]
	cmp r0, #0
	beq _02269518
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _02269526
_02269518:
	lsl r0, r0, #0xc
	bl _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_02269526:
	bl _ffix
	add r2, r0, #0
	asr r0, r6, #4
	lsl r1, r0, #2
	ldr r0, _022695C0 ; =FX_SinCosTable_
	asr r3, r2, #0x1f
	ldrsh r0, [r0, r1]
	str r0, [sp, #8]
	asr r0, r0, #0x1f
	str r0, [sp, #0xc]
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	bl _ll_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	lsl r0, r1, #4
	lsr r6, r0, #0x10
	mov r0, #0xa
	ldrsh r0, [r5, r0]
	cmp r0, #0
	ble _02269572
	lsl r0, r0, #0xc
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _02269580
_02269572:
	lsl r0, r0, #0xc
	bl _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_02269580:
	bl _ffix
	add r2, r0, #0
	ldr r0, [sp, #8]
	ldr r1, [sp, #0xc]
	asr r3, r2, #0x1f
	bl _ll_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [sp, #0x14]
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add r2, r6, #0
	bl ov49_0225E4F8
	ldr r0, [sp]
	ldr r1, [sp, #4]
	add r2, sp, #0x10
	bl ov49_0225E3F4
	add r0, r4, #0
	add sp, #0x1c
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_022695BC: .word 0x0000FFFF
_022695C0: .word FX_SinCosTable_
	thumb_func_end ov49_022694B4

	thumb_func_start ov49_022695C4
ov49_022695C4: ; 0x022695C4
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r0, #0
	str r1, [sp]
	add r0, r1, #0
	lsl r1, r0, #1
	ldr r0, [sp]
	mov r6, #0
	add r0, r0, r1
	str r0, [sp, #4]
_022695D8:
	ldr r1, [sp, #4]
	ldr r0, [r7, #4]
	add r1, r6, r1
	bl ov45_0222AE34
	add r4, r0, #0
	ldr r0, [r7, #8]
	ldr r1, [sp]
	add r2, r6, #0
	add r3, sp, #8
	bl ov49_0225E420
	cmp r4, #3
	bge _0226961A
	lsl r0, r4, #2
	add r5, r7, r0
_022695F8:
	mov r0, #0xaa
	ldrsh r0, [r5, r0]
	add r0, #0x10
	lsl r1, r0, #0xc
	ldr r0, [sp, #8]
	cmp r1, r0
	ble _02269612
	ldr r1, [sp, #4]
	ldr r0, [r7, #4]
	add r1, r6, r1
	add r2, r4, #0
	bl ov45_0222AE24
_02269612:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #3
	blt _022695F8
_0226961A:
	add r6, r6, #1
	cmp r6, #3
	blt _022695D8
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov49_022695C4


    .rodata

ov49_0226A8C8: ; 0x0226A8C8
	.byte 0x3F, 0x3E, 0x3D, 0x00

ov49_0226A8CC: ; 0x0226A8CC
	.word ov49_022694B4
	.word ov49_022694B4

ov49_0226A8D4: ; 0x0226A8D4
	.word ov49_02269474
	.word ov49_02269494

ov49_0226A8DC: ; 0x0226A8DC
	.byte 0xFF, 0x00, 0x06, 0x00
	.byte 0xFE, 0xFF, 0xCB, 0x05, 0xCE, 0x05, 0xC5, 0x05, 0x89, 0x01, 0x82, 0x00, 0xCB, 0x05, 0xCD, 0x05
	.byte 0xCF, 0x05, 0xCB, 0x05, 0x19, 0x00, 0xCE, 0x01, 0xFE, 0xFF, 0xCB, 0x05, 0xFE, 0xFF, 0xD0, 0x05
	.byte 0x01, 0x00, 0xC7, 0x01, 0xD1, 0x05, 0xCC, 0x05, 0xC5, 0x05, 0xCB, 0x05, 0x97, 0x00, 0x97, 0x00
	.byte 0xFE, 0xFF, 0xCB, 0x05, 0xD2, 0x05, 0xCB, 0x05
	; 0x0226A918
