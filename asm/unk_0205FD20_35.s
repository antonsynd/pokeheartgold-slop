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
	.public sub_02060DEC
	.extern _020FD4BC
	.extern _020FD4CC

	.text

	.text
	thumb_func_start sub_02060DEC
sub_02060DEC: ; 0x02060DEC
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	add r6, r1, #0
	add r7, r2, #0
	add r5, r3, #0
	bl sub_0205F8D0
	cmp r0, #0
	bne _02060E46
	add r0, r4, #0
	bl MapObject_GetFieldSystem
	str r0, [sp]
	add r0, r4, #0
	bl sub_0205F504
	lsl r0, r0, #0x18
	lsr r4, r0, #0x18
	ldr r0, [sp]
	add r1, r6, #0
	add r2, r7, #0
	bl GetMetatileBehavior
	add r6, r0, #0
	bl GetMetatileBehavior_None
	cmp r6, r0
	bne _02060E28
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02060E28:
	ldr r1, _02060E4C ; =_020FD4CC
	lsl r5, r5, #2
	ldr r1, [r1, r5]
	add r0, r4, #0
	blx r1
	cmp r0, #1
	beq _02060E42
	ldr r1, _02060E50 ; =_020FD4BC
	add r0, r6, #0
	ldr r1, [r1, r5]
	blx r1
	cmp r0, #1
	bne _02060E46
_02060E42:
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_02060E46:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02060E4C: .word _020FD4CC
_02060E50: .word _020FD4BC
	thumb_func_end sub_02060DEC

