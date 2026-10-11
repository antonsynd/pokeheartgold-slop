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
	.public sub_02064598
	.extern sub_0206460C

	.text

	.text
	thumb_func_start sub_02064598
sub_02064598: ; 0x02064598
	push {r4, lr}
	add r4, r0, #0
	bne _020645A2
	bl GF_AssertFail
_020645A2:
	add r0, r4, #0
	bl sub_0206460C
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end sub_02064598

