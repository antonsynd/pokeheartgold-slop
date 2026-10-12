#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_65.inc"
	.include "global.inc"
	.public ov65_0221DFB8
	.extern ov65_0221CB5C
	.extern ov65_0221DD34
	.extern ov65_0221E144
	.extern ov65_0221E9A8
	.extern ov65_0221F3F4
	.extern ov65_0221FE6C

	.text

	.text
	thumb_func_start ov65_0221DFB8
ov65_0221DFB8: ; 0x0221DFB8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, _0221E034 ; =ov65_0221FE6C
	bl TouchscreenHitbox_FindRectAtTouchNew
	mov r1, #0
	mvn r1, r1
	cmp r0, r1
	beq _0221E030
	cmp r0, #0xc
	bne _0221DFE4
	ldr r0, _0221E038 ; =0x000005DC
	bl PlaySE
	ldr r1, _0221E03C ; =ov65_0221E144
	ldr r0, _0221E040 ; =0x00002220
	str r1, [r4, r0]
	add r0, r4, #0
	mov r1, #0xc
	add r0, #0x94
	str r1, [r0]
	b _0221E014
_0221DFE4:
	lsl r1, r0, #4
	add r2, r4, r1
	ldr r1, _0221E044 ; =0x0000069C
	ldrh r1, [r2, r1]
	cmp r1, #0
	beq _0221E014
	add r1, r4, #0
	add r1, #0x94
	str r0, [r1]
	add r0, r4, #0
	add r0, #0x94
	ldr r0, [r0]
	cmp r0, #6
	bge _0221E008
	ldr r1, _0221E048 ; =ov65_0221E9A8
	ldr r0, _0221E040 ; =0x00002220
	str r1, [r4, r0]
	b _0221E014
_0221E008:
	blt _0221E014
	cmp r0, #0xc
	bge _0221E014
	ldr r1, _0221E04C ; =ov65_0221F3F4
	ldr r0, _0221E040 ; =0x00002220
	str r1, [r4, r0]
_0221E014:
	add r0, r4, #0
	mov r1, #0xd1
	add r0, #0x94
	lsl r1, r1, #2
	ldr r0, [r0]
	ldr r1, [r4, r1]
	mov r2, #0
	bl ov65_0221DD34
	add r0, r4, #0
	bl ov65_0221CB5C
	mov r0, #1
	pop {r4, pc}
_0221E030:
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
_0221E034: .word ov65_0221FE6C
_0221E038: .word 0x000005DC
_0221E03C: .word ov65_0221E144
_0221E040: .word 0x00002220
_0221E044: .word 0x0000069C
_0221E048: .word ov65_0221E9A8
_0221E04C: .word ov65_0221F3F4
	thumb_func_end ov65_0221DFB8

