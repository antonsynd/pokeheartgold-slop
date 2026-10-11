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
	.public sub_02064778

	.text

	.text
	thumb_func_start sub_02064778
sub_02064778: ; 0x02064778
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x24]
	bl MapObject_IsMovementPaused
	cmp r0, #1
	bne _0206478A
	mov r0, #9
	str r0, [r4]
_0206478A:
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end sub_02064778

