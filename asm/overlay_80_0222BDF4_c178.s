	.include "asm/macros.inc"
	.include "overlay_80_0222BDF4.inc"
	.include "global.inc"
	.public ov80_0222EC90
	.extern ov80_0222EDA0
	.extern ov80_0222EE7C

	.text

	.text
	thumb_func_start ov80_0222EC90
ov80_0222EC90: ; 0x0222EC90
	push {r4, r5, r6, lr}
	add r5, r1, #0
	add r0, r5, #0
	add r0, #0x94
	ldrb r0, [r0]
	cmp r0, #0
	beq _0222ECAC
	add r0, r5, #0
	add r0, #0x94
	ldrb r0, [r0]
	add r5, #0x94
	sub r0, r0, #1
	strb r0, [r5]
	pop {r4, r5, r6, pc}
_0222ECAC:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _0222ED8C
	mov r0, #0x6d
	lsl r0, r0, #2
	ldr r0, [r5, r0]
	bl ListMenu_ProcessInput
	add r4, r0, #0
	mov r0, #0x6d
	mov r1, #0xb5
	lsl r0, r0, #2
	lsl r1, r1, #2
	ldrh r6, [r5, r1]
	ldr r0, [r5, r0]
	add r1, r5, r1
	bl ListMenuGetCurrentItemArrayId
	mov r0, #0xb5
	lsl r0, r0, #2
	ldrh r0, [r5, r0]
	cmp r6, r0
	beq _0222ECE2
	ldr r0, _0222ED90 ; =0x000005DC
	bl PlaySE
_0222ECE2:
	ldr r0, _0222ED94 ; =gSystem
	mov r1, #0x40
	ldr r0, [r0, #0x4c]
	tst r1, r0
	bne _0222ECFE
	mov r1, #0x80
	tst r1, r0
	bne _0222ECFE
	mov r1, #0x20
	tst r1, r0
	bne _0222ECFE
	mov r1, #0x10
	tst r0, r1
	beq _0222ED04
_0222ECFE:
	add r0, r5, #0
	bl ov80_0222EE7C
_0222ED04:
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _0222ED26
	bl System_GetTouchNew
	cmp r0, #1
	bne _0222ED26
	mov r1, #0xb5
	mov r0, #0x6d
	lsl r1, r1, #2
	lsl r0, r0, #2
	ldrh r1, [r5, r1]
	ldr r0, [r5, r0]
	bl ListMenuGetValueByArrayId
	add r4, r0, #0
_0222ED26:
	add r0, r5, #0
	add r0, #0xa0
	ldr r0, [r0]
	ldrh r1, [r0]
	ldr r0, _0222ED98 ; =0x0000EEDD
	cmp r1, r0
	bne _0222ED3E
	add r0, r5, #0
	mov r1, #0
	bl ov80_0222EDA0
	pop {r4, r5, r6, pc}
_0222ED3E:
	mov r0, #1
	mvn r0, r0
	cmp r4, r0
	beq _0222ED4E
	add r0, r0, #1
	cmp r4, r0
	beq _0222ED8C
	b _0222ED76
_0222ED4E:
	add r0, r5, #0
	add r0, #0x97
	ldrb r0, [r0]
	lsl r0, r0, #0x1f
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _0222ED8C
	ldr r0, _0222ED90 ; =0x000005DC
	bl PlaySE
	add r0, r5, #0
	add r0, #0xa0
	ldr r1, _0222ED9C ; =0x0000FFFE
	ldr r0, [r0]
	strh r1, [r0]
	add r0, r5, #0
	mov r1, #1
	bl ov80_0222EDA0
	pop {r4, r5, r6, pc}
_0222ED76:
	ldr r0, _0222ED90 ; =0x000005DC
	bl PlaySE
	add r0, r5, #0
	add r0, #0xa0
	ldr r0, [r0]
	mov r1, #1
	strh r4, [r0]
	add r0, r5, #0
	bl ov80_0222EDA0
_0222ED8C:
	pop {r4, r5, r6, pc}
	nop
_0222ED90: .word 0x000005DC
_0222ED94: .word gSystem
_0222ED98: .word 0x0000EEDD
_0222ED9C: .word 0x0000FFFE
	thumb_func_end ov80_0222EC90

