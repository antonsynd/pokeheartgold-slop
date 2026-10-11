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
	.include "unk_02061284.inc"
	.include "global.inc"
	.public sub_02061850
	.extern _020FD5A0

	.text

	.text
	thumb_func_start sub_02061850
sub_02061850: ; 0x02061850
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	bl sub_0205F394
	ldr r6, _02061870 ; =_020FD5A0
	add r4, r0, #0
	mov r7, #2
_0206185E:
	ldrsb r2, [r4, r7]
	add r0, r5, #0
	add r1, r4, #0
	lsl r2, r2, #2
	ldr r2, [r6, r2]
	blx r2
	cmp r0, #1
	beq _0206185E
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02061870: .word _020FD5A0
	thumb_func_end sub_02061850

