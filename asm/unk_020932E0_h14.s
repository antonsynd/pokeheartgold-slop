#include "constants/easy_chat.h"
#include "constants/items.h"
#include "constants/maps.h"
#include "constants/moves.h"
#include "constants/pokemon.h"
#include "constants/species.h"
	.include "asm/macros.inc"
	.include "unk_020932E0.inc"
	.include "global.inc"
	.public sub_02094004
	.extern sub_0209417C
	.extern sub_0209428C

	.text

	.text
	thumb_func_start sub_02094004
sub_02094004: ; 0x02094004
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x20
	str r0, [sp]
	ldr r0, _0209413C ; =0x000007E4
	mov r1, #0xe0
	ldr r0, [r5, r0]
	mov r2, #0xb0
	add r0, #0x78
	mov r3, #0x32
	bl sub_0209428C
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0xe0
	mov r2, #0xb0
	mov r3, #4
	bl sub_0209417C
	ldr r1, _02094140 ; =0x000008B4
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	mov r1, #3
	bl Sprite_SetPriority
	ldrb r0, [r5, #0x13]
	cmp r0, #0
	bne _02094048
	ldr r0, _02094140 ; =0x000008B4
	mov r1, #0
	ldr r0, [r5, r0]
	bl Sprite_SetDrawFlag
_02094048:
	mov r3, #0x20
	ldr r0, _0209413C ; =0x000007E4
	str r3, [sp]
	ldr r0, [r5, r0]
	mov r1, #0x90
	add r0, #0x80
	mov r2, #0x10
	bl sub_0209428C
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0x90
	mov r2, #0x10
	mov r3, #2
	bl sub_0209417C
	ldr r1, _02094144 ; =0x000008B8
	mov r3, #0x20
	str r0, [r5, r1]
	str r3, [sp]
	sub r1, #0xd4
	ldr r0, [r5, r1]
	mov r1, #0x10
	add r0, #0x7c
	add r2, r1, #0
	bl sub_0209428C
	mov r0, #1
	mov r1, #0x10
	str r0, [sp]
	add r0, r5, #0
	add r2, r1, #0
	mov r3, #0
	bl sub_0209417C
	ldr r1, _02094148 ; =0x000008BC
	mov r3, #0x32
	str r0, [r5, r1]
	mov r1, #0
	add r0, r5, #0
	add r2, r1, #0
	str r1, [sp]
	bl sub_0209417C
	ldr r1, _0209414C ; =0x000008C4
	mov r2, #0xff
	str r0, [r5, r1]
	ldrb r0, [r5, #0xd]
	sub r1, #0xe0
	ldr r1, [r5, r1]
	add r0, #0x21
	lsl r0, r0, #2
	strb r2, [r1, r0]
	ldrb r0, [r5, #0xd]
	mov r7, #0
	cmp r0, #0
	ble _0209410C
	add r6, r7, #0
	add r4, r7, #0
_020940C0:
	mov r0, #0
	str r0, [sp]
	add r0, r5, #0
	add r1, r6, #0
	mov r2, #0x40
	mov r3, #6
	bl sub_0209417C
	mov r1, #0x8d
	lsl r1, r1, #4
	ldr r1, [r5, r1]
	str r0, [r1, r4]
	mov r0, #0x8d
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	add r1, r0, r4
	mov r0, #0
	mvn r0, r0
	str r0, [r1, #4]
	mov r1, #0x8d
	lsl r1, r1, #4
	ldr r1, [r5, r1]
	ldrb r0, [r5, #0x10]
	add r1, r1, r4
	str r0, [r1, #8]
	mov r0, #0x8d
	lsl r0, r0, #4
	ldr r0, [r5, r0]
	mov r1, #4
	ldr r0, [r0, r4]
	bl Sprite_SetDrawPriority
	ldrb r0, [r5, #0xd]
	add r7, r7, #1
	add r6, #0x24
	add r4, #0xc
	cmp r7, r0
	blt _020940C0
_0209410C:
	mov r0, #0
	strb r0, [r5, #0xe]
	mov r0, #1
	str r0, [sp]
	add r0, r5, #0
	mov r1, #0x14
	mov r2, #0x28
	mov r3, #0x2d
	bl sub_0209417C
	mov r1, #0x23
	lsl r1, r1, #6
	str r0, [r5, r1]
	ldr r0, [r5, r1]
	mov r1, #1
	bl Sprite_SetPriority
	mov r0, #0x23
	lsl r0, r0, #6
	ldr r0, [r5, r0]
	mov r1, #1
	bl Sprite_SetDrawPriority
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0209413C: .word 0x000007E4
_02094140: .word 0x000008B4
_02094144: .word 0x000008B8
_02094148: .word 0x000008BC
_0209414C: .word 0x000008C4
	thumb_func_end sub_02094004

