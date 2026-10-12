#include "constants/easy_chat.h"
#include "constants/items.h"
#include "constants/maps.h"
#include "constants/moves.h"
#include "constants/species.h"
	.include "asm/macros.inc"
	.include "unk_020957B0.inc"
	.include "global.inc"
	.public sub_02095B04
	.extern sub_02095BF0
	.extern sub_02095CB8

	.text

	.text
	thumb_func_start sub_02095B04
sub_02095B04: ; 0x02095B04
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, sp, #0x10
	mov r4, #0x10
	ldrsb r4, [r5, r4]
	add r7, r0, #0
	add r6, r1, #0
	str r4, [sp]
	bl sub_02095BF0
	mov r1, #0
	str r0, [sp, #4]
	ldrsb r3, [r6, r1]
	add r2, sp, #4
	cmp r0, #4
	strb r3, [r2, #4]
	bhi _02095B84
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02095B32: ; jump table
	.short _02095B84 - _02095B32 - 2 ; case 0
	.short _02095B3C - _02095B32 - 2 ; case 1
	.short _02095B50 - _02095B32 - 2 ; case 2
	.short _02095B64 - _02095B32 - 2 ; case 3
	.short _02095B76 - _02095B32 - 2 ; case 4
_02095B3C:
	mov r0, #1
	ldrsb r0, [r6, r0]
	mov r1, #3
	strb r0, [r2, #4]
	add r0, r7, #0
	add r2, sp, #4
	bl sub_02095CB8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02095B50:
	mov r0, #1
	ldrsb r0, [r6, r0]
	mov r1, #3
	strb r0, [r2, #4]
	add r0, r7, #0
	add r2, sp, #4
	bl sub_02095CB8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02095B64:
	ldrsb r0, [r6, r1]
	mov r1, #5
	strb r0, [r2, #4]
	add r0, r7, #0
	add r2, sp, #4
	bl sub_02095CB8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02095B76:
	ldrsb r0, [r6, r1]
	mov r1, #5
	strb r0, [r2, #4]
	add r0, r7, #0
	add r2, sp, #4
	bl sub_02095CB8
_02095B84:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02095B04

