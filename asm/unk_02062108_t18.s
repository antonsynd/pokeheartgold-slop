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
	.include "unk_02062108.inc"
	.include "global.inc"
	.public sub_020623C8

	.text
	thumb_func_start sub_020623C8
sub_020623C8: ; 0x020623C8
	sub r0, #0x38
	cmp r0, #3
	bhi _020623D2
	mov r0, #1
	bx lr
_020623D2:
	mov r0, #0
	bx lr
	.balign 4, 0
	thumb_func_end sub_020623C8

