	.include "asm/macros.inc"
	.include "overlay_59.inc"
	.include "global.inc"
	.public ov59_0223AF9C
	.public ov59_0223B11C
	.public ov59_0223B164
	.extern ov59_0223AEB0
	.extern ov59_0223BBB0
	.extern ov59_0223BBD4
	.extern ov59_0223BD4C
	.extern ov59_0223BE70
	.extern ov59_0223C054
	.extern ov59_0223C138
	.extern ov59_0223C99C

	.text

	.text
	thumb_func_start ov59_0223AF9C
ov59_0223AF9C: ; 0x0223AF9C
	push {r3, r4, lr}
	sub sp, #0xc
	add r4, r0, #0
	add r0, #0x42
	ldrh r0, [r0]
	cmp r0, #5
	bls _0223AFAC
	b _0223B0FA
_0223AFAC:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0223AFB8: ; jump table
	.short _0223AFC4 - _0223AFB8 - 2 ; case 0
	.short _0223B024 - _0223AFB8 - 2 ; case 1
	.short _0223B05C - _0223AFB8 - 2 ; case 2
	.short _0223B084 - _0223AFB8 - 2 ; case 3
	.short _0223B0B4 - _0223AFB8 - 2 ; case 4
	.short _0223B0CC - _0223AFB8 - 2 ; case 5
_0223AFC4:
	mov r0, #0x26
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl Sprite_IsAnimated
	cmp r0, #0
	beq _0223AFD8
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, pc}
_0223AFD8:
	add r0, r4, #0
	mov r1, #3
	bl ov59_0223AEB0
	add r0, r4, #0
	bl ov59_0223BBB0
	add r0, r4, #0
	mov r1, #0
	bl ov59_0223BBD4
	mov r0, #0x9a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl Sprite_SetDrawFlag
	mov r0, #0x9a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0xa
	bl Sprite_SetAnimCtrlSeq
	mov r0, #0x9a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl Sprite_ResetAnimCtrlState
	ldr r0, _0223B114 ; =0x00000921
	bl PlaySE
	add r0, r4, #0
	add r0, #0x42
	ldrh r0, [r0]
	add r4, #0x42
	add r0, r0, #1
	strh r0, [r4]
	b _0223B10E
_0223B024:
	mov r0, #0x9a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl Sprite_IsAnimated
	cmp r0, #0
	beq _0223B038
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, pc}
_0223B038:
	mov r0, #0x9a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0xb
	bl Sprite_SetAnimCtrlSeq
	mov r0, #0x9a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl Sprite_ResetAnimCtrlState
	add r0, r4, #0
	add r0, #0x42
	ldrh r0, [r0]
	add r4, #0x42
	add r0, r0, #1
	strh r0, [r4]
	b _0223B10E
_0223B05C:
	mov r0, #0x9a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	bl Sprite_IsAnimated
	cmp r0, #0
	beq _0223B070
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, pc}
_0223B070:
	add r0, r4, #0
	bl ov59_0223C054
	add r0, r4, #0
	add r0, #0x42
	ldrh r0, [r0]
	add r4, #0x42
	add r0, r0, #1
	strh r0, [r4]
	b _0223B10E
_0223B084:
	add r0, r4, #0
	add r0, #0x4f
	ldrb r0, [r0]
	cmp r0, #0
	beq _0223B094
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, pc}
_0223B094:
	mov r0, #0x9a
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl Sprite_SetDrawFlag
	add r0, r4, #0
	bl ov59_0223C138
	add r0, r4, #0
	add r0, #0x42
	ldrh r0, [r0]
	add r4, #0x42
	add r0, r0, #1
	strh r0, [r4]
	b _0223B10E
_0223B0B4:
	add r0, r4, #0
	add r0, #0x4f
	ldrb r0, [r0]
	cmp r0, #0
	beq _0223B0C4
	add sp, #0xc
	mov r0, #0
	pop {r3, r4, pc}
_0223B0C4:
	mov r0, #6
	add r4, #0x42
	strh r0, [r4]
	b _0223B10E
_0223B0CC:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _0223B10E
	mov r0, #6
	str r0, [sp]
	mov r0, #2
	str r0, [sp, #4]
	ldr r0, [r4]
	mov r1, #1
	str r0, [sp, #8]
	ldr r3, _0223B118 ; =0x00007FFF
	mov r0, #0
	add r2, r1, #0
	bl BeginNormalPaletteFade
	add r0, r4, #0
	add r0, #0x42
	ldrh r0, [r0]
	add r4, #0x42
	add r0, r0, #1
	strh r0, [r4]
	b _0223B10E
_0223B0FA:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _0223B10E
	mov r0, #0
	add r4, #0x42
	strh r0, [r4]
	add sp, #0xc
	mov r0, #1
	pop {r3, r4, pc}
_0223B10E:
	mov r0, #0
	add sp, #0xc
	pop {r3, r4, pc}
	.balign 4, 0
_0223B114: .word 0x00000921
_0223B118: .word 0x00007FFF
	thumb_func_end ov59_0223AF9C

	thumb_func_start ov59_0223B11C
ov59_0223B11C: ; 0x0223B11C
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x42
	ldrh r1, [r1]
	cmp r1, #0
	beq _0223B130
	cmp r1, #1
	beq _0223B14A
	b _0223B160
_0223B130:
	bl ov59_0223BBB0
	add r0, r4, #0
	mov r1, #1
	bl ov59_0223BBD4
	add r0, r4, #0
	add r0, #0x42
	ldrh r0, [r0]
	add r4, #0x42
	add r0, r0, #1
	strh r0, [r4]
	b _0223B160
_0223B14A:
	add r0, #0x4d
	ldrb r0, [r0]
	bl TextPrinterCheckActive
	cmp r0, #0
	bne _0223B160
	mov r0, #0
	add r4, #0x42
	strh r0, [r4]
	mov r0, #1
	pop {r4, pc}
_0223B160:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end ov59_0223B11C

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

