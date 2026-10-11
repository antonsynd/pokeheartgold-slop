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
	.public sub_020645AC
	.extern sub_02064618

	.text

	.text
	thumb_func_start sub_020645AC
sub_020645AC: ; 0x020645AC
	ldr r3, _020645B0 ; =sub_02064618
	bx r3
	.balign 4, 0
_020645B0: .word sub_02064618
	thumb_func_end sub_020645AC

