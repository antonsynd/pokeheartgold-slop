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
	.public sub_02063A78
	.extern _020FE164

	.text

	.text
	thumb_func_start sub_02063A78
sub_02063A78: ; 0x02063A78
	push {r4, lr}
	add r4, r0, #0
	bl MapObject_GetType
	add r1, r0, #0
	lsl r2, r1, #2
	ldr r1, _02063A90 ; =_020FE164
	add r0, r4, #0
	ldr r1, [r1, r2]
	blx r1
	pop {r4, pc}
	nop
_02063A90: .word _020FE164
	thumb_func_end sub_02063A78

