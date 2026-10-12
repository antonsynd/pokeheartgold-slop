	.include "asm/macros.inc"
	.include "overlay_93_thumb_2.inc"
	.include "global.inc"
	.public ov93_02262130

	.text

	.text
	thumb_func_start ov93_02262130
ov93_02262130: ; 0x02262130
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	ldr r0, _02262224 ; =0x0000019F
	mov r7, #5
	ldrb r0, [r6, r0]
	cmp r0, #6
	bls _02262142
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02262142:
	mov r4, #0
	str r4, [sp]
_02262146:
	ldr r0, [sp]
	add r5, r6, r7
	mov ip, r0
	mov r0, #0x66
	lsl r0, r0, #2
	ldrsb r0, [r5, r0]
	cmp r0, #0
	ble _0226216A
	mov r0, #0x66
	lsl r0, r0, #2
	ldrsb r0, [r5, r0]
	sub r1, r0, #1
	mov r0, #0x66
	lsl r0, r0, #2
	strb r1, [r5, r0]
	mov r0, #0
	str r0, [sp]
	b _02262216
_0226216A:
	ldr r0, _02262228 ; =0x00000192
	ldrb r0, [r5, r0]
	cmp r0, #1
	bls _02262186
	mov r0, #6
	ldr r1, _0226222C ; =0x00000186
	lsl r0, r0, #6
	ldrb r0, [r5, r0]
	ldrb r1, [r5, r1]
	cmp r0, r1
	bne _02262186
	mov r0, #1
	str r0, [sp]
	b _02262216
_02262186:
	mov r0, #0
	mov r1, #6
	str r0, [sp]
	mov r0, #6
	lsl r1, r1, #6
	lsl r0, r0, #6
	ldrb r2, [r5, r1]
	ldrb r0, [r5, r0]
	add r2, #0x17
	strb r2, [r5, r1]
	add r1, r1, #6
	ldrb r3, [r5, r1]
	add r1, r3, #0
	add r1, #0xa0
	cmp r0, r3
	bgt _022621B0
	mov r2, #6
	lsl r2, r2, #6
	ldrb r2, [r5, r2]
	cmp r2, r3
	bhs _022621BE
_022621B0:
	cmp r0, r1
	bgt _02262204
	mov r0, #6
	lsl r0, r0, #6
	ldrb r0, [r5, r0]
	cmp r0, r1
	blt _02262204
_022621BE:
	ldr r0, _02262228 ; =0x00000192
	ldrb r0, [r5, r0]
	cmp r0, #1
	bhs _022621D2
	ldr r0, _02262228 ; =0x00000192
	ldrb r0, [r5, r0]
	add r1, r0, #1
	ldr r0, _02262228 ; =0x00000192
	strb r1, [r5, r0]
	b _02262204
_022621D2:
	cmp r7, #5
	beq _022621DC
	mov r0, ip
	cmp r0, #1
	bne _02262204
_022621DC:
	ldr r0, _02262228 ; =0x00000192
	ldrb r0, [r5, r0]
	add r1, r0, #1
	ldr r0, _02262228 ; =0x00000192
	strb r1, [r5, r0]
	sub r0, #0xc
	ldrb r1, [r5, r0]
	mov r0, #6
	lsl r0, r0, #6
	strb r1, [r5, r0]
	add r0, #0x1f
	ldrb r0, [r6, r0]
	add r1, r0, #1
	ldr r0, _02262224 ; =0x0000019F
	strb r1, [r6, r0]
	ldrb r0, [r6, r0]
	cmp r0, #6
	blo _02262204
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02262204:
	mov r0, #6
	lsl r0, r0, #6
	ldrb r0, [r5, r0]
	mov r1, #0xa0
	bl _s32_div_f
	mov r0, #6
	lsl r0, r0, #6
	strb r1, [r5, r0]
_02262216:
	add r4, r4, #1
	sub r7, r7, #1
	cmp r4, #6
	blt _02262146
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02262224: .word 0x0000019F
_02262228: .word 0x00000192
_0226222C: .word 0x00000186
	thumb_func_end ov93_02262130

