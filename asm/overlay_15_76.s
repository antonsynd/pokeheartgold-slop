#include "constants/sndseq.h"
#include "constants/items.h"
#include "msgdata/msg/msg_0010.h"
	.include "asm/macros.inc"
	.include "overlay_15.inc"
	.include "global.inc"
	.public ov15_021FE154
	.extern ov15_021FE1D0
	.extern ov15_021FE3E0

	.text

	.text
	thumb_func_start ov15_021FE154
ov15_021FE154: ; 0x021FE154
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r5, #0
	add r4, r6, #4
_021FE15C:
	lsl r0, r5, #4
	add r0, r4, r0
	bl RemoveWindow
	add r0, r5, #1
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	cmp r5, #8
	blo _021FE15C
	add r0, r6, #0
	bl ov15_021FE3E0
	add r0, r6, #0
	bl ov15_021FE1D0
	pop {r4, r5, r6, pc}
	thumb_func_end ov15_021FE154

