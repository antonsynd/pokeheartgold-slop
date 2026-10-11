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
	.public sub_02064790

	.text

	.text
	thumb_func_start sub_02064790
sub_02064790: ; 0x02064790
	ldr r1, [r0, #0x1c]
	add r1, r1, #1
	str r1, [r0, #0x1c]
	cmp r1, #0x1e
	blt _020647A2
	mov r1, #0
	str r1, [r0, #0x1c]
	mov r1, #0xa
	str r1, [r0]
_020647A2:
	mov r0, #0
	bx lr
	.balign 4, 0
	thumb_func_end sub_02064790

