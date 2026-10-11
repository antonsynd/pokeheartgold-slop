#include "constants/items.h"
#include "constants/moves.h"
#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "unk_020755E8.inc"
	.include "global.inc"
	.public sub_020757AC
	.extern _020FFEC4
	.extern _020FFEC6

	.text
	thumb_func_start sub_020757AC
sub_020757AC: ; 0x020757AC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r0, #0xb8
	ldr r0, [r0]
	cmp r0, #0
	bne _020757BC
	bl GF_AssertFail
_020757BC:
	add r0, r5, #0
	add r0, #0xb4
	ldr r0, [r0]
	cmp r0, #0
	bne _020757CA
	bl GF_AssertFail
_020757CA:
	add r0, r5, #0
	add r0, #0x8b
	ldrb r0, [r0]
	cmp r0, #1
	beq _020757DA
	cmp r0, #2
	beq _020757DE
	b _020757E2
_020757DA:
	mov r4, #0
	b _020757E6
_020757DE:
	mov r4, #1
	b _020757E6
_020757E2:
	bl GF_AssertFail
_020757E6:
	ldr r1, _020757FC ; =_020FFEC4
	lsl r3, r4, #2
	ldr r2, _02075800 ; =_020FFEC6
	add r5, #0xb4
	ldrsh r1, [r1, r3]
	ldrsh r2, [r2, r3]
	ldr r0, [r5]
	bl ManagedSprite_SetPositionXY
	pop {r3, r4, r5, pc}
	nop
_020757FC: .word _020FFEC4
_02075800: .word _020FFEC6
	thumb_func_end sub_020757AC

