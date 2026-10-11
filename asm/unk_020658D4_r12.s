#include "constants/sndseq.h"
#include "constants/species.h"
#include "constants/maps.h"
#include "constants/pokemon.h"
#include "constants/flags.h"
#include "constants/vars.h"
#include "constants/items.h"
#include "constants/std_script.h"
#include "fielddata/script/scr_seq/event_D24R0204.h"
#include "constants/field_move_response.h"
	.include "asm/macros.inc"
	.include "unk_020658D4.inc"
	.include "global.inc"
	.public sub_02065C48

	.text

	.text
	thumb_func_start sub_02065C48
sub_02065C48: ; 0x02065C48
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl sub_02062428
	cmp r0, #1
	bne _02065C86
	ldrb r0, [r4, #2]
	add r0, r0, #1
	strb r0, [r4, #2]
	ldrb r0, [r4, #2]
	cmp r0, #2
	blo _02065C78
	add r0, r5, #0
	bl MapObject_ClearSingleMovement
	mov r0, #0
	strb r0, [r4]
	strb r0, [r4, #3]
	ldrh r2, [r4, #0xa]
	mov r1, #6
	bic r2, r1
	strh r2, [r4, #0xa]
	pop {r3, r4, r5, pc}
_02065C78:
	add r0, r5, #0
	bl sub_02069ED4
	add r1, r0, #0
	add r0, r5, #0
	bl MapObject_ForceSetHeldMovement
_02065C86:
	ldrb r0, [r4, #3]
	add r0, r0, #1
	strb r0, [r4, #3]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02065C48

