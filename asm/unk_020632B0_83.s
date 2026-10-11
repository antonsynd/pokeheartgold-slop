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
	.public sub_020647E8

	.text

	.text
	thumb_func_start sub_020647E8
sub_020647E8: ; 0x020647E8
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x24]
	bl MapObject_IsMovementPaused
	cmp r0, #0
	bne _020647FA
	mov r0, #0
	pop {r4, pc}
_020647FA:
	ldr r0, [r4, #0xc]
	sub r0, r0, #1
	str r0, [r4, #0xc]
	mov r0, #0xa
	str r0, [r4]
	mov r0, #1
	pop {r4, pc}
	thumb_func_end sub_020647E8

