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
	.public _020FE3CC
	.public _020FE3D4
	.public _020FE3DC
	.public _020FE3E8
	.public _020FE3F4
	.public _020FE404
	.public _020FE414
	.public _020FE424
	.public _020FE434
	.public _020FE444
	.public sub_02065A4C
	.public sub_02065B70
	.public sub_02065BE8
	.public sub_02065C2C
	.public sub_02065C48
	.public sub_02065C90
	.public sub_02066064
	.public sub_020660A0
	.public sub_020663B4
	.public sub_020663E4

	.text



















































	.rodata

_020FE3CC:
	.word sub_020663B4
	.word sub_020663E4
_020FE3D4:
	.word sub_02066064
	.word sub_020660A0
_020FE3DC:
	.word 0, -0x20000, 0 ; VecFx32
_020FE3E8:
	.word 0, -0x20000, 0 ; VecFx32
_020FE3F4:
	.word 12, 13, 14, 15
_020FE404:
	.word sub_02065A4C
	.word sub_02065C2C
	.word sub_02065C48
	.word sub_02065C90
_020FE414:
	.word sub_02065B70
	.word sub_02065C2C
	.word sub_02065C48
	.word sub_02065C90
_020FE424:
	.word sub_02065BE8
	.word sub_02065C2C
	.word sub_02065C48
	.word sub_02065C90
_020FE434:
	.word 16, 17, 18, 19
_020FE444:
	.word 20, 21, 22, 23
