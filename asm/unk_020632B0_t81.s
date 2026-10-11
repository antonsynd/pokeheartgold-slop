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
	.public sub_020647A8

	.text

	.text
	thumb_func_start sub_020647A8
sub_020647A8: ; 0x020647A8
	ldr r1, [r0, #0xc]
	cmp r1, #1
	bgt _020647B6
	mov r1, #0xd
	str r1, [r0]
	mov r0, #1
	bx lr
_020647B6:
	mov r1, #0xb
	str r1, [r0]
	mov r0, #1
	bx lr
	.balign 4, 0
	thumb_func_end sub_020647A8

