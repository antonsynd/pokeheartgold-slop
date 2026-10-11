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
	.include "unk_0205FD20.inc"
	.include "global.inc"
	.public sub_02060E54
	.public sub_02060EA4
	.public sub_02060EBC
	.public sub_02060ED4

	.text

	.text
	thumb_func_start sub_02060E54
sub_02060E54: ; 0x02060E54
	push {r3, r4, r5, lr}
	add r4, r1, #0
	add r5, r0, #0
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	bl sub_0205BA54
	cmp r0, #0
	beq _02060E74
	add r0, r5, #0
	bl MapObject_CheckFlag28
	cmp r0, #0
	bne _02060EA0
	mov r0, #1
	pop {r3, r4, r5, pc}
_02060E74:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	bl MetatileBehavior_IsSurfableWater
	cmp r0, #0
	beq _02060E84
	mov r0, #1
	pop {r3, r4, r5, pc}
_02060E84:
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	bl sub_0205B78C
	cmp r0, #0
	beq _02060EA0
	add r0, r5, #0
	bl MapObject_GetSpriteID
	sub r0, #0xb2
	cmp r0, #1
	bhi _02060EA0
	mov r0, #1
	pop {r3, r4, r5, pc}
_02060EA0:
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end sub_02060E54

	thumb_func_start sub_02060EA4
sub_02060EA4: ; 0x02060EA4
	push {r3, lr}
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	bl MetatileBehavior_IsSand
	cmp r0, #0
	beq _02060EB6
	mov r0, #1
	pop {r3, pc}
_02060EB6:
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end sub_02060EA4

	thumb_func_start sub_02060EBC
sub_02060EBC: ; 0x02060EBC
	push {r3, lr}
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	bl MetatileBehavior_IsSnow
	cmp r0, #0
	beq _02060ECE
	mov r0, #1
	pop {r3, pc}
_02060ECE:
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end sub_02060EBC

	thumb_func_start sub_02060ED4
sub_02060ED4: ; 0x02060ED4
	push {r3, lr}
	lsl r0, r1, #0x18
	lsr r0, r0, #0x18
	bl sub_0205B8C4
	cmp r0, #0
	beq _02060EE6
	mov r0, #1
	pop {r3, pc}
_02060EE6:
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end sub_02060ED4

