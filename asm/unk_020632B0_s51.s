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
	.include "macros.inc"
	.include "unk_020632B0.inc"
	.include "global.inc"
	.public sub_0206402C

	.text

	.text
	thumb_func_start sub_0206402C
sub_0206402C: ; 0x0206402C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl sub_0205F40C
	add r4, r0, #0
	add r0, r5, #0
	bl ov01_021FA2D4
	cmp r0, #1
	beq _0206407E
	ldr r0, [r4, #8]
	cmp r0, #0
	bne _0206405E
	ldr r2, [r4]
	ldr r0, _02064080 ; =0x0000FFFF
	cmp r2, r0
	beq _0206405A
	add r1, r4, #0
	add r0, r5, #0
	add r1, #8
	bl ov01_021F94C0
	b _0206405E
_0206405A:
	bl GF_AssertFail
_0206405E:
	ldr r0, [r4, #8]
	cmp r0, #0
	beq _0206407E
	add r1, r4, #0
	add r1, #0xc
	bl ov01_021F9630
	ldr r1, [r4, #8]
	add r0, r5, #0
	bl ov01_021FA3E8
	mov r1, #2
	add r0, r5, #0
	lsl r1, r1, #0x14
	bl MapObject_ClearFlagsBits
_0206407E:
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02064080: .word 0x0000FFFF
	thumb_func_end sub_0206402C

