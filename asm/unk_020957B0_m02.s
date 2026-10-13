#include "constants/easy_chat.h"
#include "constants/items.h"
#include "constants/maps.h"
#include "constants/moves.h"
#include "constants/species.h"
	.include "asm/macros.inc"
	.include "unk_020957B0.inc"
	.include "global.inc"
	.public sub_020958C0
	.extern sub_02095BF0
	.extern sub_02095CB8

	.text

	.text
	thumb_func_start sub_020958C0
sub_020958C0: ; 0x020958C0
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, sp, #0x10
	mov r5, #0x10
	ldrsb r5, [r6, r5]
	add r4, r0, #0
	add r7, r1, #0
	str r5, [sp]
	bl sub_02095BF0
	mov r2, #0
	str r0, [sp, #4]
	ldrsb r3, [r7, r2]
	add r1, sp, #4
	cmp r0, #1
	strb r3, [r1, #4]
	beq _020958F6
	cmp r0, #3
	bne _0209591C
	strb r2, [r1, #4]
	add r0, r4, #0
	mov r1, #3
	add r2, sp, #4
	bl sub_02095CB8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_020958F6:
	ldr r0, [r4, #4]
	ldrb r0, [r0]
	cmp r0, #0x12
	bne _0209590E
	strb r2, [r1, #4]
	add r0, r4, #0
	mov r1, #6
	add r2, sp, #4
	bl sub_02095CB8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0209590E:
	mov r0, #4
	strb r0, [r1, #4]
	add r0, r4, #0
	mov r1, #2
	add r2, sp, #4
	bl sub_02095CB8
_0209591C:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end sub_020958C0

