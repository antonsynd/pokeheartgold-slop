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
	.public GetDeltaXByFacingDirection
	.extern _020FD4AC

	.text

	.text
	thumb_func_start GetDeltaXByFacingDirection
GetDeltaXByFacingDirection: ; 0x02060F0C
	lsl r1, r0, #2
	ldr r0, _02060F14 ; =_020FD4AC
	ldr r0, [r0, r1]
	bx lr
	.balign 4, 0
_02060F14: .word _020FD4AC
	thumb_func_end GetDeltaXByFacingDirection

