#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_65.inc"
	.include "global.inc"
	.public ov65_0221CA64
	.public ov65_0221CADC
	.public ov65_0221D57C
	.public ov65_0221D674

	.text

	thumb_func_start ov65_0221CADC
ov65_0221CADC: ; 0x0221CADC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r1, #0
	add r5, r0, #0
	add r0, r4, #0
	mov r1, #6
	bl _s32_div_f
	ldr r0, _0221CB48 ; =0x00002228
	add r7, r1, #0
	ldr r0, [r5, r0]
	bl Party_GetMonByIndex
	add r6, r0, #0
	add r0, r4, #0
	mov r1, #6
	bl _s32_div_f
	add r1, r6, #0
	ldr r2, _0221CB4C ; =0x000007FC
	mov r6, #0x32
	add r3, r0, #0
	lsl r6, r6, #6
	mul r6, r3
	add r2, r5, r2
	add r2, r2, r6
	ldr r6, _0221CB50 ; =0x000020FC
	lsl r3, r3, #4
	add r6, r5, r6
	mov r0, #1
	add r3, r6, r3
	bl ov65_0221D57C
	ldr r1, _0221CB54 ; =0x0000211C
	ldr r2, _0221CB48 ; =0x00002228
	str r0, [r5, r1]
	str r5, [sp]
	ldr r0, _0221CB58 ; =0x00000444
	ldr r2, [r5, r2]
	add r0, r5, r0
	mov r1, #1
	add r3, r7, #0
	bl ov65_0221D674
	lsl r2, r4, #4
	add r3, r5, r2
	mov r2, #0x6a
	lsl r2, r2, #4
	ldrb r2, [r3, r2]
	add r0, r5, #0
	mov r1, #3
	bl ov65_0221CA64
	pop {r3, r4, r5, r6, r7, pc}
	nop
_0221CB48: .word 0x00002228
_0221CB4C: .word 0x000007FC
_0221CB50: .word 0x000020FC
_0221CB54: .word 0x0000211C
_0221CB58: .word 0x00000444
	thumb_func_end ov65_0221CADC

