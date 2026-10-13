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
	.include "overlay_01_022053EC.inc"
	.include "global.inc"
	.public ov01_022056C4

	.text

	.text
	thumb_func_start ov01_022056C4
ov01_022056C4: ; 0x022056C4
	push {r3, r4, r5, r6, r7, lr}
	add r6, r0, #0
	add r5, r1, #0
	bl MapObject_GetFieldSystem
	add r7, r0, #0
	add r0, r6, #0
	bl MapObject_GetXCoord
	add r4, r0, #0
	add r0, r6, #0
	bl MapObject_GetZCoord
	add r2, r0, #0
	cmp r5, #5
	bhi _02205716
	add r0, r5, r5
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_022056F0: ; jump table
	.short _022056FC - _022056F0 - 2 ; case 0
	.short _02205700 - _022056F0 - 2 ; case 1
	.short _02205708 - _022056F0 - 2 ; case 2
	.short _02205704 - _022056F0 - 2 ; case 3
	.short _0220570C - _022056F0 - 2 ; case 4
	.short _02205712 - _022056F0 - 2 ; case 5
_022056FC:
	sub r2, r2, #1
	b _02205716
_02205700:
	add r2, r2, #1
	b _02205716
_02205704:
	sub r4, r4, #1
	b _02205716
_02205708:
	add r4, r4, #1
	b _02205716
_0220570C:
	add r4, r4, #1
	add r2, r2, #1
	b _02205716
_02205712:
	sub r4, r4, #1
	add r2, r2, #1
_02205716:
	add r0, r7, #0
	add r1, r4, #0
	bl GetMetatileBehavior
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end ov01_022056C4

