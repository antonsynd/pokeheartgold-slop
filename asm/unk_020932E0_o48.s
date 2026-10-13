#include "constants/easy_chat.h"
#include "constants/items.h"
#include "constants/maps.h"
#include "constants/moves.h"
#include "constants/pokemon.h"
#include "constants/species.h"
	.include "asm/macros.inc"
	.include "unk_020932E0.inc"
	.include "global.inc"
	.public sub_0209515C

	.text

	.text
	thumb_func_start sub_0209515C
sub_0209515C: ; 0x0209515C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r7, #0x66
	mov r6, #0
	add r4, r5, #0
	lsl r7, r7, #2
_02095168:
	ldr r0, [r4, r7]
	cmp r0, #0
	beq _02095172
	bl Sprite_Delete
_02095172:
	add r6, r6, #1
	add r4, #0x34
	cmp r6, #0x1e
	blt _02095168
	ldrb r0, [r5, #0xd]
	mov r6, #0
	cmp r0, #0
	ble _0209519A
	ldr r7, _02095220 ; =0x000007E8
	add r4, r5, #0
_02095186:
	ldr r0, [r4, r7]
	cmp r0, #0
	beq _02095190
	bl Sprite_Delete
_02095190:
	ldrb r0, [r5, #0xd]
	add r6, r6, #1
	add r4, #0x34
	cmp r6, r0
	blt _02095186
_0209519A:
	mov r6, #0
	cmp r0, #0
	ble _020951BC
	mov r7, #0x8d
	add r4, r6, #0
	lsl r7, r7, #4
_020951A6:
	ldr r0, [r5, r7]
	ldr r0, [r0, r4]
	cmp r0, #0
	beq _020951B2
	bl Sprite_Delete
_020951B2:
	ldrb r0, [r5, #0xd]
	add r6, r6, #1
	add r4, #0xc
	cmp r6, r0
	blt _020951A6
_020951BC:
	ldr r0, _02095224 ; =0x000008B4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _020951C8
	bl Sprite_Delete
_020951C8:
	ldr r0, _02095228 ; =0x000008BC
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _020951D4
	bl Sprite_Delete
_020951D4:
	ldr r0, _0209522C ; =0x000008B8
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _020951E0
	bl Sprite_Delete
_020951E0:
	ldr r0, _02095230 ; =0x000008C4
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _020951EC
	bl Sprite_Delete
_020951EC:
	mov r0, #0x23
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	cmp r0, #0
	beq _020951FA
	bl Sprite_Delete
_020951FA:
	ldrb r1, [r5, #0xd]
	mov r0, #3
	mov r4, #0
	sub r0, r0, r1
	lsl r0, r0, #0x18
	lsr r6, r0, #0x18
	cmp r6, #0
	ble _0209521E
	ldr r7, _02095234 ; =0x000008C8
_0209520C:
	ldr r0, [r5, r7]
	cmp r0, #0
	beq _02095216
	bl Sprite_Delete
_02095216:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, r6
	blt _0209520C
_0209521E:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02095220: .word 0x000007E8
_02095224: .word 0x000008B4
_02095228: .word 0x000008BC
_0209522C: .word 0x000008B8
_02095230: .word 0x000008C4
_02095234: .word 0x000008C8
	thumb_func_end sub_0209515C

