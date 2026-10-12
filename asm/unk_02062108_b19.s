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
	.public sub_020623D8
	.extern _020FDA28

	.text
	thumb_func_start sub_020623D8
sub_020623D8: ; 0x020623D8
	push {r4, lr}
	sub sp, #0x10
	ldr r3, _020623FC ; =_020FDA28
	add r2, sp, #0
	add r4, r0, #0
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	ldmia r3!, {r0, r1}
	stmia r2!, {r0, r1}
	cmp r4, #4
	blt _020623F2
	bl GF_AssertFail
_020623F2:
	lsl r1, r4, #2
	add r0, sp, #0
	ldr r0, [r0, r1]
	add sp, #0x10
	pop {r4, pc}
	.balign 4, 0
_020623FC: .word _020FDA28
	thumb_func_end sub_020623D8

