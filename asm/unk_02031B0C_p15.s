#include "constants/items.h"
	.include "asm/macros.inc"
	.include "unk_02031B0C.inc"
	.include "global.inc"
	.public sub_02031C08

	.text
	thumb_func_start sub_02031C08
sub_02031C08: ; 0x02031C08
	push {r3, r4}
	ldrh r4, [r0, #0xa]
	mov r3, #0
	add r2, r3, #0
	mov r1, #7
_02031C12:
	add r0, r4, #0
	tst r0, r1
	beq _02031C1E
	add r0, r3, #1
	lsl r0, r0, #0x18
	lsr r3, r0, #0x18
_02031C1E:
	lsl r0, r4, #0xd
	add r2, r2, #1
	lsr r4, r0, #0x10
	cmp r2, #5
	blt _02031C12
	add r0, r3, #0
	pop {r3, r4}
	bx lr
	.balign 4, 0
	thumb_func_end sub_02031C08

