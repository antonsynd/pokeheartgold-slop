#include "constants/items.h"
#include "constants/moves.h"
#include "constants/pokemon.h"
#include "constants/ribbon.h"
#include "constants/field_move_response.h"
#include "msgdata/msg/msg_0300.h"
	.include "asm/macros.inc"
	.include "unk_0208B1AC.inc"
	.include "global.inc"
	.public sub_0208C0E8
	.extern sub_0208C0A4

	.public gOverlayTemplate_Battle
	.public gNatureStatMods

	.text

	.text
	thumb_func_start sub_0208C0E8
sub_0208C0E8: ; 0x0208C0E8
	push {r3, r4, r5, lr}
	add r4, r0, #0
	ldr r0, _0208C1EC ; =0x00000275
	mov r1, #0x58
	ldrb r0, [r4, r0]
	add r2, r1, #0
	bl sub_0208C0A4
	add r5, r0, #0
	ldr r0, _0208C1EC ; =0x00000275
	mov r1, #0x31
	ldrb r0, [r4, r0]
	mov r2, #0x49
	bl sub_0208C0A4
	add r2, r0, #0
	mov r0, #0x13
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	add r1, r5, #0
	bl Sprite_SetPositionXY
	ldr r0, _0208C1F0 ; =0x00000276
	mov r1, #0x6e
	ldrb r0, [r4, r0]
	mov r2, #0x58
	bl sub_0208C0A4
	add r5, r0, #0
	ldr r0, _0208C1F0 ; =0x00000276
	mov r1, #0x41
	ldrb r0, [r4, r0]
	mov r2, #0x49
	bl sub_0208C0A4
	add r2, r0, #0
	ldr r0, _0208C1F4 ; =0x000004C4
	add r1, r5, #0
	ldr r0, [r4, r0]
	bl Sprite_SetPositionXY
	ldr r0, _0208C1F8 ; =0x00000277
	mov r1, #0x67
	ldrb r0, [r4, r0]
	mov r2, #0x58
	bl sub_0208C0A4
	add r5, r0, #0
	ldr r0, _0208C1F8 ; =0x00000277
	mov r1, #0x5c
	ldrb r0, [r4, r0]
	mov r2, #0x49
	bl sub_0208C0A4
	add r2, r0, #0
	ldr r0, _0208C1FC ; =0x000004C8
	add r1, r5, #0
	ldr r0, [r4, r0]
	bl Sprite_SetPositionXY
	mov r0, #0x9e
	lsl r0, r0, #2
	ldrb r0, [r4, r0]
	mov r1, #0x48
	mov r2, #0x57
	bl sub_0208C0A4
	add r5, r0, #0
	mov r0, #0x9e
	lsl r0, r0, #2
	ldrb r0, [r4, r0]
	mov r1, #0x5c
	mov r2, #0x49
	bl sub_0208C0A4
	add r2, r0, #0
	ldr r0, _0208C200 ; =0x000004CC
	add r1, r5, #0
	ldr r0, [r4, r0]
	bl Sprite_SetPositionXY
	ldr r0, _0208C204 ; =0x00000279
	mov r1, #0x41
	ldrb r0, [r4, r0]
	mov r2, #0x57
	bl sub_0208C0A4
	add r5, r0, #0
	ldr r0, _0208C204 ; =0x00000279
	mov r1, #0x41
	ldrb r0, [r4, r0]
	mov r2, #0x49
	bl sub_0208C0A4
	add r2, r0, #0
	mov r0, #0x4d
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	add r1, r5, #0
	bl Sprite_SetPositionXY
	mov r0, #0x13
	lsl r0, r0, #6
	ldr r0, [r4, r0]
	mov r1, #1
	bl Sprite_SetDrawFlag
	ldr r0, _0208C1F4 ; =0x000004C4
	mov r1, #1
	ldr r0, [r4, r0]
	bl Sprite_SetDrawFlag
	ldr r0, _0208C1FC ; =0x000004C8
	mov r1, #1
	ldr r0, [r4, r0]
	bl Sprite_SetDrawFlag
	ldr r0, _0208C200 ; =0x000004CC
	mov r1, #1
	ldr r0, [r4, r0]
	bl Sprite_SetDrawFlag
	mov r0, #0x4d
	lsl r0, r0, #4
	ldr r0, [r4, r0]
	mov r1, #1
	bl Sprite_SetDrawFlag
	pop {r3, r4, r5, pc}
	nop
_0208C1EC: .word 0x00000275
_0208C1F0: .word 0x00000276
_0208C1F4: .word 0x000004C4
_0208C1F8: .word 0x00000277
_0208C1FC: .word 0x000004C8
_0208C200: .word 0x000004CC
_0208C204: .word 0x00000279
	thumb_func_end sub_0208C0E8

