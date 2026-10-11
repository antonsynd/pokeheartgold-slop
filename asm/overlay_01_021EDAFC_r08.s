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
	.include "overlay_01_021EDAFC.inc"
	.include "global.inc"
	.public ov01_021EDF00

	.text

	.text
	thumb_func_start ov01_021EDF00
ov01_021EDF00: ; 0x021EDF00
	push {r4, r5, r6, lr}
	add r6, r0, #0
	mov r4, #0
	add r5, r6, #0
_021EDF08:
	ldr r0, [r5, #0x1c]
	bl String_Delete
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x1c
	blt _021EDF08
	add r0, r6, #0
	add r0, #0x97
	ldrb r0, [r0]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	cmp r0, #1
	bne _021EDF2E
	add r0, r6, #0
	add r0, #0x8c
	ldr r0, [r0]
	bl DestroyMsgData
_021EDF2E:
	add r0, r6, #0
	bl Heap_Free
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov01_021EDF00

