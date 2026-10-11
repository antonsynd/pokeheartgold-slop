#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021EAF08.inc"
	.include "global.inc"
	.public ov14_021EC0EC

    .text

	.text
	thumb_func_start ov14_021EC0EC
ov14_021EC0EC: ; 0x021EC0EC
	push {r4, lr}
	add r4, r0, #0
	bl ov14_021E7278
	ldr r1, [r4, #0x34]
	ldr r0, _021EC124 ; =0x000088DC
	ldr r0, [r1, r0]
	bl ov14_021F3380
	cmp r0, #0
	bne _021EC120
	ldr r1, [r4, #0x34]
	ldr r0, _021EC124 ; =0x000088DC
	ldr r0, [r1, r0]
	ldrb r1, [r0, #6]
	cmp r1, #0
	beq _021EC112
	mov r0, #0x1e
	pop {r4, pc}
_021EC112:
	bl ov14_021F33E8
	add r0, r4, #0
	bl ov14_021E7264
	mov r0, #0x1b
	pop {r4, pc}
_021EC120:
	mov r0, #0x1a
	pop {r4, pc}
	.balign 4, 0
_021EC124: .word 0x000088DC
	thumb_func_end ov14_021EC0EC

