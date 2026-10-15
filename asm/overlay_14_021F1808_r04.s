#include "constants/pokemon.h"
	.include "macros.inc"
	.include "overlay_14_021F1808.inc"
	.include "global.inc"
	.public ov14_021F1C04
	.extern ov14_021F1F24

    .text

	.text
	thumb_func_start ov14_021F1C04
ov14_021F1C04: ; 0x021F1C04
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x34]
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_GetNextInput
	add r1, r0, #0
	cmp r1, #0x24
	bhs _021F1C2E
	add r0, r4, #0
	bl ov14_021E7588
	cmp r0, #1
	bne _021F1C34
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8620
	b _021F1C34
_021F1C2E:
	add r0, r4, #0
	bl ov14_021E765C
_021F1C34:
	add r0, r4, #0
	bl ov14_021F1F24
	ldr r1, _021F1C48 ; =ov14_021EAC24
	add r0, r4, #0
	mov r2, #0x86
	bl ov14_021F0234
	pop {r4, pc}
	nop
_021F1C48: .word ov14_021EAC24
	thumb_func_end ov14_021F1C04

