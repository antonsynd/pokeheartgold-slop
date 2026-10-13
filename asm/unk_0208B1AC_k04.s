#include "constants/items.h"
#include "constants/moves.h"
#include "constants/pokemon.h"
#include "constants/ribbon.h"
#include "constants/field_move_response.h"
#include "msgdata/msg/msg_0300.h"
	.include "asm/macros.inc"
	.include "unk_0208B1AC.inc"
	.include "global.inc"
	.public sub_0208B400
	.extern _021105B0

	.public gOverlayTemplate_Battle
	.public gNatureStatMods

	.text

	.text
	thumb_func_start sub_0208B400
sub_0208B400: ; 0x0208B400
	push {r4, lr}
	add r4, r0, #0
	mov r0, #0x8b
	lsl r0, r0, #2
	ldr r1, [r4, r0]
	ldrb r0, [r1, #0x11]
	cmp r0, #2
	beq _0208B430
	ldrb r0, [r1, #0x14]
	ldr r1, _0208B43C ; =_021105B0
	ldr r2, _0208B440 ; =_021105B0 + 1
	lsl r3, r0, #1
	ldr r0, _0208B444 ; =0x00000428
	ldrb r1, [r1, r3]
	ldrb r2, [r2, r3]
	ldr r0, [r4, r0]
	bl Sprite_SetPositionXY
	ldr r0, _0208B444 ; =0x00000428
	mov r1, #2
	ldr r0, [r4, r0]
	bl Sprite_SetAnimCtrlSeq
	pop {r4, pc}
_0208B430:
	ldr r0, _0208B444 ; =0x00000428
	mov r1, #0
	ldr r0, [r4, r0]
	bl Sprite_SetDrawFlag
	pop {r4, pc}
	.balign 4, 0
_0208B43C: .word _021105B0
_0208B440: .word _021105B0 + 1
_0208B444: .word 0x00000428
	thumb_func_end sub_0208B400

