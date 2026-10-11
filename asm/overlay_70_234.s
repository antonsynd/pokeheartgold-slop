#include "config.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_70.inc"
	.include "global.inc"
	.public ov70_0224122C
	.public ov70_02241234

	.text

	thumb_func_start ov70_02241234
ov70_02241234: ; 0x02241234
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _02241278 ; =0x00000EE8
	add r5, r0, #0
	mov r4, #0
_0224123C:
	ldr r0, [r5, r7]
	bl Sprite_GetDrawFlag
	cmp r0, #0
	beq _0224126E
	ldr r0, _02241278 ; =0x00000EE8
	ldr r0, [r5, r0]
	bl Sprite_GetAnimationNumber
	add r6, r0, #0
	add r0, r4, #0
	bl ov70_0224122C
	add r0, r0, #1
	cmp r6, r0
	beq _0224126E
	add r0, r4, #0
	bl ov70_0224122C
	add r1, r0, #0
	ldr r0, _02241278 ; =0x00000EE8
	add r1, r1, #1
	ldr r0, [r5, r0]
	bl Sprite_SetAnimCtrlSeq
_0224126E:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #7
	blt _0224123C
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02241278: .word 0x00000EE8
	thumb_func_end ov70_02241234

