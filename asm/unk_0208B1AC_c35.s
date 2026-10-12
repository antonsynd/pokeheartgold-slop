#include "constants/items.h"
#include "constants/moves.h"
#include "constants/pokemon.h"
#include "constants/ribbon.h"
#include "constants/field_move_response.h"
#include "msgdata/msg/msg_0300.h"
	.include "asm/macros.inc"
	.include "unk_0208B1AC.inc"
	.include "global.inc"
	.public sub_0208C320
	.extern sub_0208C250

	.public gOverlayTemplate_Battle
	.public gNatureStatMods

	.text

	.text
	thumb_func_start sub_0208C320
sub_0208C320: ; 0x0208C320
	push {r3, r4, r5, r6, r7, lr}
	ldr r7, _0208C378 ; =0x000007C5
	add r5, r0, #0
	mov r4, #0
	add r6, r7, #1
_0208C32A:
	ldrb r1, [r5, r7]
	lsl r0, r1, #3
	add r0, r1, r0
	add r1, r4, r0
	ldrb r0, [r5, r6]
	cmp r1, r0
	bge _0208C35E
	lsl r0, r4, #2
	add r1, r5, r0
	ldr r0, _0208C37C ; =0x000004DC
	ldr r0, [r1, r0]
	mov r1, #1
	bl Sprite_SetDrawFlag
	lsl r1, r4, #0x18
	add r0, r5, #0
	lsr r1, r1, #0x18
	bl sub_0208ACDC
	lsl r2, r4, #0x18
	add r1, r0, #0
	add r0, r5, #0
	lsr r2, r2, #0x18
	bl sub_0208C250
	b _0208C36C
_0208C35E:
	lsl r0, r4, #2
	add r1, r5, r0
	ldr r0, _0208C37C ; =0x000004DC
	ldr r0, [r1, r0]
	mov r1, #0
	bl Sprite_SetDrawFlag
_0208C36C:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #9
	blo _0208C32A
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0208C378: .word 0x000007C5
_0208C37C: .word 0x000004DC
	thumb_func_end sub_0208C320

