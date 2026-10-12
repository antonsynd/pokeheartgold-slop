#include "constants/easy_chat.h"
#include "constants/items.h"
#include "constants/maps.h"
#include "constants/moves.h"
#include "constants/species.h"
	.include "asm/macros.inc"
	.include "unk_020957B0.inc"
	.include "global.inc"
	.public sub_02095838
	.public sub_020958C0
	.extern sub_02095BF0
	.extern sub_02095CB8

	.text

	.text
	thumb_func_start sub_02095838
sub_02095838: ; 0x02095838
	push {r3, r4}
	ldr r0, [r3]
	cmp r0, #4
	bhi _020958BA
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_0209584C: ; jump table
	.short _020958BA - _0209584C - 2 ; case 0
	.short _0209588C - _0209584C - 2 ; case 1
	.short _020958A8 - _0209584C - 2 ; case 2
	.short _02095870 - _0209584C - 2 ; case 3
	.short _02095856 - _0209584C - 2 ; case 4
_02095856:
	mov r0, #2
	strb r0, [r1]
	mov r0, #0
	strb r0, [r1, #1]
	ldrsb r4, [r1, r0]
	mov r0, #1
	ldrsb r3, [r1, r0]
	ldrb r0, [r2]
	mul r0, r3
	add r0, r4, r0
	strb r0, [r1, #2]
	pop {r3, r4}
	bx lr
_02095870:
	mov r0, #2
	strb r0, [r1]
	mov r0, #4
	strb r0, [r1, #1]
	mov r0, #0
	ldrsb r4, [r1, r0]
	mov r0, #1
	ldrsb r3, [r1, r0]
	ldrb r0, [r2]
	mul r0, r3
	add r0, r4, r0
	strb r0, [r1, #2]
	pop {r3, r4}
	bx lr
_0209588C:
	mov r0, #5
	strb r0, [r1]
	ldrb r0, [r3, #4]
	strb r0, [r1, #1]
	mov r0, #0
	ldrsb r4, [r1, r0]
	mov r0, #1
	ldrsb r3, [r1, r0]
	ldrb r0, [r2]
	mul r0, r3
	add r0, r4, r0
	strb r0, [r1, #2]
	pop {r3, r4}
	bx lr
_020958A8:
	mov r0, #0
	strb r0, [r1]
	ldrb r0, [r3, #4]
	strb r0, [r1, #1]
	mov r0, #1
	ldrsb r3, [r1, r0]
	ldrb r0, [r2]
	mul r0, r3
	strb r0, [r1, #2]
_020958BA:
	pop {r3, r4}
	bx lr
	.balign 4, 0
	thumb_func_end sub_02095838

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

