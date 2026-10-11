#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_65.inc"
	.include "global.inc"
	.public ov65_0221CADC
	.public ov65_0221CB5C
	.public ov65_0221D57C
	.public ov65_0221D674
	.public ov65_0221D8C4

	.text

	thumb_func_start ov65_0221CB5C
ov65_0221CB5C: ; 0x0221CB5C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r1, r5, #0
	add r1, #0x94
	ldr r1, [r1]
	cmp r1, #0xc
	beq _0221CBEE
	cmp r1, #6
	bge _0221CBD4
	ldr r0, _0221CBF0 ; =0x00002224
	ldr r0, [r5, r0]
	bl Party_GetMonByIndex
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x94
	ldr r0, [r0]
	mov r1, #6
	bl _s32_div_f
	add r3, r0, #0
	ldr r2, _0221CBF4 ; =0x000007FC
	add r1, r4, #0
	add r4, r5, r2
	mov r2, #0x32
	lsl r2, r2, #6
	mul r2, r3
	add r2, r4, r2
	ldr r4, _0221CBF8 ; =0x000020FC
	lsl r3, r3, #4
	add r4, r5, r4
	mov r0, #0
	add r3, r4, r3
	bl ov65_0221D57C
	ldr r1, _0221CBFC ; =0x0000211C
	add r3, r5, #0
	str r0, [r5, r1]
	ldr r0, _0221CC00 ; =0x00000444
	ldr r2, _0221CBF0 ; =0x00002224
	str r5, [sp]
	add r3, #0x94
	ldr r2, [r5, r2]
	ldr r3, [r3]
	add r0, r5, r0
	mov r1, #0
	bl ov65_0221D674
	ldr r0, _0221CC00 ; =0x00000444
	mov r1, #1
	add r0, r5, r0
	add r2, r5, #0
	bl ov65_0221D8C4
	ldr r0, _0221CC04 ; =0x00000418
	mov r1, #0
	ldr r0, [r5, r0]
	bl Sprite_SetDrawFlag
	pop {r3, r4, r5, pc}
_0221CBD4:
	bl ov65_0221CADC
	ldr r0, _0221CC00 ; =0x00000444
	mov r1, #0
	add r0, r5, r0
	add r2, r5, #0
	bl ov65_0221D8C4
	ldr r0, _0221CC08 ; =0x00000414
	mov r1, #0
	ldr r0, [r5, r0]
	bl Sprite_SetDrawFlag
_0221CBEE:
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0221CBF0: .word 0x00002224
_0221CBF4: .word 0x000007FC
_0221CBF8: .word 0x000020FC
_0221CBFC: .word 0x0000211C
_0221CC00: .word 0x00000444
_0221CC04: .word 0x00000418
_0221CC08: .word 0x00000414
	thumb_func_end ov65_0221CB5C

