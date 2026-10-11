#include "constants/easy_chat.h"
#include "constants/items.h"
#include "constants/maps.h"
#include "constants/moves.h"
#include "constants/species.h"
	.include "asm/macros.inc"
	.include "unk_020957B0.inc"
	.include "global.inc"
	.public sub_02095A7C
	.extern sub_02095BF0
	.extern sub_02095CB8

	.text

	.text
	thumb_func_start sub_02095A7C
sub_02095A7C: ; 0x02095A7C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r5, sp, #0x10
	mov r4, #0x10
	ldrsb r4, [r5, r4]
	add r6, r0, #0
	add r7, r1, #0
	str r4, [sp]
	bl sub_02095BF0
	mov r1, #0
	str r0, [sp, #4]
	ldrsb r2, [r7, r1]
	add r1, sp, #4
	cmp r0, #4
	strb r2, [r1, #4]
	bhi _02095AF4
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_02095AAA: ; jump table
	.short _02095AF4 - _02095AAA - 2 ; case 0
	.short _02095AF4 - _02095AAA - 2 ; case 1
	.short _02095AF4 - _02095AAA - 2 ; case 2
	.short _02095AB4 - _02095AAA - 2 ; case 3
	.short _02095AD6 - _02095AAA - 2 ; case 4
_02095AB4:
	ldr r0, [r6, #4]
	add r2, sp, #4
	ldrb r0, [r0]
	cmp r0, #0x12
	bne _02095ACA
	add r0, r6, #0
	mov r1, #6
	bl sub_02095CB8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02095ACA:
	add r0, r6, #0
	mov r1, #2
	bl sub_02095CB8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02095AD6:
	ldr r0, [r6, #4]
	add r2, sp, #4
	ldrb r0, [r0]
	cmp r0, #0x12
	bne _02095AEC
	add r0, r6, #0
	mov r1, #6
	bl sub_02095CB8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02095AEC:
	add r0, r6, #0
	mov r1, #2
	bl sub_02095CB8
_02095AF4:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_02095A7C

