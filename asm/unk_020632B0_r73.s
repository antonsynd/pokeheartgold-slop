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
	.public sub_02064694

	.text

	.text
	thumb_func_start sub_02064694
sub_02064694: ; 0x02064694
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x28]
	bl PlayerAvatar_GetMapObject
	bl MapObject_IsMovementPaused
	cmp r0, #0
	bne _020646AA
	mov r0, #0
	pop {r4, pc}
_020646AA:
	ldr r0, [r4, #0x24]
	bl MapObject_GetMovement
	sub r0, #0x33
	cmp r0, #3
	bhi _020646D2
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020646C2: ; jump table
	.short _020646CA - _020646C2 - 2 ; case 0
	.short _020646CA - _020646C2 - 2 ; case 1
	.short _020646CA - _020646C2 - 2 ; case 2
	.short _020646CA - _020646C2 - 2 ; case 3
_020646CA:
	mov r0, #7
	str r0, [r4]
	mov r0, #1
	pop {r4, pc}
_020646D2:
	mov r0, #3
	str r0, [r4]
	mov r0, #1
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end sub_02064694

