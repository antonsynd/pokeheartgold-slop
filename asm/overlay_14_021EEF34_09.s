#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021EEF34.inc"
	.include "global.inc"
	.public ov14_021EF93C

    .text

	.text
	thumb_func_start ov14_021EF93C
ov14_021EF93C: ; 0x021EF93C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl ov14_021F7A50
	add r4, r0, #0
	ldr r0, [r5, #0x34]
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_IsButtonInputMode
	cmp r0, #0
	bne _021EF956
	mov r4, #1
	mvn r4, r4
_021EF956:
	cmp r4, #0x24
	bhi _021EF95E
	beq _021EF990
	b _021EF9A0
_021EF95E:
	add r0, r4, #4
	cmp r0, #3
	bhi _021EF9A0
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EF970: ; jump table
	.short _021EF988 - _021EF970 - 2 ; case 0
	.short _021EF978 - _021EF970 - 2 ; case 1
	.short _021EF990 - _021EF970 - 2 ; case 2
	.short _021EF9B0 - _021EF970 - 2 ; case 3
_021EF978:
	ldr r0, _021EF9B4 ; =0x000005DC
	bl PlaySE
	add r0, r5, #0
	mov r1, #0x89
	bl ov14_021F0244
	pop {r3, r4, r5, pc}
_021EF988:
	ldr r0, _021EF9B4 ; =0x000005DC
	bl PlaySE
	b _021EF9B0
_021EF990:
	ldr r0, _021EF9B8 ; =0x000005EA
	bl PlaySE
	add r0, r5, #0
	mov r1, #0xff
	bl ov14_021F1C4C
	pop {r3, r4, r5, pc}
_021EF9A0:
	ldr r0, _021EF9B8 ; =0x000005EA
	bl PlaySE
	add r0, r5, #0
	add r1, r4, #0
	bl ov14_021F1C4C
	pop {r3, r4, r5, pc}
_021EF9B0:
	mov r0, #0x88
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021EF9B4: .word 0x000005DC
_021EF9B8: .word 0x000005EA
	thumb_func_end ov14_021EF93C

