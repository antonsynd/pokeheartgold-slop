#include "constants/sndseq.h"
#include "constants/items.h"
#include "msgdata/msg/msg_0010.h"
	.include "asm/macros.inc"
	.include "overlay_15.inc"
	.include "global.inc"
	.public ov15_021FAD28
	.extern ov15_02200584
	.extern ov15_02200585
	.extern ov15_02200586
	.extern ov15_02200587

	.text

	.text
	thumb_func_start ov15_021FAD28
ov15_021FAD28: ; 0x021FAD28
	ldr r1, _021FAD6C ; =gSystem
	mov r2, #0x40
	ldr r1, [r1, #0x48]
	tst r2, r1
	beq _021FAD3C
	lsl r1, r0, #2
	ldr r0, _021FAD70 ; =ov15_02200584
	ldrb r0, [r0, r1]
	sub r0, #8
	bx lr
_021FAD3C:
	mov r2, #0x80
	tst r2, r1
	beq _021FAD4C
	lsl r1, r0, #2
	ldr r0, _021FAD74 ; =ov15_02200585
	ldrb r0, [r0, r1]
	sub r0, #8
	bx lr
_021FAD4C:
	mov r2, #0x20
	tst r2, r1
	beq _021FAD5C
	lsl r1, r0, #2
	ldr r0, _021FAD78 ; =ov15_02200586
	ldrb r0, [r0, r1]
	sub r0, #8
	bx lr
_021FAD5C:
	mov r2, #0x10
	tst r1, r2
	beq _021FAD6A
	lsl r1, r0, #2
	ldr r0, _021FAD7C ; =ov15_02200587
	ldrb r0, [r0, r1]
	sub r0, #8
_021FAD6A:
	bx lr
	.balign 4, 0
_021FAD6C: .word gSystem
_021FAD70: .word ov15_02200584
_021FAD74: .word ov15_02200585
_021FAD78: .word ov15_02200586
_021FAD7C: .word ov15_02200587
	thumb_func_end ov15_021FAD28

