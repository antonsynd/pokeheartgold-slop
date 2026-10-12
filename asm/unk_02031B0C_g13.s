#include "constants/items.h"
	.include "asm/macros.inc"
	.include "unk_02031B0C.inc"
	.include "global.inc"
	.public sub_02031CA0
	.extern sub_02031C08

	.text
	thumb_func_start sub_02031CA0
sub_02031CA0: ; 0x02031CA0
	push {r4, lr}
	add r4, r0, #0
	bl sub_02031C08
	cmp r0, #0
	bne _02031CB0
	mov r0, #0
	pop {r4, pc}
_02031CB0:
	ldr r0, [r4, #0x1c]
	lsl r0, r0, #2
	lsr r0, r0, #2
	cmp r0, #0x32
	bhs _02031CBE
	mov r0, #1
	pop {r4, pc}
_02031CBE:
	cmp r0, #0x50
	bhs _02031CC6
	mov r0, #2
	pop {r4, pc}
_02031CC6:
	mov r0, #3
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end sub_02031CA0

