#include "constants/abilities.h"
#include "constants/species.h"
#include "constants/sndseq.h"
#include "constants/items.h"
#include "constants/pokemon.h"
#include "constants/std_script.h"
	.include "asm/macros.inc"
	.include "overlay_02.inc"
	.include "global.inc"
	.public OpenAlphHiddenRoom
	.extern ov02_022467E8
	.extern ov02_02246818

	.text

	.text
	thumb_func_start OpenAlphHiddenRoom
OpenAlphHiddenRoom: ; 0x022467C4
	push {r3, r4, r5, lr}
	add r5, r1, #0
	add r4, r0, #0
	bl TaskManager_GetFieldSystem
	lsl r1, r5, #0x18
	lsr r1, r1, #0x18
	bl ov02_022467E8
	add r2, r0, #0
	ldr r1, _022467E4 ; =ov02_02246818
	add r0, r4, #0
	bl TaskManager_Call
	pop {r3, r4, r5, pc}
	nop
_022467E4: .word ov02_02246818
	thumb_func_end OpenAlphHiddenRoom

