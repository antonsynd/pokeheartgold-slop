	.include "asm/macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_0223B164
	.extern ov59_0223BBB0
	.extern ov59_0223BBD4
	.extern ov59_0223BD4C
	.extern ov59_0223BE70
	.extern ov59_0223C99C

	.text

	.text
	thumb_func_start ov59_0223B164
ov59_0223B164: ; 0x0223B164
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x36
	ldrb r1, [r1]
	lsl r2, r1, #2
	ldr r1, _0223B2A8 ; =ov59_0223C99C
	ldr r4, [r1, r2]
	add r1, r5, #0
	add r1, #0x42
	ldrh r1, [r1]
	cmp r1, #0
	beq _0223B188
	cmp r1, #1
	beq _0223B1CE
	cmp r1, #2
	beq _0223B236
	b _0223B28E
_0223B188:
	mov r1, #0
	add r0, #0x51
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x38
	strb r1, [r0]
	add r0, r5, #0
	add r0, #0x36
	ldrb r0, [r0]
	add r1, r5, r0
	mov r0, #0x39
	ldrsb r1, [r1, r0]
	cmp r1, #0
	bge _0223B1B4
	add r0, r5, #0
	neg r1, r1
	add r0, #0x37
	strb r1, [r0]
	ldr r0, _0223B2AC ; =0x00000926
	bl PlaySE
	b _0223B1C0
_0223B1B4:
	add r0, r5, #0
	add r0, #0x37
	strb r1, [r0]
	ldr r0, _0223B2B0 ; =0x00000925
	bl PlaySE
_0223B1C0:
	add r0, r5, #0
	add r0, #0x42
	ldrh r0, [r0]
	add r1, r0, #1
	add r0, r5, #0
	add r0, #0x42
	strh r1, [r0]
_0223B1CE:
	add r0, r5, #0
	add r0, #0x51
	ldrb r2, [r0]
	add r0, r5, #0
	add r0, #0x51
	ldrb r0, [r0]
	sub r1, r0, #1
	add r0, r5, #0
	add r0, #0x51
	strb r1, [r0]
	cmp r2, #0
	bne _0223B2A4
	add r0, r5, #0
	add r0, #0x36
	ldrb r0, [r0]
	add r1, r5, r0
	mov r0, #0x39
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bge _0223B204
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r2, #1
	bl ov59_0223BE70
	b _0223B210
_0223B204:
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	mov r2, #0
	bl ov59_0223BE70
_0223B210:
	add r0, r5, #0
	add r0, #0x38
	ldrb r1, [r0]
	add r0, r5, #0
	add r0, #0x37
	ldrb r0, [r0]
	cmp r1, r0
	blo _0223B22E
	add r0, r5, #0
	add r0, #0x42
	ldrh r0, [r0]
	add r5, #0x42
	add r0, r0, #1
	strh r0, [r5]
	b _0223B2A4
_0223B22E:
	mov r0, #0xf
	add r5, #0x51
	strb r0, [r5]
	b _0223B2A4
_0223B236:
	add r1, r5, #0
	add r1, #0x4f
	ldrb r1, [r1]
	cmp r1, #0
	bne _0223B2A4
	add r2, r5, #0
	add r2, #0x4a
	ldrb r3, [r2]
	add r1, r5, #0
	mov r2, #0x34
	add r1, #0x7c
	mul r2, r3
	add r1, r1, r2
	lsl r2, r4, #0x18
	lsr r2, r2, #0x18
	bl ov59_0223BD4C
	add r0, r5, #0
	bl ov59_0223BBB0
	add r0, r5, #0
	add r0, #0x36
	ldrb r0, [r0]
	add r1, r5, r0
	mov r0, #0x39
	ldrsb r0, [r1, r0]
	cmp r0, #0
	bge _0223B278
	add r0, r5, #0
	add r1, r4, #7
	bl ov59_0223BBD4
	b _0223B280
_0223B278:
	add r0, r5, #0
	add r1, r4, #2
	bl ov59_0223BBD4
_0223B280:
	add r0, r5, #0
	add r0, #0x42
	ldrh r0, [r0]
	add r5, #0x42
	add r0, r0, #1
	strh r0, [r5]
	b _0223B2A4
_0223B28E:
	add r0, #0x4d
	ldrb r0, [r0]
	bl TextPrinterCheckActive
	cmp r0, #0
	bne _0223B2A4
	mov r0, #0
	add r5, #0x42
	strh r0, [r5]
	mov r0, #1
	pop {r3, r4, r5, pc}
_0223B2A4:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0223B2A8: .word ov59_0223C99C
_0223B2AC: .word 0x00000926
_0223B2B0: .word 0x00000925
	thumb_func_end ov59_0223B164

