#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_65.inc"
	.include "global.inc"
	.public ov65_0221E684
	.extern ov65_0221E330
	.extern ov65_0221E600
	.extern ov65_0221E740
	.extern ov65_0221FC54

	.text

	.text
	thumb_func_start ov65_0221E684
ov65_0221E684: ; 0x0221E684
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #6
	ldr r2, _0221E714 ; =0x00000664
	lsl r0, r0, #6
	mov r3, #0xdb
	add r1, r4, r2
	add r2, #0xc
	lsl r3, r3, #6
	ldr r0, [r4, r0]
	add r2, r4, r2
	add r3, r4, r3
	bl ov65_0221FC54
	cmp r0, #4
	bhi _0221E70E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0221E6B6: ; jump table
	.short _0221E70E - _0221E6B6 - 2 ; case 0
	.short _0221E6C0 - _0221E6B6 - 2 ; case 1
	.short _0221E708 - _0221E6B6 - 2 ; case 2
	.short _0221E6C0 - _0221E6B6 - 2 ; case 3
	.short _0221E708 - _0221E6B6 - 2 ; case 4
_0221E6C0:
	ldr r1, _0221E718 ; =ov65_0221E740
	ldr r0, _0221E71C ; =0x00002220
	ldr r6, _0221E720 ; =0x000036A0
	str r1, [r4, r0]
	mov r5, #0
_0221E6CA:
	ldr r0, [r4, r6]
	add r1, r5, #0
	bl sub_0202C2DC
	cmp r0, #0
	bne _0221E6EA
	mov r0, #0
	str r0, [sp]
	ldr r1, _0221E724 ; =0x00003678
	ldr r0, [r4, #4]
	ldr r1, [r4, r1]
	add r2, r5, #0
	mov r3, #0x1a
	bl sub_0203A280
	b _0221E6F0
_0221E6EA:
	add r5, r5, #1
	cmp r5, #0x20
	blt _0221E6CA
_0221E6F0:
	cmp r5, #0x20
	bne _0221E70E
	add r0, r4, #0
	mov r1, #0x3f
	bl ov65_0221E330
	ldr r1, _0221E728 ; =ov65_0221E600
	ldr r0, _0221E71C ; =0x00002220
	add sp, #4
	str r1, [r4, r0]
	mov r0, #0
	pop {r3, r4, r5, r6, pc}
_0221E708:
	ldr r1, _0221E718 ; =ov65_0221E740
	ldr r0, _0221E71C ; =0x00002220
	str r1, [r4, r0]
_0221E70E:
	mov r0, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_0221E714: .word 0x00000664
_0221E718: .word ov65_0221E740
_0221E71C: .word 0x00002220
_0221E720: .word 0x000036A0
_0221E724: .word 0x00003678
_0221E728: .word ov65_0221E600
	thumb_func_end ov65_0221E684

