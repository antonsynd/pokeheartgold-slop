#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021EAF08.inc"
	.include "global.inc"
	.public ov14_021EB218
	.extern ov14_021F7D74
	.extern ov14_021F7D78

    .text

	.text
	thumb_func_start ov14_021EB218
ov14_021EB218: ; 0x021EB218
	push {r4, lr}
	add r4, r0, #0
	ldr r1, [r4, #0x34]
	ldr r0, _021EB26C ; =0x00000434
	ldr r0, [r1, r0]
	bl YesNoPrompt_HandleInput
	cmp r0, #1
	beq _021EB230
	cmp r0, #2
	beq _021EB24C
	b _021EB268
_021EB230:
	ldr r1, [r4, #0x34]
	ldr r0, _021EB26C ; =0x00000434
	ldr r0, [r1, r0]
	bl YesNoPrompt_Reset
	ldr r2, [r4, #0x34]
	ldr r1, _021EB270 ; =0x00000438
	add r0, r4, #0
	ldrh r1, [r2, r1]
	lsl r2, r1, #3
	ldr r1, _021EB274 ; =ov14_021F7D74
	ldr r1, [r1, r2]
	blx r1
	pop {r4, pc}
_021EB24C:
	ldr r1, [r4, #0x34]
	ldr r0, _021EB26C ; =0x00000434
	ldr r0, [r1, r0]
	bl YesNoPrompt_Reset
	ldr r2, [r4, #0x34]
	ldr r1, _021EB270 ; =0x00000438
	add r0, r4, #0
	ldrh r1, [r2, r1]
	lsl r2, r1, #3
	ldr r1, _021EB278 ; =ov14_021F7D78
	ldr r1, [r1, r2]
	blx r1
	pop {r4, pc}
_021EB268:
	mov r0, #7
	pop {r4, pc}
	.balign 4, 0
_021EB26C: .word 0x00000434
_021EB270: .word 0x00000438
_021EB274: .word ov14_021F7D74
_021EB278: .word ov14_021F7D78
	thumb_func_end ov14_021EB218

