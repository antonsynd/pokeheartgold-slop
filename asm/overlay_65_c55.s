#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_65.inc"
	.include "global.inc"
	.public ov65_0221E3BC
	.extern ov65_0221E330
	.extern ov65_0221E354
	.extern ov65_0221E740
	.extern ov65_0221FC54

	.text

	.text
	thumb_func_start ov65_0221E3BC
ov65_0221E3BC: ; 0x0221E3BC
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	mov r0, #1
	str r0, [sp]
	mov r0, #6
	ldr r2, _0221E458 ; =0x00000664
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
	bhi _0221E450
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0221E3EE: ; jump table
	.short _0221E450 - _0221E3EE - 2 ; case 0
	.short _0221E3F8 - _0221E3EE - 2 ; case 1
	.short _0221E42C - _0221E3EE - 2 ; case 2
	.short _0221E3F8 - _0221E3EE - 2 ; case 3
	.short _0221E42C - _0221E3EE - 2 ; case 4
_0221E3F8:
	ldr r0, [r4, #4]
	bl Save_Frontier_GetStatic
	ldr r1, _0221E45C ; =0x0000367C
	ldr r1, [r4, r1]
	bl sub_020311AC
	ldr r1, _0221E460 ; =0x000036A0
	ldr r0, [r4, r1]
	sub r1, #0x24
	ldr r1, [r4, r1]
	bl sub_0202C338
	mov r0, #0
	str r0, [sp]
	ldr r1, _0221E464 ; =0x00003678
	ldr r0, [r4, #4]
	ldr r1, [r4, r1]
	mov r2, #0x1f
	mov r3, #0x1a
	bl sub_0203A280
	ldr r1, _0221E468 ; =ov65_0221E740
	ldr r0, _0221E46C ; =0x00002220
	str r1, [r4, r0]
	b _0221E450
_0221E42C:
	ldr r0, _0221E464 ; =0x00003678
	ldr r0, [r4, r0]
	bl sub_02034818
	add r2, r0, #0
	mov r0, #0xda
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #0
	bl BufferPlayersName
	add r0, r4, #0
	mov r1, #0x40
	bl ov65_0221E330
	ldr r1, _0221E470 ; =ov65_0221E354
	ldr r0, _0221E46C ; =0x00002220
	str r1, [r4, r0]
_0221E450:
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	nop
_0221E458: .word 0x00000664
_0221E45C: .word 0x0000367C
_0221E460: .word 0x000036A0
_0221E464: .word 0x00003678
_0221E468: .word ov65_0221E740
_0221E46C: .word 0x00002220
_0221E470: .word ov65_0221E354
	thumb_func_end ov65_0221E3BC

