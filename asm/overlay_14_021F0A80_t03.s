#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021F0A80.inc"
	.include "global.inc"
	.public ov14_021F0B34
	.extern ov14_021F1100

    .text

	.text
	thumb_func_start ov14_021F0B34
ov14_021F0B34: ; 0x021F0B34
	push {r4, lr}
	add r4, r0, #0
	mov r2, #0
	add r0, #0x23
	strb r2, [r0]
	ldr r0, [r4, #0x34]
	mov r1, #9
	bl ov14_021F2A18
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8544
	cmp r0, #0
	bne _021F0B5E
	add r0, r4, #0
	bl ov14_021EC710
	pop {r4, pc}
_021F0B5E:
	add r0, r4, #0
	bl ov14_021E76B8
	add r0, r4, #0
	mov r1, #0x25
	bl ov14_021F1100
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov14_021F0B34

