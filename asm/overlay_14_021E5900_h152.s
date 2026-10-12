#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021E5900.inc"
	.include "global.inc"
	.public ov14_021E89B8
	.extern ov14_021E60C0
	.extern ov14_021F7D0C

    .text

	.text
	thumb_func_start ov14_021E89B8
ov14_021E89B8: ; 0x021E89B8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	mov r0, #9
	mov r1, #0x3c
	bl Heap_Alloc
	str r0, [r5, #0x18]
	add r4, r0, #0
	add r0, r5, #0
	add r0, #0x21
	ldrb r0, [r0]
	cmp r0, #0x1e
	bhs _021E89EE
	ldrb r1, [r5, #0x1f]
	add r0, r5, #0
	mov r2, #0
	bl ov14_021E60C0
	str r0, [r4]
	mov r0, #2
	strb r0, [r4, #0x11]
	mov r0, #0x1e
	strb r0, [r4, #0x13]
	add r0, r5, #0
	add r0, #0x21
	ldrb r0, [r0]
	b _021E8A06
_021E89EE:
	ldr r0, [r5, #8]
	str r0, [r4]
	mov r0, #1
	strb r0, [r4, #0x11]
	ldr r0, [r5, #8]
	bl Party_GetCount
	strb r0, [r4, #0x13]
	add r0, r5, #0
	add r0, #0x21
	ldrb r0, [r0]
	sub r0, #0x1e
_021E8A06:
	strb r0, [r4, #0x14]
	ldr r0, [r5, #0x10]
	str r0, [r4, #4]
	ldr r0, [r5]
	ldr r0, [r0]
	bl Save_PlayerData_GetProfile
	add r1, r0, #0
	add r0, r4, #0
	bl sub_0208AD34
	mov r0, #0
	strb r0, [r4, #0x12]
	ldr r1, _021E8A74 ; =ov14_021F7D0C
	add r0, r4, #0
	bl sub_02089D40
	mov r0, #0
	strb r0, [r4, #0x16]
	strb r0, [r4, #0x17]
	strh r0, [r4, #0x18]
	ldr r0, [r5]
	ldr r0, [r0]
	bl SaveArray_IsNatDexEnabled
	str r0, [r4, #0x1c]
	ldr r0, [r5]
	ldr r0, [r0]
	bl Save_SpecialRibbons_Get
	str r0, [r4, #0x20]
	mov r0, #0
	str r0, [r4, #0x24]
	str r0, [r4, #0x28]
	ldr r0, [r5]
	ldr r0, [r0]
	bl sub_02088288
	str r0, [r4, #0x2c]
	ldr r0, [r5]
	ldr r0, [r0]
	bl sub_0208828C
	str r0, [r4, #0x34]
	ldr r0, [r5]
	add r1, r4, #0
	ldr r0, [r0, #4]
	mov r2, #9
	str r0, [r4, #0x30]
	ldr r0, _021E8A78 ; =gOverlayTemplate_PokemonSummary
	bl OverlayManager_New
	str r0, [r5, #0x14]
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
_021E8A74: .word ov14_021F7D0C
_021E8A78: .word gOverlayTemplate_PokemonSummary
	thumb_func_end ov14_021E89B8

