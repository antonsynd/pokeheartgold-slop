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
	.public MapObjectMovementCmd046_Step0
	.extern sub_02062958

	.text
	thumb_func_start MapObjectMovementCmd046_Step0
MapObjectMovementCmd046_Step0: ; 0x02062AFC
	push {lr}
	sub sp, #0xc
	mov r1, #2
	add r3, r1, #0
	str r1, [sp]
	mov r2, #0
	str r2, [sp, #4]
	add r3, #0xfe
	str r3, [sp, #8]
	mov r3, #0x10
	bl sub_02062958
	mov r0, #1
	add sp, #0xc
	pop {pc}
	.balign 4, 0
	thumb_func_end MapObjectMovementCmd046_Step0

