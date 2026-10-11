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
	.public sub_02064764

	.text

	.text
	thumb_func_start sub_02064764
sub_02064764: ; 0x02064764
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x24]
	mov r1, #0x65
	bl MapObject_SetHeldMovement
	mov r0, #8
	str r0, [r4]
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_02064764

