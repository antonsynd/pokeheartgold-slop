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
	.public sub_020640A4

	.text

	.text
	thumb_func_start sub_020640A4
sub_020640A4: ; 0x020640A4
	push {r4, lr}
	add r4, r0, #0
	cmp r1, #0
	bne _020640B0
	ldr r0, _020640C0 ; =0x00000106
	pop {r4, pc}
_020640B0:
	cmp r4, #0
	bne _020640B8
	bl GF_AssertFail
_020640B8:
	ldr r0, _020640C4 ; =ov01_02207274
	lsl r1, r4, #2
	ldr r0, [r0, r1]
	pop {r4, pc}
	.balign 4, 0
_020640C0: .word 0x00000106
_020640C4: .word ov01_02207274
	thumb_func_end sub_020640A4

