#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021EAF08.inc"
	.include "global.inc"
	.public ov14_021EB7B0

    .text

	thumb_func_start ov14_021EB7B0
ov14_021EB7B0: ; 0x021EB7B0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _021EB7E0 ; =0x000005EA
	bl PlaySE
	add r0, r4, #0
	bl ov14_021E637C
	add r0, r4, #0
	bl ov14_021F08F0
	ldr r0, [r4, #0x34]
	mov r1, #0x24
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetNextInput
	ldr r0, [r4, #0x34]
	mov r1, #1
	ldr r0, [r0, #0x2c]
	bl GridInputHandler_SetButtonInputMode
	mov r0, #0xc
	pop {r4, pc}
	nop
_021EB7E0: .word 0x000005EA
	thumb_func_end ov14_021EB7B0

