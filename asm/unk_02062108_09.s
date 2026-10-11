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
	.public MovementScriptMachine
	.extern sMovementScriptMachineStateFuncs

	.text
	thumb_func_start MovementScriptMachine
MovementScriptMachine: ; 0x0206229C
	push {r3, r4, r5, lr}
	ldr r4, _020622B4 ; =sMovementScriptMachineStateFuncs
	add r5, r1, #0
_020622A2:
	ldr r1, [r5]
	add r0, r5, #0
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	blx r1
	cmp r0, #1
	beq _020622A2
	pop {r3, r4, r5, pc}
	nop
_020622B4: .word sMovementScriptMachineStateFuncs
	thumb_func_end MovementScriptMachine

