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
	.public sub_02064618

	.text

	.text
	thumb_func_start sub_02064618
sub_02064618: ; 0x02064618
	push {r4, lr}
	add r4, r0, #0
	bl SysTask_GetData
	add r1, r0, #0
	mov r0, #4
	bl Heap_FreeExplicit
	add r0, r4, #0
	bl SysTask_Destroy
	pop {r4, pc}
	thumb_func_end sub_02064618

