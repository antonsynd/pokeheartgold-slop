	.include "asm/macros.inc"
	.include "overlay_90.inc"
	.include "global.inc"
	.public ov90_02259EE0
	.extern ov90_02258CF0
	.extern ov90_02259FC8

	.text

	.text
	thumb_func_start ov90_02259EE0
ov90_02259EE0: ; 0x02259EE0
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r2, #0
	cmp r1, #0
	ble _02259EFC
	lsl r0, r1, #0xc
	bl _fflt
	add r1, r0, #0
	mov r0, #0x3f
	lsl r0, r0, #0x18
	bl _fadd
	b _02259F0A
_02259EFC:
	lsl r0, r1, #0xc
	bl _fflt
	mov r1, #0x3f
	lsl r1, r1, #0x18
	bl _fsub
_02259F0A:
	bl _ffix
	add r2, r0, #0
	mov r0, #8
	str r0, [sp]
	add r0, r5, #0
	mov r3, #7
	ldr r1, _02259F3C ; =0xFFF01000
	add r0, #0x1c
	lsl r3, r3, #0xe
	bl ov90_02258CF0
	mov r0, #0
	strh r0, [r5, #0x30]
	ldr r0, _02259F40 ; =0x0000057E
	strh r4, [r5, #0x32]
	str r0, [r5, #0x34]
	ldr r1, [r5, #0x1c]
	add r0, r5, #0
	asr r1, r1, #0xc
	neg r1, r1
	bl ov90_02259FC8
	pop {r3, r4, r5, pc}
	nop
_02259F3C: .word 0xFFF01000
_02259F40: .word 0x0000057E
	thumb_func_end ov90_02259EE0

