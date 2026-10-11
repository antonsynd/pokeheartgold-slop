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
	.public sub_0205D07C
	.extern _020FCB7C

	.text

	.text
	thumb_func_start sub_0205D07C
sub_0205D07C: ; 0x0205D07C
	push {r3, lr}
	add r3, r1, #0
	add r1, r2, #0
	ldr r2, _0205D098 ; =_020FCB7C
	lsl r3, r3, #2
	ldr r2, [r2, r3]
	blx r2
	cmp r0, #1
	bne _0205D092
	mov r0, #1
	pop {r3, pc}
_0205D092:
	mov r0, #0
	pop {r3, pc}
	nop
_0205D098: .word _020FCB7C
	thumb_func_end sub_0205D07C

