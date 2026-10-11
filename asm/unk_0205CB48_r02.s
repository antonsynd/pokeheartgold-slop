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
	.public sub_0205CBEC
	.extern sub_0205DA34
	.extern sub_0205DE64

	.text

	.text
	thumb_func_start sub_0205CBEC
sub_0205CBEC: ; 0x0205CBEC
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r4, r1, #0
	bl PlayerAvatar_GetMapObject
	add r6, r0, #0
	bl MapObject_AreBitsSetForMovementScriptInit
	cmp r0, #1
	bne _0205CC04
	mov r0, #1
	pop {r4, r5, r6, pc}
_0205CC04:
	mov r0, #0
	mvn r0, r0
	cmp r4, r0
	bne _0205CC10
	mov r0, #0
	pop {r4, r5, r6, pc}
_0205CC10:
	add r0, r6, #0
	bl MapObject_GetMovementCommand
	bl sub_0205DE64
	cmp r0, #1
	bne _0205CC46
	add r0, r5, #0
	add r1, r6, #0
	add r2, r4, #0
	bl sub_0205DA34
	cmp r0, #0
	bne _0205CC30
	mov r0, #1
	pop {r4, r5, r6, pc}
_0205CC30:
	cmp r0, #0x20
	bne _0205CC42
	add r0, r5, #0
	bl PlayerAvatar_GetState
	cmp r0, #2
	bne _0205CC42
	mov r0, #1
	pop {r4, r5, r6, pc}
_0205CC42:
	mov r0, #0
	pop {r4, r5, r6, pc}
_0205CC46:
	mov r0, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end sub_0205CBEC

