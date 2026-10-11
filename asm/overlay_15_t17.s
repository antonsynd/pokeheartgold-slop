#include "constants/sndseq.h"
#include "constants/items.h"
#include "msgdata/msg/msg_0010.h"
	.include "asm/macros.inc"
	.include "overlay_15.inc"
	.include "global.inc"
	.public ov15_021FA044

	.text

	.text
	thumb_func_start ov15_021FA044
ov15_021FA044: ; 0x021FA044
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0
	ldrsh r3, [r4, r0]
	ldrh r0, [r1]
	add r0, r3, r0
	cmp r0, r2
	ble _021FA062
	sub r0, r2, #1
	mov r1, #6
	bl _s32_div_f
	mov r1, #6
	mul r1, r0
	strh r1, [r4]
_021FA062:
	mov r0, #0
	ldrsh r1, [r4, r0]
	cmp r1, #0
	bge _021FA06C
	strh r0, [r4]
_021FA06C:
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov15_021FA044

