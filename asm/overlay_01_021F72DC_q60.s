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
	.include "macros.inc"
	.include "overlay_01_021F72DC.inc"
	.include "global.inc"
	.public ov01_021F8A4C
	.extern ov01_021F8C88

	.text

	.text
	thumb_func_start ov01_021F8A4C
ov01_021F8A4C: ; 0x021F8A4C
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	bl sub_0205F40C
	add r4, r0, #0
	add r0, r6, #0
	ldr r5, [r4, #4]
	bl ov01_021FA2D4
	cmp r0, #1
	beq _021F8AAE
	cmp r5, #0
	beq _021F8AAE
	add r0, r6, #0
	bl MapObject_GetFacingDirection
	mov r1, #0
	ldrsb r1, [r4, r1]
	add r7, r0, #0
	cmp r7, r1
	beq _021F8A8A
	bl ov01_021FA44C
	add r1, r0, #0
	add r0, r5, #0
	bl sub_02023EE0
	add r0, r5, #0
	mov r1, #0
	bl sub_02023F40
_021F8A8A:
	mov r1, #1
	add r0, r5, #0
	lsl r1, r1, #0xc
	bl sub_02023F04
	add r0, r6, #0
	add r1, r5, #0
	bl ov01_021FA3E8
	add r0, r6, #0
	add r1, r5, #0
	bl ov01_021F8C88
	add r0, r6, #0
	strb r7, [r4]
	bl sub_0205F330
	strb r0, [r4, #2]
_021F8AAE:
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_021F8A4C

