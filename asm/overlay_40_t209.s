	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_02234F98
	.extern ov40_0222BF80
	.extern ov40_0222DED0
	.extern ov40_0222DFB0
	.extern ov40_0223077C
	.extern ov40_02230CDC
	.extern ov40_0223D540
	.extern ov40_0223D5CC

	.text

	.text
	thumb_func_start ov40_02234F98
ov40_02234F98: ; 0x02234F98
	push {r3, r4, r5, lr}
	mov r1, #0x86
	add r4, r0, #0
	lsl r1, r1, #4
	ldr r5, [r4, r1]
	bl ov40_0223D5CC
	cmp r0, #0
	bne _02234FAE
	mov r0, #0
	pop {r3, r4, r5, pc}
_02234FAE:
	ldr r0, [r4, #8]
	cmp r0, #4
	bls _02234FB6
	b _022350F4
_02234FB6:
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02234FC2: ; jump table
	.short _02234FCC - _02234FC2 - 2 ; case 0
	.short _0223500C - _02234FC2 - 2 ; case 1
	.short _02235028 - _02234FC2 - 2 ; case 2
	.short _02235086 - _02234FC2 - 2 ; case 3
	.short _022350C0 - _02234FC2 - 2 ; case 4
_02234FCC:
	mov r1, #0x6f
	lsl r1, r1, #4
	ldr r1, [r4, r1]
	add r0, r4, #0
	mov r2, #0x80
	mov r3, #0x60
	bl ov40_0223077C
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl sub_020879E0
	mov r0, #0x6f
	lsl r0, r0, #4
	mov r1, #0x18
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl sub_02087A08
	ldr r1, _0223511C ; =0x0000011F
	add r0, r4, #0
	bl ov40_0222DED0
	ldr r0, _02235120 ; =0x0000057D
	bl PlaySE
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02235118
_0223500C:
	add r0, r4, #0
	bl ov40_0223D540
	mov r1, #0x2e
	lsl r1, r1, #4
	ldr r1, [r5, r1]
	bl ov39_022273F8
	cmp r0, #1
	bne _02235118
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02235118
_02235028:
	add r0, r4, #0
	bl ov40_0222DFB0
	add r0, r4, #0
	bl ov40_0223D540
	add r1, sp, #0
	bl ov39_02227D44
	cmp r0, #1
	ldr r0, _02235120 ; =0x0000057D
	bne _02235072
	mov r1, #0
	bl StopSE
	ldr r3, [sp]
	add r0, r4, #0
	ldr r2, [r3, #0xc]
	ldr r3, [r3, #4]
	mov r1, #1
	bl ov40_02230CDC
	mov r0, #0xb9
	mov r1, #0
	lsl r0, r0, #2
	str r1, [r5, r0]
	mov r0, #0x6f
	str r1, [r4, #0xc]
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	bl sub_020879E0
	add r0, r4, #0
	mov r1, #3
	bl ov40_0222BF80
	b _02235118
_02235072:
	mov r1, #0
	bl StopSE
	ldr r0, _02235124 ; =0x00000577
	bl PlaySE
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02235118
_02235086:
	mov r0, #1
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineATogglePlanes
	mov r0, #4
	mov r1, #0
	bl GfGfx_EngineBTogglePlanes
	mov r0, #0x6f
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #0
	bl sub_020879E0
	mov r0, #0x6f
	lsl r0, r0, #4
	mov r1, #0
	ldr r0, [r4, r0]
	add r2, r1, #0
	bl sub_02087A08
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	b _02235118
_022350C0:
	mov r1, #0xb9
	lsl r1, r1, #2
	ldr r0, [r5, r1]
	cmp r0, #0
	beq _022350E0
	add r0, r1, #0
	mov r2, #0
	sub r0, #0xb0
	str r2, [r5, r0]
	sub r1, #0xb4
	str r2, [r5, r1]
	add r0, r4, #0
	mov r1, #7
	bl ov40_0222BF80
	b _02235118
_022350E0:
	ldr r1, _02235128 ; =0x00000125
	add r0, r4, #0
	bl ov40_0222DED0
	ldr r0, [r4, #8]
	add r0, r0, #1
	str r0, [r4, #8]
	mov r0, #0
	str r0, [r4, #0xc]
	b _02235118
_022350F4:
	ldr r0, [r4, #0xc]
	add r0, r0, #1
	str r0, [r4, #0xc]
	cmp r0, #0x3c
	bge _02235106
	bl System_GetTouchNew
	cmp r0, #1
	bne _02235118
_02235106:
	mov r0, #0
	str r0, [r4, #0xc]
	add r0, r4, #0
	bl ov40_0222DFB0
	add r0, r4, #0
	mov r1, #3
	bl ov40_0222BF80
_02235118:
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0223511C: .word 0x0000011F
_02235120: .word 0x0000057D
_02235124: .word 0x00000577
_02235128: .word 0x00000125
	thumb_func_end ov40_02234F98

