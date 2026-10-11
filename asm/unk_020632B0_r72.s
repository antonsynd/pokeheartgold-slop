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
	.public sub_02064668

	.text

	.text
	thumb_func_start sub_02064668
sub_02064668: ; 0x02064668
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r5, [r4, #0x24]
	add r0, r5, #0
	bl MapObject_CheckSingleMovement
	cmp r0, #1
	bne _0206467C
	mov r0, #0
	pop {r3, r4, r5, pc}
_0206467C:
	ldr r0, [r4, #0x24]
	ldr r1, [r4, #8]
	bl ov01_021F9408
	add r0, r5, #0
	mov r1, #0x40
	bl MapObject_SetFlagsBits
	mov r0, #2
	str r0, [r4]
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02064668

