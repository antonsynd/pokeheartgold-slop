#include "constants/easy_chat.h"
#include "constants/items.h"
#include "constants/maps.h"
#include "constants/moves.h"
#include "constants/pokemon.h"
#include "constants/species.h"
	.include "asm/macros.inc"
	.include "unk_020932E0.inc"
	.include "global.inc"
	.public sub_02094894

	.text

	.text
	thumb_func_start sub_02094894
sub_02094894: ; 0x02094894
	push {r3, lr}
	ldrb r2, [r0, #0xd]
	cmp r1, r2
	blt _020948A0
	mov r0, #3
	pop {r3, pc}
_020948A0:
	mov r2, #0x34
	mul r2, r1
	add r1, r0, r2
	ldr r0, _020948C0 ; =0x000007E8
	ldr r0, [r1, r0]
	cmp r0, #0
	beq _020948BA
	bl Sprite_GetDrawFlag
	cmp r0, #0
	bne _020948BA
	mov r0, #3
	pop {r3, pc}
_020948BA:
	mov r0, #1
	pop {r3, pc}
	nop
_020948C0: .word 0x000007E8
	thumb_func_end sub_02094894

