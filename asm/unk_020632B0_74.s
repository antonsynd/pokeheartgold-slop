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
	.public sub_020646DC

	.text

	.text
	thumb_func_start sub_020646DC
sub_020646DC: ; 0x020646DC
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x24]
	bl MapObject_AreBitsSetForMovementScriptInit
	cmp r0, #0
	bne _020646EE
	mov r0, #0
	pop {r4, pc}
_020646EE:
	mov r0, #0
	ldr r1, [r4, #8]
	mvn r0, r0
	cmp r1, r0
	bne _020646FC
	bl GF_AssertFail
_020646FC:
	ldr r0, [r4, #8]
	mov r1, #0
	bl sub_0206234C
	add r1, r0, #0
	ldr r0, [r4, #0x24]
	bl MapObject_SetHeldMovement
	mov r0, #4
	str r0, [r4]
	mov r0, #0
	pop {r4, pc}
	thumb_func_end sub_020646DC

