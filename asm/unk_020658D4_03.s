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
	.include "unk_020658D4.inc"
	.include "global.inc"
	.public sub_02065968
	.extern _020FE424
	.extern sub_02065CD0

	.text

	.text
	thumb_func_start sub_02065968
sub_02065968: ; 0x02065968
	push {r4, r5, r6, lr}
	add r5, r0, #0
	bl sub_0205F394
	add r4, r0, #0
	add r0, r5, #0
	add r1, r4, #0
	bl sub_02065CD0
	cmp r0, #0
	beq _02065990
	ldr r6, _02065994 ; =_020FE424
_02065980:
	ldrb r2, [r4]
	add r0, r5, #0
	add r1, r4, #0
	lsl r2, r2, #2
	ldr r2, [r6, r2]
	blx r2
	cmp r0, #1
	beq _02065980
_02065990:
	pop {r4, r5, r6, pc}
	nop
_02065994: .word _020FE424
	thumb_func_end sub_02065968

