#include "constants/sndseq.h"
#include "constants/items.h"
#include "msgdata/msg/msg_0010.h"
	.include "asm/macros.inc"
	.include "overlay_15.inc"
	.include "global.inc"
	.public ov15_021FAC2C
	.extern ov15_02201314

	.text

	.text
	thumb_func_start ov15_021FAC2C
ov15_021FAC2C: ; 0x021FAC2C
	ldr r0, _021FAC38 ; =ov15_02201314
	lsl r1, r1, #2
	ldr r3, _021FAC3C ; =TouchscreenHitbox_FindRectAtTouchNew
	ldr r0, [r0, r1]
	bx r3
	nop
_021FAC38: .word ov15_02201314
_021FAC3C: .word TouchscreenHitbox_FindRectAtTouchNew
	thumb_func_end ov15_021FAC2C

