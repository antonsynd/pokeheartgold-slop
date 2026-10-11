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
	.public sub_020647C0

	.text

	.text
	thumb_func_start sub_020647C0
sub_020647C0: ; 0x020647C0
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x24]
	bl MapObject_AreBitsSetForMovementScriptInit
	cmp r0, #1
	bne _020647E2
	ldr r0, [r4, #8]
	mov r1, #0xc
	bl sub_0206234C
	add r1, r0, #0
	ldr r0, [r4, #0x24]
	bl MapObject_SetHeldMovement
	mov r0, #0xc
	str r0, [r4]
_020647E2:
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end sub_020647C0

