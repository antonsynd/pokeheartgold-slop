#include "config.h"
	.include "asm/macros.inc"
	.include "overlay_112.inc"
	.include "global.inc"
	.public ov112_021EC044
	.public ov112_021EC134
	.extern ov112_021E7464
	.extern ov112_021E7668
	.extern ov112_021E76A8
	.extern ov112_021E9888
	.extern ov112_021E98E8
	.extern ov112_021EC440
	.public gApplication_TitleScreen

	.text

	.text
	thumb_func_start ov112_021EC044
ov112_021EC044: ; 0x021EC044
	push {r3, r4, r5, lr}
	add r4, r0, #0
	mov r5, #0x11
	bl ov112_021E76A8
	cmp r0, #0xf
	bhi _021EC0C8
	add r0, r0, r0
	add r0, pc
	ldrh r0, [r0, #6]
	lsl r0, r0, #0x10
	asr r0, r0, #0x10
	add pc, r0
_021EC05E: ; jump table
	.short _021EC0C8 - _021EC05E - 2 ; case 0
	.short _021EC0C8 - _021EC05E - 2 ; case 1
	.short _021EC07E - _021EC05E - 2 ; case 2
	.short _021EC0C8 - _021EC05E - 2 ; case 3
	.short _021EC082 - _021EC05E - 2 ; case 4
	.short _021EC086 - _021EC05E - 2 ; case 5
	.short _021EC0C8 - _021EC05E - 2 ; case 6
	.short _021EC08A - _021EC05E - 2 ; case 7
	.short _021EC08E - _021EC05E - 2 ; case 8
	.short _021EC092 - _021EC05E - 2 ; case 9
	.short _021EC0C8 - _021EC05E - 2 ; case 10
	.short _021EC096 - _021EC05E - 2 ; case 11
	.short _021EC09A - _021EC05E - 2 ; case 12
	.short _021EC0C8 - _021EC05E - 2 ; case 13
	.short _021EC0C8 - _021EC05E - 2 ; case 14
	.short _021EC09E - _021EC05E - 2 ; case 15
_021EC07E:
	mov r5, #0x12
	b _021EC0C8
_021EC082:
	mov r5, #0x12
	b _021EC0C8
_021EC086:
	mov r5, #0x12
	b _021EC0C8
_021EC08A:
	mov r5, #0x12
	b _021EC0C8
_021EC08E:
	mov r5, #0x12
	b _021EC0C8
_021EC092:
	mov r5, #0x12
	b _021EC0C8
_021EC096:
	mov r5, #0x12
	b _021EC0C8
_021EC09A:
	mov r5, #0x12
	b _021EC0C8
_021EC09E:
	ldr r0, _021EC120 ; =0x0001E538
	mov r1, #0
	ldr r0, [r4, r0]
	bl ManagedSprite_SetDrawFlag
	add r0, r4, #0
	bl ov112_021EC134
	ldr r0, _021EC124 ; =0x0001E440
	ldr r0, [r4, r0]
	bl sub_02032624
	ldr r0, _021EC128 ; =0x0001D758
	mov r1, #0
	str r1, [r4, r0]
	add r0, r0, #4
	str r1, [r4, r0]
	bl ov112_021E7464
	mov r0, #0x14
	pop {r3, r4, r5, pc}
_021EC0C8:
	cmp r5, #0x11
	beq _021EC0D0
	bl ov112_021E7464
_021EC0D0:
	bl ov112_021E7668
	cmp r0, #0
	bne _021EC114
	add r0, r4, #0
	mov r1, #1
	bl ov112_021E98E8
	mov r0, #5
	bl ov112_021E9888
	cmp r0, #0
	beq _021EC0FA
	ldr r0, _021EC12C ; =gSystem
	ldr r1, [r0, #0x48]
	mov r0, #1
	tst r0, r1
	bne _021EC0FA
	mov r0, #2
	tst r0, r1
	beq _021EC11C
_021EC0FA:
	bl ov112_021E7464
	add r0, r4, #0
	mov r1, #1
	mov r2, #3
	mov r3, #0x12
	bl ov112_021EC440
	ldr r0, _021EC130 ; =0x000005DC
	bl PlaySE
	mov r0, #0x21
	pop {r3, r4, r5, pc}
_021EC114:
	add r0, r4, #0
	mov r1, #0
	bl ov112_021E98E8
_021EC11C:
	add r0, r5, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021EC120: .word 0x0001E538
_021EC124: .word 0x0001E440
_021EC128: .word 0x0001D758
_021EC12C: .word gSystem
_021EC130: .word 0x000005DC
	thumb_func_end ov112_021EC044

	thumb_func_start ov112_021EC134
ov112_021EC134: ; 0x021EC134
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r5, r0, #0
	mov r0, #0
	mvn r0, r0
	str r0, [sp, #8]
	mov r0, #0
	str r0, [sp, #4]
	ldr r0, [r5, #0x20]
	bl SaveArray_PCStorage_Get
	add r4, r0, #0
	ldr r0, _021EC1A0 ; =0x0001E440
	add r1, sp, #0
	ldr r0, [r5, r0]
	add r1, #2
	add r2, sp, #0
	ldr r6, _021EC1A4 ; =0x0001F2E8
	bl sub_02032688
	ldr r0, _021EC1A0 ; =0x0001E440
	add r1, r5, r6
	ldr r0, [r5, r0]
	bl Pokewalker_TryGetBoxMon
	cmp r0, #0
	beq _021EC192
	add r0, sp, #0
	ldrh r0, [r0]
	add r1, sp, #8
	add r2, sp, #4
	str r0, [sp, #8]
	add r0, r4, #0
	bl PCStorage_FindFirstEmptySlot
	ldr r1, [sp, #8]
	ldr r2, [sp, #4]
	add r0, r4, #0
	add r3, r5, r6
	bl PCStorage_PlaceMonInBoxByIndexPair
	ldr r1, [sp, #8]
	add r0, r6, #0
	add r0, #0x88
	add sp, #0xc
	strh r1, [r5, r0]
	pop {r3, r4, r5, r6, pc}
_021EC192:
	mov r1, #0
	mvn r1, r1
	add r0, r6, #0
	add r0, #0x88
	strh r1, [r5, r0]
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_021EC1A0: .word 0x0001E440
_021EC1A4: .word 0x0001F2E8
	thumb_func_end ov112_021EC134

