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
	.public sub_02064518
	.extern MapObject_GetTrainerNum

	.text

	.text
	thumb_func_start sub_02064518
sub_02064518: ; 0x02064518
	ldr r3, _0206451C ; =MapObject_GetTrainerNum
	bx r3
	.balign 4, 0
_0206451C: .word MapObject_GetTrainerNum
	thumb_func_end sub_02064518

