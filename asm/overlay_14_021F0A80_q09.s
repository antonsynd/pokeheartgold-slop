#include "constants/pokemon.h"
	.include "macros.inc"
	.include "overlay_14_021F0A80.inc"
	.include "global.inc"
	.public ov14_021F0C88

    .text

	.text
	thumb_func_start ov14_021F0C88
ov14_021F0C88: ; 0x021F0C88
	push {r4, lr}
	add r4, r0, #0
	mov r1, #1
	add r0, #0x24
	strb r1, [r0]
	add r0, r4, #0
	mov r2, #0
	add r0, #0x29
	strb r2, [r0]
	ldr r0, [r4, #0x34]
	mov r1, #9
	bl ov14_021F2A18
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8234
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8294
	mov r0, #0x2f
	ldr r1, [r4, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8314
	ldr r1, _021F0CD4 ; =ov14_021E94BC
	add r0, r4, #0
	mov r2, #0x2f
	bl ov14_021F0234
	pop {r4, pc}
	nop
_021F0CD4: .word ov14_021E94BC
	thumb_func_end ov14_021F0C88

