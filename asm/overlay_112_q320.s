#include "config.h"
	.include "macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021EE7A8
	.extern ov112_021EE8BC
	.extern ov112_021EE970
	.extern ov112_021EE9A4
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021EE7A8
ov112_021EE7A8: ; 0x021EE7A8
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	bl SaveArray_PCStorage_Get
	str r0, [sp, #4]
	mov r0, #0x9a
	bl AllocMonZeroed
	add r4, r0, #0
	bl Mon_GetBoxMon
	add r6, r0, #0
	ldr r0, _021EE89C ; =0x0001E440
	add r2, sp, #8
	ldr r0, [r5, r0]
	add r1, sp, #8
	add r2, #2
	bl sub_02032688
	add r0, sp, #8
	ldrh r0, [r0, #2]
	str r0, [sp, #0x10]
	mov r0, #0
	str r0, [sp, #0xc]
	ldr r0, _021EE8A0 ; =0x000010E7
	ldrb r0, [r5, r0]
	lsl r0, r0, #0x1d
	lsr r0, r0, #0x1f
	bne _021EE81E
	ldr r0, _021EE89C ; =0x0001E440
	add r1, r6, #0
	ldr r0, [r5, r0]
	bl Pokewalker_TryGetBoxMon
	add r7, r0, #0
	beq _021EE804
	ldr r2, _021EE8A4 ; =0x0001EC7C
	add r0, r6, #0
	ldr r2, [r5, r2]
	add r1, r4, #0
	bl ov112_021EE8BC
	ldr r1, _021EE8A8 ; =0x0001F374
	strh r0, [r5, r1]
_021EE804:
	ldr r1, _021EE8A4 ; =0x0001EC7C
	add r0, r6, #0
	ldr r1, [r5, r1]
	bl ov112_021EE970
	ldr r0, _021EE8A4 ; =0x0001EC7C
	mov r1, #0
	str r1, [r5, r0]
	ldr r0, _021EE89C ; =0x0001E440
	ldr r0, [r5, r0]
	bl Pokewalker_ClearBoxMon
	b _021EE854
_021EE81E:
	ldr r7, _021EE8AC ; =0x00009D44
	bl MTRandom
	mov r1, #0x18
	bl _u32_div_f
	add r3, r1, #0
	mov r0, #0
	str r0, [sp]
	ldr r1, _021EE8B0 ; =0x0001E438
	add r0, r4, #0
	ldr r1, [r5, r1]
	add r2, r5, r7
	bl ov112_021EE9A4
	add r0, r4, #0
	bl Mon_GetBoxMon
	mov r1, #0x9a
	str r1, [sp]
	ldr r1, _021EE8B0 ; =0x0001E438
	mov r2, #0
	ldr r1, [r5, r1]
	mov r3, #0xe9
	bl BoxMonSetTrainerMemo
	mov r7, #1
_021EE854:
	cmp r7, #0
	beq _021EE890
	ldr r0, [sp, #4]
	add r1, sp, #0x10
	add r2, sp, #0xc
	bl PCStorage_FindFirstEmptySlot
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	add r3, r6, #0
	bl PCStorage_PlaceMonInBoxByIndexPair
	ldr r0, [sp, #4]
	ldr r1, [sp, #0x10]
	ldr r2, [sp, #0xc]
	bl PCStorage_GetMonByIndexPair
	ldr r1, _021EE8B4 ; =0x0001E430
	str r0, [r5, r1]
	add r1, #0x14
	ldr r0, [r5, r1]
	add r1, r4, #0
	bl Pokedex_SetMonSeenFlag
	ldr r0, _021EE8B8 ; =0x0001E444
	add r1, r4, #0
	ldr r0, [r5, r0]
	bl Pokedex_SetMonCaughtFlag
_021EE890:
	add r0, r4, #0
	bl Heap_Free
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	nop
_021EE89C: .word 0x0001E440
_021EE8A0: .word 0x000010E7
_021EE8A4: .word 0x0001EC7C
_021EE8A8: .word 0x0001F374
_021EE8AC: .word 0x00009D44
_021EE8B0: .word 0x0001E438
_021EE8B4: .word 0x0001E430
_021EE8B8: .word 0x0001E444
	thumb_func_end ov112_021EE7A8

