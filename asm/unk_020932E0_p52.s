#include "constants/easy_chat.h"
#include "constants/items.h"
#include "constants/maps.h"
#include "constants/moves.h"
#include "constants/pokemon.h"
#include "constants/species.h"
	.include "macros.inc"
	.include "unk_020932E0.inc"
	.include "global.inc"
	.public sub_02095540
	.extern sub_020943EC

	.text

	.text
	thumb_func_start sub_02095540
sub_02095540: ; 0x02095540
	push {r4, r5, lr}
	sub sp, #0xc
	add r5, r0, #0
	ldrb r0, [r5, #0xf]
	cmp r0, #0
	bne _02095550
	ldrb r0, [r5, #0x10]
	b _02095550
_02095550:
	sub r0, r0, #1
	strb r0, [r5, #0xf]
	ldr r0, _020955E0 ; =0x000008BC
	mov r1, #1
	ldr r0, [r5, r0]
	bl Sprite_SetAnimCtrlSeq
	add r0, r5, #0
	bl sub_020943EC
	ldr r0, _020955E4 ; =0x000005DC
	bl PlaySE
	ldrb r0, [r5, #0xf]
	cmp r0, #0x12
	ldr r0, _020955E8 ; =0x000046B8
	bne _020955BE
	ldr r0, [r5, r0]
	bl sub_02095DD8
	cmp r0, #2
	bne _020955DC
	ldr r0, _020955E8 ; =0x000046B8
	ldr r0, [r5, r0]
	bl sub_02095DE8
	mov r1, #6
	bl _s32_div_f
	lsl r0, r1, #0x18
	lsr r4, r0, #0x18
	ldr r0, _020955E8 ; =0x000046B8
	mov r1, #6
	ldr r0, [r5, r0]
	add r2, r4, #0
	bl sub_02095D40
	mov r0, #0x18
	mul r0, r4
	add r0, #0x14
	lsl r0, r0, #0xc
	str r0, [sp]
	mov r0, #0xa
	lsl r0, r0, #0xe
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	mov r0, #0x23
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	add r1, sp, #0
	bl Sprite_SetMatrix
	add sp, #0xc
	pop {r4, r5, pc}
_020955BE:
	ldr r0, [r5, r0]
	bl sub_02095DD8
	cmp r0, #6
	bne _020955DC
	ldr r0, _020955E8 ; =0x000046B8
	ldr r0, [r5, r0]
	bl sub_02095DE8
	add r2, r0, #0
	ldr r0, _020955E8 ; =0x000046B8
	mov r1, #2
	ldr r0, [r5, r0]
	bl sub_02095D40
_020955DC:
	add sp, #0xc
	pop {r4, r5, pc}
	.balign 4, 0
_020955E0: .word 0x000008BC
_020955E4: .word 0x000005DC
_020955E8: .word 0x000046B8
	thumb_func_end sub_02095540

