#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021F6628.inc"
	.include "global.inc"
	.public ov14_021F6A44
	.extern ov14_021F6B10
	.extern ov14_021F6B28
	.extern ov14_021F8B10

    .text

	.text
	thumb_func_start ov14_021F6A44
ov14_021F6A44: ; 0x021F6A44
	push {r4, r5, lr}
	sub sp, #0xc
	add r4, r0, #0
	ldr r0, [r4]
	ldr r0, [r0, #8]
	cmp r0, #3
	bhi _021F6A74
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021F6A5E: ; jump table
	.short _021F6A66 - _021F6A5E - 2 ; case 0
	.short _021F6A6A - _021F6A5E - 2 ; case 1
	.short _021F6A6E - _021F6A5E - 2 ; case 2
	.short _021F6A72 - _021F6A5E - 2 ; case 3
_021F6A66:
	mov r5, #0
	b _021F6A74
_021F6A6A:
	mov r5, #2
	b _021F6A74
_021F6A6E:
	mov r5, #3
	b _021F6A74
_021F6A72:
	mov r5, #6
_021F6A74:
	add r0, r4, #0
	bl ov14_021F6B10
	mov r0, #0xc
	add r2, r5, #0
	mul r2, r0
	mov r0, #1
	str r0, [sp]
	ldr r0, [r4, #0x2c]
	ldr r1, _021F6AB4 ; =ov14_021F8B10 + 4
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, #0xa
	str r0, [sp, #8]
	ldr r0, _021F6AB8 ; =ov14_021F8B10
	ldr r3, _021F6ABC ; =ov14_021F8B10 + 8
	ldr r0, [r0, r2]
	ldr r1, [r1, r2]
	ldr r2, [r3, r2]
	add r3, r4, #0
	bl GridInputHandler_Create
	ldr r1, [r4, #0x34]
	str r0, [r1, #0x2c]
	ldr r1, [r4, #0x2c]
	add r0, r4, #0
	bl ov14_021F6B28
	add sp, #0xc
	pop {r4, r5, pc}
	nop
_021F6AB4: .word ov14_021F8B10 + 4
_021F6AB8: .word ov14_021F8B10
_021F6ABC: .word ov14_021F8B10 + 8
	thumb_func_end ov14_021F6A44

