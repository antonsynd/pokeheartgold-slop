	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_02237474
	.extern ov40_022371D4

	.text

	.text
	thumb_func_start ov40_02237474
ov40_02237474: ; 0x02237474
	push {r4, r5, r6, r7, lr}
	sub sp, #0x34
	mov r1, #0x86
	lsl r1, r1, #4
	str r0, [sp, #0x10]
	ldr r4, [r0, r1]
	mov r0, #0x1b
	lsl r0, r0, #4
	ldr r2, [r4, r0]
	lsl r1, r2, #2
	add r1, r4, r1
	add r3, r1, #0
	add r3, #0xe0
	ldr r3, [r3]
	add r5, r4, r2
	str r3, [sp, #0x14]
	add r3, r0, #0
	sub r3, #0x54
	ldrb r7, [r5, r3]
	lsl r3, r2, #1
	add r3, r4, r3
	ldrh r5, [r3, #0x2c]
	ldr r6, [r1, #0x68]
	cmp r5, #0
	bne _022374B2
	mov r0, #0xcb
	mov r1, #0
	lsl r0, r0, #2
	add sp, #0x34
	str r1, [r4, r0]
	pop {r4, r5, r6, r7, pc}
_022374B2:
	sub r0, #0x58
	mov r1, #1
	ldr r0, [r4, r0]
	lsl r1, r2
	bl ov40_022371D4
	cmp r0, #1
	bne _022374D0
	ldr r0, _02237540 ; =0x000001EA
	cmp r5, r0
	bne _022374CC
	mov r7, #1
	b _022374CE
_022374CC:
	mov r7, #0
_022374CE:
	ldr r5, _02237544 ; =0x000001EE
_022374D0:
	add r0, r5, #0
	mov r1, #0x6d
	bl AllocAndLoadMonPersonal
	str r0, [sp, #0x18]
	add r0, r5, #0
	add r1, r6, #0
	bl GetGenderBySpeciesAndPersonality
	str r0, [sp, #0x1c]
	ldr r0, [sp, #0x14]
	add r1, r6, #0
	bl CalcShininessByOtIdAndPersonality
	lsl r3, r7, #0x18
	str r0, [sp, #0x20]
	ldr r1, [sp, #0x1c]
	add r0, r5, #0
	mov r2, #2
	lsr r3, r3, #0x18
	str r6, [sp]
	bl GetMonPicHeightBySpeciesGenderForm
	ldr r0, [sp, #0x20]
	ldr r2, [sp, #0x1c]
	str r0, [sp]
	lsl r0, r7, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	add r0, sp, #0x24
	add r1, r5, #0
	mov r3, #2
	str r6, [sp, #8]
	bl GetMonSpriteCharAndPlttNarcIdsEx
	mov r0, #0
	str r0, [sp]
	str r0, [sp, #4]
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [sp, #0x10]
	add r1, sp, #0x24
	ldr r0, [r0, #0x64]
	mov r2, #0x2a
	mov r3, #0x5b
	bl PokepicManager_CreatePokepic
	mov r1, #0xcb
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [sp, #0x18]
	bl FreeMonPersonal
	add sp, #0x34
	pop {r4, r5, r6, r7, pc}
	nop
_02237540: .word 0x000001EA
_02237544: .word 0x000001EE
	thumb_func_end ov40_02237474

