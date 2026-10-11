#include "constants/easy_chat.h"
#include "constants/items.h"
#include "constants/maps.h"
#include "constants/moves.h"
#include "constants/pokemon.h"
#include "constants/species.h"
	.include "asm/macros.inc"
	.include "unk_020932E0.inc"
	.include "global.inc"
	.public sub_0209417C
	.extern sub_02094150

	.text

	.text
	thumb_func_start sub_0209417C
sub_0209417C: ; 0x0209417C
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x30
	add r6, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	add r0, sp, #0
	add r1, r6, #0
	mov r2, #1
	add r7, r3, #0
	bl sub_02094150
	lsl r0, r5, #0xc
	str r0, [sp, #8]
	lsl r0, r4, #0xc
	str r0, [sp, #0xc]
	mov r0, #0xa
	str r0, [sp, #0x24]
	add r0, sp, #0
	bl Sprite_CreateAffine
	add r4, r0, #0
	mov r1, #1
	bl Sprite_SetAnimActiveFlag
	add r0, r4, #0
	add r1, r7, #0
	bl Sprite_SetAnimCtrlSeq
	add r0, r4, #0
	mov r1, #1
	bl Sprite_SetPriority
	ldr r1, [sp, #0x48]
	add r0, r4, #0
	bl Sprite_SetDrawFlag
	add r0, r4, #0
	add sp, #0x30
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end sub_0209417C

