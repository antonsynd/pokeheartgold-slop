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
	.public sub_020611F4
	.extern _020FD4DC

	.text

	.text
	thumb_func_start sub_020611F4
sub_020611F4: ; 0x020611F4
	lsl r1, r0, #2
	ldr r0, _020611FC ; =_020FD4DC
	ldr r0, [r0, r1]
	bx lr
	.balign 4, 0
_020611FC: .word _020FD4DC
	thumb_func_end sub_020611F4

