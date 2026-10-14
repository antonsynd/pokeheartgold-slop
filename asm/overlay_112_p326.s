#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021EEAF0
	.extern ov112_021EE9A4
	.extern ov112_021EE9E4
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021EEAF0
ov112_021EEAF0: ; 0x021EEAF0
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x28
	add r5, r0, #0
	ldr r0, [r5, #0x20]
	add r6, r1, #0
	bl SaveArray_PCStorage_Get
	add r7, r0, #0
	mov r0, #0x9a
	bl AllocMonZeroed
	add r4, r0, #0
	ldr r0, _021EECC4 ; =0x0001E438
	mov r1, #0x9a
	ldr r0, [r5, r0]
	bl PlayerProfile_GetPlayerName_NewString
	str r0, [sp, #0xc]
	ldr r0, _021EECC8 ; =0x0001E440
	add r2, sp, #0x18
	ldr r0, [r5, r0]
	add r1, sp, #0x1c
	add r2, #2
	bl sub_02032688
	cmp r6, #0
	beq _021EEB2C
	add r0, sp, #0x18
	ldrh r0, [r0, #2]
	b _021EEB2E
_021EEB2C:
	mov r0, #0
_021EEB2E:
	str r0, [sp, #0x24]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0x20]
	ldr r0, _021EECCC ; =0x00009D7C
	add r6, r5, r0
_021EEB3A:
	ldrh r0, [r6]
	cmp r0, #0
	beq _021EEBA4
	bl MTRandom
	mov r1, #0x18
	bl _u32_div_f
	add r3, r1, #0
	mov r0, #0
	str r0, [sp]
	ldr r1, _021EECC4 ; =0x0001E438
	add r0, r4, #0
	ldr r1, [r5, r1]
	add r2, r6, #0
	bl ov112_021EE9A4
	add r0, r4, #0
	bl Mon_GetBoxMon
	mov r1, #0x9a
	str r1, [sp]
	ldr r1, _021EECC4 ; =0x0001E438
	mov r2, #0
	ldr r1, [r5, r1]
	mov r3, #0xe9
	bl BoxMonSetTrainerMemo
	add r0, r4, #0
	bl Mon_GetBoxMon
	str r0, [sp, #0x14]
	add r0, r7, #0
	add r1, sp, #0x24
	add r2, sp, #0x20
	bl PCStorage_FindFirstEmptySlot
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x20]
	ldr r3, [sp, #0x14]
	add r0, r7, #0
	bl PCStorage_PlaceMonInBoxByIndexPair
	ldr r0, _021EECD0 ; =0x0001E444
	add r1, r4, #0
	ldr r0, [r5, r0]
	bl Pokedex_SetMonSeenFlag
	ldr r0, _021EECD0 ; =0x0001E444
	add r1, r4, #0
	ldr r0, [r5, r0]
	bl Pokedex_SetMonCaughtFlag
_021EEBA4:
	ldr r0, [sp, #8]
	add r6, #0x10
	add r0, r0, #1
	str r0, [sp, #8]
	cmp r0, #3
	blt _021EEB3A
	ldr r0, _021EECD4 ; =0x0000AABC
	ldrb r0, [r5, r0]
	lsl r0, r0, #0x1a
	lsr r0, r0, #0x1f
	beq _021EECB2
	mov r0, #0x10
	mov r1, #0x9a
	bl String_New
	mov r2, #0xad
	lsl r2, r2, #8
	add r1, r5, r2
	str r1, [sp, #0x10]
	ldrh r1, [r1]
	str r0, [sp, #4]
	cmp r1, #0
	beq _021EECAC
	add r2, #0x1e
	add r1, r5, r2
	bl CopyU16ArrayToString
	add r0, r4, #0
	bl ZeroMonData
	add r0, r4, #0
	bl Mon_GetBoxMon
	add r6, r0, #0
	bl MTRandom
	mov r1, #0x18
	bl _u32_div_f
	ldr r0, [sp, #0x10]
	add r3, r1, #0
	ldrb r0, [r0, #0xe]
	ldr r1, _021EECD8 ; =0x0000AD14
	ldr r2, [sp, #0x10]
	lsl r0, r0, #0x1e
	lsr r0, r0, #0x1f
	str r0, [sp]
	ldr r1, [r5, r1]
	add r0, r4, #0
	bl ov112_021EE9E4
	ldr r0, _021EECDC ; =0x0000AD2E
	add r2, sp, #0x18
	ldrb r0, [r5, r0]
	add r2, #1
	lsl r0, r0, #0x1f
	lsr r1, r0, #0x1f
	add r0, sp, #0x18
	strb r1, [r0, #1]
	add r0, r6, #0
	mov r1, #0x9d
	bl SetBoxMonData
	ldr r2, [sp, #4]
	add r0, r6, #0
	mov r1, #0x91
	bl SetBoxMonData
	add r0, r4, #0
	bl Mon_GetBoxMon
	mov r1, #0x9a
	str r1, [sp]
	ldr r3, _021EECE0 ; =0x0000AD1A
	ldr r1, _021EECC4 ; =0x0001E438
	ldrh r3, [r5, r3]
	ldr r1, [r5, r1]
	mov r2, #4
	bl BoxMonSetTrainerMemo
	ldr r2, _021EECE4 ; =0x0000AD2F
	add r0, r6, #0
	mov r1, #0xa
	add r2, r5, r2
	bl SetBoxMonData
	mov r1, #1
	add r0, sp, #0x18
	strb r1, [r0]
	add r0, r6, #0
	mov r1, #0x6e
	add r2, sp, #0x18
	bl SetBoxMonData
	ldr r2, _021EECE8 ; =0x0000AD30
	add r0, r6, #0
	mov r1, #0x9b
	add r2, r5, r2
	bl SetBoxMonData
	add r0, r7, #0
	add r1, sp, #0x24
	add r2, sp, #0x20
	bl PCStorage_FindFirstEmptySlot
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x20]
	add r0, r7, #0
	add r3, r6, #0
	bl PCStorage_PlaceMonInBoxByIndexPair
	ldr r0, _021EECD0 ; =0x0001E444
	add r1, r4, #0
	ldr r0, [r5, r0]
	bl Pokedex_SetMonSeenFlag
	ldr r0, _021EECD0 ; =0x0001E444
	add r1, r4, #0
	ldr r0, [r5, r0]
	bl Pokedex_SetMonCaughtFlag
	ldr r0, _021EECEC ; =0x0001E430
	ldr r0, [r5, r0]
	cmp r0, #0
	bne _021EECAC
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x20]
	add r0, r7, #0
	bl PCStorage_GetMonByIndexPair
	ldr r1, _021EECEC ; =0x0001E430
	str r0, [r5, r1]
_021EECAC:
	ldr r0, [sp, #4]
	bl String_Delete
_021EECB2:
	ldr r0, [sp, #0xc]
	bl String_Delete
	add r0, r4, #0
	bl Heap_Free
	add sp, #0x28
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021EECC4: .word 0x0001E438
_021EECC8: .word 0x0001E440
_021EECCC: .word 0x00009D7C
_021EECD0: .word 0x0001E444
_021EECD4: .word 0x0000AABC
_021EECD8: .word 0x0000AD14
_021EECDC: .word 0x0000AD2E
_021EECE0: .word 0x0000AD1A
_021EECE4: .word 0x0000AD2F
_021EECE8: .word 0x0000AD30
_021EECEC: .word 0x0001E430
	thumb_func_end ov112_021EEAF0

