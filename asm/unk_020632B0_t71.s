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
	.include "unk_020632B0.inc"
	.include "global.inc"
	.public sub_0206464C

	.text

	.text
	thumb_func_start sub_0206464C
sub_0206464C: ; 0x0206464C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r4, [r5, #0x24]
	add r0, r4, #0
	bl MapObject_CheckSingleMovement
	cmp r0, #1
	bne _02064662
	add r0, r4, #0
	bl MapObject_UnpauseMovement
_02064662:
	mov r0, #1
	str r0, [r5]
	pop {r3, r4, r5, pc}
	thumb_func_end sub_0206464C

