#include "constants/items.h"
#include "constants/moves.h"
#include "constants/pokemon.h"
#include "constants/ribbon.h"
#include "constants/field_move_response.h"
#include "msgdata/msg/msg_0300.h"
	.include "asm/macros.inc"
	.include "unk_0208B1AC.inc"
	.include "global.inc"
	.public sub_0208C2A0
	.public sub_0208C320
	.public sub_0208C380
	.extern sub_0208C250

	.public gOverlayTemplate_Battle
	.public gNatureStatMods

	.text

	.text
	thumb_func_start sub_0208C2A0
sub_0208C2A0: ; 0x0208C2A0
	push {r3, r4, r5, r6, r7, lr}
	ldr r6, _0208C30C ; =0x00000404
	add r5, r0, #0
	mov r4, #0x36
	mov r7, #0
_0208C2AA:
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r6]
	add r1, r7, #0
	bl Sprite_SetDrawFlag
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #0x42
	bls _0208C2AA
	ldr r0, _0208C310 ; =0x000007BC
	ldrsb r0, [r5, r0]
	cmp r0, #2
	bne _0208C30A
	ldr r7, _0208C314 ; =0x000004DC
	ldr r6, _0208C318 ; =0x000007C6
	mov r4, #0
_0208C2CE:
	ldrb r0, [r5, r6]
	cmp r4, r0
	bge _0208C2F6
	lsl r0, r4, #2
	add r0, r5, r0
	ldr r0, [r0, r7]
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
_0208C2F6:
	add r0, r4, #1
	lsl r0, r0, #0x10
	lsr r4, r0, #0x10
	cmp r4, #9
	blo _0208C2CE
	ldr r0, _0208C31C ; =0x0000050C
	mov r1, #0
	ldr r0, [r5, r0]
	bl Sprite_SetAnimCtrlSeq
_0208C30A:
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0208C30C: .word 0x00000404
_0208C310: .word 0x000007BC
_0208C314: .word 0x000004DC
_0208C318: .word 0x000007C6
_0208C31C: .word 0x0000050C
	thumb_func_end sub_0208C2A0

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

	thumb_func_start sub_0208C380
sub_0208C380: ; 0x0208C380
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r0, _0208C3BC ; =0x000007C4
	mov r1, #3
	ldrb r6, [r5, r0]
	add r0, r6, #0
	bl _s32_div_f
	add r4, r1, #0
	add r0, r6, #0
	mov r1, #3
	bl _s32_div_f
	add r2, r0, #0
	mov r3, #0x28
	mov r0, #5
	lsl r1, r4, #5
	mul r3, r2
	lsl r0, r0, #8
	add r1, #0x20
	add r3, #0x18
	lsl r1, r1, #0x10
	lsl r2, r3, #0x10
	ldr r0, [r5, r0]
	asr r1, r1, #0x10
	asr r2, r2, #0x10
	bl Sprite_SetPositionXY
	pop {r4, r5, r6, pc}
	nop
_0208C3BC: .word 0x000007C4
	thumb_func_end sub_0208C380

