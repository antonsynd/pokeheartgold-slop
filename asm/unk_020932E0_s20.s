#include "constants/easy_chat.h"
#include "constants/items.h"
#include "constants/maps.h"
#include "constants/moves.h"
#include "constants/pokemon.h"
#include "constants/species.h"
	.include "asm/macros.inc"
	.include "unk_020932E0.inc"
	.include "global.inc"
	.public sub_020942B0
	.extern sub_02094150
	.extern sub_0209428C

	.text

	.text
	thumb_func_start sub_020942B0
sub_020942B0: ; 0x020942B0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x48
	str r0, [sp, #4]
	ldr r1, [sp, #4]
	add r0, sp, #0x18
	mov r2, #1
	bl sub_02094150
	mov r6, #0
	mov r0, #0x28
	ldr r4, [sp, #4]
	str r6, [sp, #0x10]
	str r0, [sp, #0xc]
	add r7, r6, #0
_020942CC:
	mov r0, #0
	str r0, [sp, #0x14]
	ldr r0, [sp, #0xc]
	mov r5, #0x14
	lsl r0, r0, #0xc
	str r0, [sp, #8]
_020942D8:
	mov r0, #0x18
	str r0, [sp]
	ldr r1, [sp, #4]
	ldr r0, _020943E8 ; =0x000007E4
	ldr r2, [sp, #0xc]
	ldr r0, [r1, r0]
	add r1, r5, #0
	add r0, r0, r7
	mov r3, #0x18
	bl sub_0209428C
	lsl r0, r5, #0xc
	str r0, [sp, #0x20]
	ldr r0, [sp, #8]
	str r0, [sp, #0x24]
	mov r0, #0x66
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	cmp r0, #0
	bne _0209430C
	add r0, sp, #0x18
	bl Sprite_CreateAffine
	mov r1, #0x66
	lsl r1, r1, #2
	str r0, [r4, r1]
_0209430C:
	mov r0, #0x66
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl Sprite_SetAnimActiveFlag
	mov r0, #0x66
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	add r1, r6, #7
	bl Sprite_SetAnimCtrlSeq
	mov r0, #0x66
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #1
	bl Sprite_SetPriority
	mov r0, #0x66
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl Sprite_SetDrawFlag
	mov r0, #0x66
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #6
	bl Sprite_SetDrawPriority
	ldr r0, [sp, #0x14]
	add r7, r7, #4
	add r0, r0, #1
	add r4, #0x34
	add r6, r6, #1
	add r5, #0x18
	str r0, [sp, #0x14]
	cmp r0, #6
	blt _020942D8
	ldr r0, [sp, #0xc]
	add r0, #0x18
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	add r0, r0, #1
	str r0, [sp, #0x10]
	cmp r0, #5
	blt _020942CC
	mov r0, #5
	lsl r0, r0, #0xe
	str r0, [sp, #0x20]
	lsl r0, r0, #1
	str r0, [sp, #0x24]
	mov r1, #0x7b
	ldr r0, [sp, #4]
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	cmp r0, #0
	bne _0209438E
	add r0, sp, #0x18
	bl Sprite_CreateAffine
	mov r2, #0x7b
	ldr r1, [sp, #4]
	lsl r2, r2, #4
	str r0, [r1, r2]
_0209438E:
	mov r1, #0x7b
	ldr r0, [sp, #4]
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	mov r1, #1
	bl Sprite_SetAnimActiveFlag
	mov r1, #0x7b
	ldr r0, [sp, #4]
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	mov r1, #0x30
	bl Sprite_SetAnimCtrlSeq
	mov r1, #0x7b
	ldr r0, [sp, #4]
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	mov r1, #1
	bl Sprite_SetPriority
	mov r1, #0x7b
	ldr r0, [sp, #4]
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	mov r1, #0
	bl Sprite_SetDrawFlag
	mov r1, #0x7b
	ldr r0, [sp, #4]
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	mov r1, #8
	bl Sprite_SetDrawPriority
	mov r1, #0x7b
	ldr r0, [sp, #4]
	lsl r1, r1, #4
	ldr r0, [r0, r1]
	mov r1, #1
	bl Sprite_SetOamMode
	add sp, #0x48
	pop {r3, r4, r5, r6, r7, pc}
	nop
_020943E8: .word 0x000007E4
	thumb_func_end sub_020942B0

