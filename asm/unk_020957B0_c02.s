#include "constants/easy_chat.h"
#include "constants/items.h"
#include "constants/maps.h"
#include "constants/moves.h"
#include "constants/species.h"
	.include "asm/macros.inc"
	.include "unk_020957B0.inc"
	.include "global.inc"
	.public sub_0209592C
	.extern sub_02095BF0
	.extern sub_02095CB8

	.text

	.text
	thumb_func_start sub_0209592C
sub_0209592C: ; 0x0209592C
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, sp, #0x10
	mov r5, #0x10
	ldrsb r5, [r6, r5]
	add r4, r0, #0
	add r7, r1, #0
	str r5, [sp]
	bl sub_02095BF0
	str r0, [sp, #4]
	mov r1, #1
	ldrsb r1, [r7, r1]
	cmp r1, #0
	bne _02095952
	mov r2, #0
	add r1, sp, #4
	strb r2, [r1, #4]
	b _02095962
_02095952:
	cmp r1, #1
	add r1, sp, #4
	bne _0209595E
	mov r2, #2
	strb r2, [r1, #4]
	b _02095962
_0209595E:
	mov r2, #3
	strb r2, [r1, #4]
_02095962:
	cmp r0, #1
	beq _02095972
	cmp r0, #2
	beq _0209599A
	cmp r0, #4
	beq _020959C2
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_02095972:
	ldr r0, [r4, #4]
	add r2, sp, #4
	ldrb r0, [r0]
	cmp r0, #0x12
	bne _0209598E
	mov r1, #0
	add r0, sp, #4
	strb r1, [r0, #4]
	add r0, r4, #0
	mov r1, #6
	bl sub_02095CB8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0209598E:
	add r0, r4, #0
	mov r1, #2
	bl sub_02095CB8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_0209599A:
	ldr r0, [r4, #4]
	add r2, sp, #4
	ldrb r0, [r0]
	cmp r0, #0x12
	bne _020959B6
	mov r1, #0
	add r0, sp, #4
	strb r1, [r0, #4]
	add r0, r4, #0
	mov r1, #6
	bl sub_02095CB8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_020959B6:
	add r0, r4, #0
	mov r1, #2
	bl sub_02095CB8
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
_020959C2:
	ldrb r0, [r4, #2]
	cmp r0, #0
	beq _020959D2
	add r0, r4, #0
	mov r1, #1
	add r2, sp, #4
	bl sub_02095CB8
_020959D2:
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end sub_0209592C

