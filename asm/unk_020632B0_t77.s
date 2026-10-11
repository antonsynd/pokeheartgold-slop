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
	.public sub_02064748

	.text

	.text
	thumb_func_start sub_02064748
sub_02064748: ; 0x02064748
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x20]
	bl ov01_022003F4
	cmp r0, #1
	bne _02064760
	ldr r0, [r4, #0x20]
	bl sub_02068B48
	mov r0, #9
	str r0, [r4]
_02064760:
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_02064748

