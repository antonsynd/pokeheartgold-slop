#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021EFDE4.inc"
	.include "global.inc"
	.public ov14_021F0660
	.extern ov14_021F0234
	.extern ov14_021F08BC

    .text

	.text
	thumb_func_start ov14_021F0660
ov14_021F0660: ; 0x021F0660
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	str r1, [sp]
	add r1, r5, #0
	ldr r0, [sp]
	add r1, #0x21
	strb r0, [r1]
	mov r4, #0x1e
	mov r7, #1
	mov r6, #0
_021F0674:
	add r0, r5, #0
	add r0, #0x21
	ldrb r0, [r0]
	cmp r4, r0
	ldr r0, [r5, #0x34]
	bne _021F068A
	add r1, r4, #0
	add r2, r6, #0
	bl ov14_021F3190
	b _021F0692
_021F068A:
	add r1, r4, #0
	add r2, r7, #0
	bl ov14_021F3190
_021F0692:
	add r4, r4, #1
	cmp r4, #0x24
	blo _021F0674
	add r0, r5, #0
	bl ov14_021F3F6C
	add r0, r5, #0
	mov r1, #2
	mov r2, #1
	bl ov14_021F3488
	add r1, r5, #0
	add r1, #0x21
	ldrb r1, [r1]
	ldr r0, [r5, #0x34]
	mov r2, #0
	bl ov14_021F34C8
	add r1, r5, #0
	add r1, #0x21
	ldrb r1, [r1]
	add r0, r5, #0
	mov r2, #1
	mov r3, #0x27
	bl ov14_021F685C
	ldr r1, [sp]
	ldr r0, [r5, #8]
	sub r1, #0x1e
	bl Party_GetMonByIndex
	ldr r1, [sp]
	add r4, r0, #0
	sub r1, #0x1e
	add r0, r5, #0
	str r1, [sp]
	bl ov14_021E6480
	cmp r0, #0
	bne _021F06EE
	add r0, r5, #0
	mov r1, #0x28
	mov r2, #8
	bl ov14_021F6928
	b _021F074C
_021F06EE:
	add r0, r4, #0
	mov r1, #6
	mov r2, #0
	bl GetMonData
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl ItemIdIsMail
	cmp r0, #1
	bne _021F0710
	add r0, r5, #0
	mov r1, #0x28
	mov r2, #6
	bl ov14_021F6928
	b _021F074C
_021F0710:
	add r0, r4, #0
	mov r1, #0xa2
	mov r2, #0
	bl GetMonData
	cmp r0, #0
	beq _021F072A
	add r0, r5, #0
	mov r1, #0x28
	mov r2, #7
	bl ov14_021F6928
	b _021F074C
_021F072A:
	ldrb r1, [r5, #0x1f]
	ldr r0, [r5, #4]
	bl PCStorage_CountEmptySpotsInBox
	cmp r0, #0
	bne _021F0742
	add r0, r5, #0
	mov r1, #0x28
	mov r2, #2
	bl ov14_021F6928
	b _021F074C
_021F0742:
	add r0, r5, #0
	mov r1, #0x28
	mov r2, #0
	bl ov14_021F6928
_021F074C:
	add r0, r5, #0
	bl ov14_021F08BC
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E84A4
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8544
	cmp r0, #0
	bne _021F077A
	mov r0, #0x2f
	ldr r1, [r5, #0x34]
	lsl r0, r0, #4
	ldr r0, [r1, r0]
	bl ov14_021E8314
_021F077A:
	add r0, r5, #0
	mov r1, #1
	add r0, #0x22
	strb r1, [r0]
	ldr r1, _021F0790 ; =ov14_021E9A24
	add r0, r5, #0
	mov r2, #0x6e
	bl ov14_021F0234
	pop {r3, r4, r5, r6, r7, pc}
	nop
_021F0790: .word ov14_021E9A24
	thumb_func_end ov14_021F0660

