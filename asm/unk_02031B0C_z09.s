#include "constants/items.h"
	.include "asm/macros.inc"
	.include "unk_02031B0C.inc"
	.include "global.inc"
	.public ApricornBox_GetKurtBall
	.public sub_02031BEC
	.extern _020F68D0

	.text
	thumb_func_start ApricornBox_GetKurtBall
ApricornBox_GetKurtBall: ; 0x02031BD4
	ldrb r0, [r0, #8]
	cmp r0, #7
	blo _02031BDE
	mov r0, #ITEM_POKE_BALL
	bx lr
_02031BDE:
	lsl r1, r0, #1
	ldr r0, _02031BE8 ; =_020F68D0
	ldrh r0, [r0, r1]
	bx lr
	nop
_02031BE8: .word _020F68D0
	thumb_func_end ApricornBox_GetKurtBall

	thumb_func_start sub_02031BEC
sub_02031BEC: ; 0x02031BEC
	ldr r3, [r0, #0x1c]
	ldr r2, _02031BFC ; =0x3FFFFFFF
	lsl r1, r1, #0x1e
	and r2, r3
	orr r1, r2
	str r1, [r0, #0x1c]
	bx lr
	nop
_02031BFC: .word 0x3FFFFFFF
	thumb_func_end sub_02031BEC

