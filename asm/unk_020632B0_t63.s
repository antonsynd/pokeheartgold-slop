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
	.public sub_02064520
	.extern MapObject_GetTrainerNum
	.extern sub_02064298

	.text

	.text
	thumb_func_start sub_02064520
sub_02064520: ; 0x02064520
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #8
	add r5, r1, #0
	mov r0, #0
	add r4, r2, #0
	add r6, r3, #0
	str r0, [sp, #4]
	add r0, r5, #0
	add r1, sp, #0
	add r2, sp, #4
	mov r3, #1
	bl MapObjectManager_GetNextObjectWithFlagFromIndex
	cmp r0, #0
	beq _02064570
	add r7, sp, #0
_02064540:
	ldr r0, [sp]
	cmp r0, r4
	beq _02064560
	bl sub_02064298
	sub r0, r0, #1
	cmp r0, #1
	bhi _02064560
	ldr r0, [sp]
	bl MapObject_GetTrainerNum
	cmp r6, r0
	bne _02064560
	ldr r0, [sp]
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
_02064560:
	add r0, r5, #0
	add r1, r7, #0
	add r2, sp, #4
	mov r3, #1
	bl MapObjectManager_GetNextObjectWithFlagFromIndex
	cmp r0, #0
	bne _02064540
_02064570:
	bl GF_AssertFail
	mov r0, #0
	add sp, #8
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end sub_02064520

