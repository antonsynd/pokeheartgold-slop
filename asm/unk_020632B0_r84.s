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
	.public sub_02064808

	.text

	.text
	thumb_func_start sub_02064808
sub_02064808: ; 0x02064808
	ldr r1, [r0, #0x1c]
	add r1, r1, #1
	str r1, [r0, #0x1c]
	cmp r1, #8
	bge _02064816
	mov r0, #0
	bx lr
_02064816:
	mov r1, #0
	str r1, [r0, #0x1c]
	mov r1, #0xe
	str r1, [r0]
	mov r0, #1
	bx lr
	.balign 4, 0
	thumb_func_end sub_02064808

