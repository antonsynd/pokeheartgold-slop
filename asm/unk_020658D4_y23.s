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
	.public sub_02065FBC
	.extern sub_02065DB4

	.text

	.text
	thumb_func_start sub_02065FBC
sub_02065FBC: ; 0x02065FBC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl MapObject_GetFieldSystem
	bl FieldSystem_GetPlayerAvatar
	add r4, r0, #0
	add r0, r5, #0
	bl MapObject_GetXCoord
	add r0, r5, #0
	bl MapObject_GetZCoord
	add r0, r4, #0
	bl PlayerAvatar_GetPreviousXCoord
	add r0, r4, #0
	bl PlayerAvatar_GetPreviousZCoord
	add r0, r5, #0
	bl sub_02065DB4
	add r1, r0, #0
	cmp r1, #0xff
	bne _02065FF2
	mov r0, #0
	pop {r3, r4, r5, pc}
_02065FF2:
	add r0, r5, #0
	bl MapObject_ForceSetHeldMovement
	mov r0, #1
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02065FBC

