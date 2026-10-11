	.include "asm/macros.inc"
	.include "overlay_12_battle_controller.inc"
	.include "global.inc"
	.public ov12_02262FFC
	.extern ov12_02262240

	.text

	.text
	thumb_func_start ov12_02262FFC
ov12_02262FFC: ; 0x02262FFC
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x40
	str r0, [sp, #4]
	str r1, [sp, #8]
	add r0, r1, #0
	add r1, r3, #0
	add r4, r2, #0
	str r3, [sp, #0xc]
	bl BattleBuffer_Clear
	ldr r0, [sp, #4]
	bl BattleSystem_GetBattleType
	mov r2, #0x10
	add r1, sp, #0x1c
	strb r2, [r1]
	strh r4, [r1, #2]
	mov r1, #2
	add r2, r0, #0
	and r2, r1
	beq _02263036
	mov r1, #8
	tst r0, r1
	bne _02263036
	cmp r2, #0
	beq _0226303E
	ldr r0, [sp, #0xc]
	cmp r0, #2
	blt _0226303E
_02263036:
	mov r1, #1
	add r0, sp, #0x1c
	strb r1, [r0, #1]
	b _02263044
_0226303E:
	mov r1, #0
	add r0, sp, #0x1c
	strb r1, [r0, #1]
_02263044:
	ldr r2, [sp, #8]
	mov r0, #0
	str r0, [sp, #0x18]
	ldr r1, _02263108 ; =0x00002D54
	add r0, r2, #0
	add r7, r0, r1
	add r1, #0x6a
	add r5, r0, r1
	mov r0, #3
	add r4, sp, #0x20
	str r0, [sp, #0x14]
	str r0, [sp, #0x10]
	mov r0, #4
	add r3, sp, #0x1c
	add r4, #1
	mov ip, r0
_02263064:
	ldr r0, _0226310C ; =0x00002D8C
	ldr r0, [r2, r0]
	cmp r0, #0
	beq _022630D2
	strh r0, [r3, #8]
	ldr r0, _02263110 ; =0x00002D90
	ldr r0, [r2, r0]
	strh r0, [r3, #0xa]
	ldrb r1, [r4]
	mov r0, #4
	orr r0, r1
	strb r0, [r4]
	mov r0, #0xb5
	lsl r0, r0, #6
	ldrh r0, [r2, r0]
	cmp r0, #0x1d
	beq _0226308A
	cmp r0, #0x20
	bne _0226309E
_0226308A:
	ldr r0, [r7]
	lsr r0, r0, #0x1f
	bne _0226309E
	ldrb r0, [r4]
	ldr r1, [sp, #0x10]
	bic r0, r1
	mov r1, #2
	orr r0, r1
	strb r0, [r4]
	b _022630B2
_0226309E:
	ldrb r6, [r4]
	ldr r0, [sp, #0x14]
	bic r6, r0
	ldrb r0, [r5]
	lsl r0, r0, #0x1c
	lsr r1, r0, #0x1c
	mov r0, #3
	and r0, r1
	orr r0, r6
	strb r0, [r4]
_022630B2:
	ldr r1, [sp, #8]
	ldr r0, [sp, #0x18]
	add r1, r1, r0
	ldr r0, _02263114 ; =0x0000219C
	ldrb r0, [r1, r0]
	strb r0, [r3, #4]
	ldr r0, _02263118 ; =0x00002DAC
	ldr r0, [r2, r0]
	cmp r0, #0
	beq _022630CC
	mov r0, #3
	strb r0, [r3, #6]
	b _022630DE
_022630CC:
	mov r0, #1
	strb r0, [r3, #6]
	b _022630DE
_022630D2:
	ldrb r1, [r4]
	mov r0, ip
	bic r1, r0
	strb r1, [r4]
	mov r0, #2
	strb r0, [r3, #6]
_022630DE:
	ldr r0, [sp, #0x18]
	add r2, #0xc0
	add r0, r0, #1
	add r3, #8
	add r4, #8
	add r7, #0xc0
	add r5, #0xc0
	str r0, [sp, #0x18]
	cmp r0, #4
	blt _02263064
	mov r0, #0x24
	str r0, [sp]
	ldr r0, [sp, #4]
	ldr r2, [sp, #0xc]
	mov r1, #1
	add r3, sp, #0x1c
	bl ov12_02262240
	add sp, #0x40
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02263108: .word 0x00002D54
_0226310C: .word 0x00002D8C
_02263110: .word 0x00002D90
_02263114: .word 0x0000219C
_02263118: .word 0x00002DAC
	thumb_func_end ov12_02262FFC

