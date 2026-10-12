#include "constants/sndseq.h"
#include "constants/moves.h"
#include "constants/std_script.h"
#include "constants/species.h"
#include "constants/sprites.h"
#include "constants/maps.h"
#include "constants/mmodel.h"
#include "constants/items.h"
#include "msgdata/msg/msg_0096_D31R0201.h"
#include "msgdata/msg/msg_0066_D23R0102.h"
	.include "asm/macros.inc"
	.include "overlay_01_021F72DC.inc"
	.include "global.inc"
	.public ov01_021F84F4
	.extern ov01_021F8708
	.extern ov01_021F8C88
	.extern ov01_022089E8

	.text

	.text
	thumb_func_start ov01_021F84F4
ov01_021F84F4: ; 0x021F84F4
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r4, r0, #0
	bl sub_0205F40C
	ldr r7, [r0, #4]
	str r0, [sp]
	cmp r7, #0
	beq _021F8562
	add r0, r4, #0
	bl ov01_021FA2D4
	cmp r0, #1
	beq _021F8562
	add r0, r4, #0
	bl MapObject_GetFacingDirection
	str r0, [sp, #4]
	add r0, r4, #0
	bl sub_0205F330
	add r5, r0, #0
	cmp r5, #4
	blt _021F8528
	bl GF_AssertFail
_021F8528:
	lsl r6, r5, #2
	ldr r5, _021F8568 ; =ov01_022089E8
	ldr r2, [sp]
	ldr r3, [sp, #4]
	ldr r5, [r5, r6]
	add r0, r4, #0
	add r1, r7, #0
	blx r5
	ldr r2, [sp, #4]
	add r0, r4, #0
	add r1, r7, #0
	bl ov01_021F8708
	ldr r1, [sp, #4]
	ldr r0, [sp]
	strb r1, [r0]
	add r0, r4, #0
	bl sub_0205F330
	ldr r1, [sp]
	strb r0, [r1, #2]
	add r0, r4, #0
	add r1, r7, #0
	bl ov01_021FA3E8
	add r0, r4, #0
	add r1, r7, #0
	bl ov01_021F8C88
_021F8562:
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F8568: .word ov01_022089E8
	thumb_func_end ov01_021F84F4

