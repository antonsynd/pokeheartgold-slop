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
	.include "unk_0205CB48.inc"
	.include "global.inc"
	.public sub_0205DD9C
	.public sub_0205DDB8

	.text

	.text
	thumb_func_start sub_0205DD9C
sub_0205DD9C: ; 0x0205DD9C
	mov r1, #0x20
	tst r1, r0
	beq _0205DDA6
	mov r0, #2
	bx lr
_0205DDA6:
	mov r1, #0x10
	tst r0, r1
	beq _0205DDB0
	mov r1, #3
	b _0205DDB2
_0205DDB0:
	sub r1, #0x11
_0205DDB2:
	add r0, r1, #0
	bx lr
	.balign 4, 0
	thumb_func_end sub_0205DD9C

	thumb_func_start sub_0205DDB8
sub_0205DDB8: ; 0x0205DDB8
	mov r1, #0x40
	tst r1, r0
	beq _0205DDC2
	mov r0, #0
	bx lr
_0205DDC2:
	mov r1, #0x80
	tst r0, r1
	beq _0205DDCC
	mov r1, #1
	b _0205DDCE
_0205DDCC:
	sub r1, #0x81
_0205DDCE:
	add r0, r1, #0
	bx lr
	.balign 4, 0
	thumb_func_end sub_0205DDB8

