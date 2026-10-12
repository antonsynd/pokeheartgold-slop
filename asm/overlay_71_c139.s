	.include "asm/macros.inc"
	.include "overlay_71.inc"
	.include "global.inc"
	.public ov71_02249D80
	.extern ov71_02249E24

	.text

	.text
	thumb_func_start ov71_02249D80
ov71_02249D80: ; 0x02249D80
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r1, #0
	add r5, r0, #0
	ldr r0, [r4]
	cmp r0, #0
	beq _02249D98
	cmp r0, #1
	beq _02249DCA
	cmp r0, #2
	beq _02249DF6
	b _02249E04
_02249D98:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _02249E04
	ldr r0, _02249E0C ; =0xFFE80000
	mov r2, #0
	str r0, [r5, #0x10]
	mov r0, #5
	lsl r0, r0, #0x10
	str r0, [r5, #0x14]
	ldr r0, _02249E10 ; =0x00005999
	add r1, r5, #0
	str r0, [r5, #0x18]
	ldr r0, _02249E14 ; =0xFFFFDDDE
	str r0, [r5, #0x1c]
	mov r0, #0x3c
	str r0, [r5, #8]
	ldr r0, _02249E18 ; =ov71_02249E24
	str r2, [r5, #0x20]
	bl SysTask_CreateOnVBlankQueue
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _02249E04
_02249DCA:
	ldr r0, [r5, #0x20]
	cmp r0, #0
	beq _02249E04
	ldr r0, _02249E1C ; =0x000006A8
	bl PlaySE
	mov r0, #0x10
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0x39
	str r0, [sp, #8]
	mov r0, #0
	ldr r3, _02249E20 ; =0x00007FFF
	add r1, r0, #0
	add r2, r0, #0
	bl BeginNormalPaletteFade
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	b _02249E04
_02249DF6:
	bl IsPaletteFadeFinished
	cmp r0, #0
	beq _02249E04
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, pc}
_02249E04:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_02249E0C: .word 0xFFE80000
_02249E10: .word 0x00005999
_02249E14: .word 0xFFFFDDDE
_02249E18: .word ov71_02249E24
_02249E1C: .word 0x000006A8
_02249E20: .word 0x00007FFF
	thumb_func_end ov71_02249D80

