#include "constants/easy_chat.h"
#include "constants/items.h"
#include "constants/maps.h"
#include "constants/moves.h"
#include "constants/pokemon.h"
#include "constants/species.h"
	.include "asm/macros.inc"
	.include "unk_020932E0.inc"
	.include "global.inc"
	.public sub_020956B8
	.extern sub_020947C0
	.extern sub_02094894

	.text

	.text
	thumb_func_start sub_020956B8
sub_020956B8: ; 0x020956B8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	ldr r0, _02095768 ; =0x000046D8
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _02095764
	sub r0, #0x20
	mov r6, #0
	mvn r6, r6
	ldr r0, [r4, r0]
	add r5, r6, #0
	bl sub_02095DD8
	cmp r0, #6
	bhi _0209573E
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_020956E2: ; jump table
	.short _0209573E - _020956E2 - 2 ; case 0
	.short _0209573E - _020956E2 - 2 ; case 1
	.short _020956F0 - _020956E2 - 2 ; case 2
	.short _0209570C - _020956E2 - 2 ; case 3
	.short _02095730 - _020956E2 - 2 ; case 4
	.short _0209573E - _020956E2 - 2 ; case 5
	.short _020956F0 - _020956E2 - 2 ; case 6
_020956F0:
	ldr r0, _0209576C ; =0x000046B8
	ldrb r5, [r4, #0xf]
	ldr r0, [r4, r0]
	bl sub_02095DE8
	add r7, r0, #0
	add r0, r4, #0
	add r1, r7, #0
	bl sub_020947C0
	cmp r0, #1
	bne _0209573E
	add r6, r7, #0
	b _0209573E
_0209570C:
	ldr r0, _0209576C ; =0x000046B8
	ldr r0, [r4, r0]
	bl sub_02095DE8
	add r7, r0, #0
	add r0, r4, #0
	add r1, r7, #0
	bl sub_02094894
	cmp r0, #1
	bne _0209573E
	lsl r0, r7, #4
	add r1, r4, r0
	ldr r0, _02095770 ; =0x00000884
	ldr r5, [r1, r0]
	add r0, r0, #4
	ldr r6, [r1, r0]
	b _0209573E
_02095730:
	ldr r0, _02095774 ; =0x00004680
	ldr r1, [r4, r0]
	cmp r1, #0
	beq _0209573E
	add r0, r0, #4
	ldrb r5, [r4, #0xf]
	ldr r6, [r4, r0]
_0209573E:
	ldr r0, _02095778 ; =0x000046E4
	ldr r1, [r4, r0]
	cmp r1, r5
	bne _0209574E
	sub r0, r0, #4
	ldr r0, [r4, r0]
	cmp r0, r6
	beq _0209575C
_0209574E:
	ldr r3, _0209577C ; =0x000046DC
	add r0, r5, #0
	ldr r2, [r4, r3]
	sub r3, r3, #4
	ldr r3, [r4, r3]
	add r1, r6, #0
	blx r3
_0209575C:
	ldr r0, _02095778 ; =0x000046E4
	str r5, [r4, r0]
	sub r0, r0, #4
	str r6, [r4, r0]
_02095764:
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02095768: .word 0x000046D8
_0209576C: .word 0x000046B8
_02095770: .word 0x00000884
_02095774: .word 0x00004680
_02095778: .word 0x000046E4
_0209577C: .word 0x000046DC
	thumb_func_end sub_020956B8

