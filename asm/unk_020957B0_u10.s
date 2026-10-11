#include "constants/easy_chat.h"
#include "constants/items.h"
#include "constants/maps.h"
#include "constants/moves.h"
#include "constants/species.h"
	.include "asm/macros.inc"
	.include "unk_020957B0.inc"
	.include "global.inc"
	.public sub_02095D40
	.public sub_02095D88
	.extern sub_02095C90

	.text

	.text
	thumb_func_start sub_02095D40
sub_02095D40: ; 0x02095D40
	push {r4, r5, r6, lr}
	add r5, r0, #0
	add r6, r2, #0
	bl sub_02095C90
	ldrb r0, [r5]
	ldr r2, [r5, #0xc]
	lsl r1, r0, #2
	add r4, r2, r1
	mov r1, #0xc
	ldr r2, [r5, #8]
	mul r1, r0
	ldr r5, [r2, r1]
	ldrb r0, [r5, #2]
	cmp r6, r0
	blo _02095D64
	bl GF_AssertFail
_02095D64:
	strb r6, [r4, #2]
	ldrb r1, [r4, #2]
	ldrb r0, [r5, #2]
	cmp r1, r0
	blo _02095D72
	mov r0, #0
	strb r0, [r4, #2]
_02095D72:
	ldrb r0, [r4, #2]
	ldrb r1, [r5]
	bl _s32_div_f
	strb r1, [r4]
	ldrb r0, [r4, #2]
	ldrb r1, [r5]
	bl _s32_div_f
	strb r0, [r4, #1]
	pop {r4, r5, r6, pc}
	thumb_func_end sub_02095D40

	thumb_func_start sub_02095D88
sub_02095D88: ; 0x02095D88
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r4, r0, #0
	str r2, [sp, #8]
	ldrb r7, [r4]
	ldr r2, [r4, #0xc]
	mov ip, r1
	lsl r1, r7, #2
	add r5, r2, r1
	mov r1, #0xc
	add r3, r7, #0
	mul r3, r1
	ldr r2, [r4, #8]
	ldrb r1, [r5, #2]
	add r6, r2, r3
	str r1, [sp, #4]
	ldr r1, [sp, #8]
	str r1, [sp]
	ldr r2, [r2, r3]
	ldr r6, [r6, #4]
	add r1, r5, #0
	mov r3, ip
	blx r6
	ldrb r0, [r4]
	cmp r7, r0
	beq _02095DC2
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02095DC2:
	ldrb r1, [r5, #2]
	ldr r0, [sp, #4]
	cmp r0, r1
	beq _02095DD0
	add sp, #0xc
	mov r0, #1
	pop {r4, r5, r6, r7, pc}
_02095DD0:
	mov r0, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end sub_02095D88

