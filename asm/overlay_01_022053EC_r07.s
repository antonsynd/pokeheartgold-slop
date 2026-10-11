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
	.public ov01_022055B0

	.text

	.text
	thumb_func_start ov01_022055B0
ov01_022055B0: ; 0x022055B0
	push {r3, r4, r5, lr}
	mov r1, #1
	add r4, r0, #0
	bl MapObject_GetParam
	lsl r0, r0, #0x10
	lsr r5, r0, #0x10
	add r0, r4, #0
	bl MapObject_GetID
	cmp r0, #0xfd
	beq _022055CC
	mov r0, #0
	pop {r3, r4, r5, pc}
_022055CC:
	lsl r0, r5, #0x18
	lsr r1, r0, #0x18
	mov r0, #0xf
	and r0, r1
	lsl r0, r0, #0x18
	lsr r0, r0, #0x18
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end ov01_022055B0

