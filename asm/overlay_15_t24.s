#include "constants/sndseq.h"
#include "constants/items.h"
#include "msgdata/msg/msg_0010.h"
	.include "asm/macros.inc"
	.include "overlay_15.inc"
	.include "global.inc"
	.public ov15_021FA170
	.extern ov15_021FA12C
	.extern ov15_021FECA0
	.extern ov15_021FECC4
	.extern ov15_021FECD8

	.text

	.text
	thumb_func_start ov15_021FA170
ov15_021FA170: ; 0x021FA170
	push {r4, lr}
	ldr r1, _021FA1B8 ; =0x00000644
	add r4, r0, #0
	ldr r2, [r4, r1]
	cmp r2, #8
	blt _021FA19C
	cmp r2, #0xd
	bgt _021FA19C
	bl ov15_021FA12C
	add r2, r0, #0
	beq _021FA192
	add r0, r4, #0
	add r1, r4, #4
	bl ov15_021FECA0
	pop {r4, pc}
_021FA192:
	add r0, r4, #0
	add r1, r4, #4
	bl ov15_021FECC4
	pop {r4, pc}
_021FA19C:
	cmp r2, #0
	blt _021FA1AE
	cmp r2, #7
	bgt _021FA1AE
	add r0, r4, #0
	add r1, r4, #4
	bl ov15_021FECD8
	pop {r4, pc}
_021FA1AE:
	add r0, r4, #0
	add r1, r4, #4
	bl ov15_021FECC4
	pop {r4, pc}
	.balign 4, 0
_021FA1B8: .word 0x00000644
	thumb_func_end ov15_021FA170

