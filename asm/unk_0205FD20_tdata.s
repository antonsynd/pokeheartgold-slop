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
	.include "unk_0205FD20.inc"
	.include "global.inc"
	.public _020FD49C
	.public _020FD4AC
	.public _020FD4BC
	.public _020FD4CC
	.public _020FD4DC

	.text
































































	.rodata

	; File boundary
_020FD49C:
	.word -1
	.word  1
	.word  0
	.word  0
_020FD4AC:
	.word  0
	.word  0
	.word -1
	.word  1
_020FD4BC:
	.word sub_0205B918
	.word sub_0205B8F4
	.word sub_0205B960
	.word sub_0205B93C
_020FD4CC:
	.word sub_0205B8F4
	.word sub_0205B918
	.word sub_0205B93C
	.word sub_0205B960
_020FD4DC:
	.word 1
	.word 0
	.word 3
	.word 2
