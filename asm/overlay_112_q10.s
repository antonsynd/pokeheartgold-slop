#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021E5A84
	.extern _021FF9E0
	.extern ov112_021FFA18
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021E5A84
ov112_021E5A84: ; 0x021E5A84
	cmp r0, #1
	bne _021E5AA4
	ldr r0, _021E5AC8 ; =_021FF9E0
	ldr r0, [r0, #0x2c]
	cmp r0, #0
	beq _021E5A94
	mov r0, #1
	bx lr
_021E5A94:
	ldr r0, _021E5ACC ; =ov112_021FFA18
	ldrb r0, [r0]
	cmp r0, #0xfc
	beq _021E5AA0
	mov r0, #1
	bx lr
_021E5AA0:
	mov r0, #0
	bx lr
_021E5AA4:
	cmp r0, #2
	beq _021E5AAC
	cmp r0, #3
	bne _021E5AC4
_021E5AAC:
	mov r1, #0
	b _021E5AB2
_021E5AB0:
	add r1, r1, #1
_021E5AB2:
	cmp r1, #4
	blo _021E5AB0
	mov r1, #0
	b _021E5ABC
_021E5ABA:
	add r1, r1, #1
_021E5ABC:
	cmp r1, r0
	blo _021E5ABA
	mov r0, #1
	bx lr
_021E5AC4:
	mov r0, #0
	bx lr
	.balign 4, 0
_021E5AC8: .word _021FF9E0
_021E5ACC: .word ov112_021FFA18
	thumb_func_end ov112_021E5A84

