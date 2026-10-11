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
	.public MapObject_GetTrainerNum

	.text

	.text
	thumb_func_start MapObject_GetTrainerNum
MapObject_GetTrainerNum: ; 0x02064508
	push {r3, lr}
	bl MapObject_GetScriptID
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl ScriptNumToTrainerNum
	pop {r3, pc}
	thumb_func_end MapObject_GetTrainerNum

