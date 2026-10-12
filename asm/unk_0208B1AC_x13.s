#include "constants/items.h"
#include "constants/moves.h"
#include "constants/pokemon.h"
#include "constants/ribbon.h"
#include "constants/field_move_response.h"
#include "msgdata/msg/msg_0300.h"
	.include "asm/macros.inc"
	.include "unk_0208B1AC.inc"
	.include "global.inc"
	.public sub_0208BB24
	.extern sub_0208BAD8

	.public gOverlayTemplate_Battle
	.public gNatureStatMods

	.text

	.text
	thumb_func_start sub_0208BB24
sub_0208BB24: ; 0x0208BB24
	push {r0, r1, r2, r3}
	push {r4, lr}
	sub sp, #8
	add r2, sp, #4
	add r1, sp, #0x14
	add r2, #2
	add r3, sp, #4
	add r4, r0, #0
	bl sub_0208BAD8
	add r2, sp, #0
	add r0, r4, #0
	add r1, sp, #0x18
	add r2, #2
	add r3, sp, #0
	bl sub_0208BAD8
	add r0, sp, #0x10
	ldrb r0, [r0, #4]
	add r3, sp, #0
	mov r2, #0
	add r0, #0xd
	lsl r0, r0, #2
	add r1, r4, r0
	ldr r0, _0208BB88 ; =0x00000404
	ldrsh r2, [r3, r2]
	ldr r0, [r1, r0]
	mov r1, #2
	ldrsh r1, [r3, r1]
	bl Sprite_SetPositionXY
	add r0, sp, #0x10
	ldrb r0, [r0, #8]
	add r3, sp, #0
	mov r2, #4
	add r0, #0xd
	lsl r0, r0, #2
	add r1, r4, r0
	ldr r0, _0208BB88 ; =0x00000404
	ldrsh r2, [r3, r2]
	ldr r0, [r1, r0]
	mov r1, #6
	ldrsh r1, [r3, r1]
	bl Sprite_SetPositionXY
	add sp, #8
	pop {r4}
	pop {r3}
	add sp, #0x10
	bx r3
	.balign 4, 0
_0208BB88: .word 0x00000404
	thumb_func_end sub_0208BB24

