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
	.include "unk_02062108.inc"
	.include "global.inc"
	.public sub_0206234C

	.text
	thumb_func_start sub_0206234C
sub_0206234C: ; 0x0206234C
	push {r3, r4, r5, r6, r7, lr}
	add r7, r0, #0
	add r4, r1, #0
	cmp r7, #4
	blt _0206235A
	bl GF_AssertFail
_0206235A:
	ldr r3, _0206238C ; =_020FD198
	ldr r6, [r3]
	cmp r6, #0
	beq _02062384
	mov r1, #0
_02062364:
	add r2, r1, #0
	add r5, r6, #0
_02062368:
	ldr r0, [r5]
	cmp r4, r0
	bne _02062374
	lsl r0, r7, #2
	ldr r0, [r6, r0]
	pop {r3, r4, r5, r6, r7, pc}
_02062374:
	add r2, r2, #1
	add r5, r5, #4
	cmp r2, #4
	blt _02062368
	add r3, r3, #4
	ldr r6, [r3]
	cmp r6, #0
	bne _02062364
_02062384:
	bl GF_AssertFail
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0206238C: .word _020FD198
	thumb_func_end sub_0206234C

