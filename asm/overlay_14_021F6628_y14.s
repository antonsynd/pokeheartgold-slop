#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021F6628.inc"
	.include "global.inc"
	.public ov14_021F67B0
	.extern ov14_021F6698

    .text

	.text
	thumb_func_start ov14_021F67B0
ov14_021F67B0: ; 0x021F67B0
	push {r4, r5, r6, lr}
	add r4, r0, #0
	add r6, r2, #0
	cmp r1, #6
	bhi _021F6836
	add r1, r1, r1
	add r1, pc
	ldrh r1, [r1, #6]
	lsl r1, r1, #0x10
	asr r1, r1, #0x10
	add pc, r1
_021F67C6: ; jump table
	.short _021F67D4 - _021F67C6 - 2 ; case 0
	.short _021F67D8 - _021F67C6 - 2 ; case 1
	.short _021F67F4 - _021F67C6 - 2 ; case 2
	.short _021F6810 - _021F67C6 - 2 ; case 3
	.short _021F6814 - _021F67C6 - 2 ; case 4
	.short _021F6830 - _021F67C6 - 2 ; case 5
	.short _021F6834 - _021F67C6 - 2 ; case 6
_021F67D4:
	mov r5, #2
	b _021F6836
_021F67D8:
	add r2, r4, #0
	add r2, #0x21
	ldrb r1, [r4, #0x1f]
	ldrb r2, [r2]
	mov r5, #3
	bl ov14_021E60C0
	add r2, r0, #0
	ldr r0, [r4, #0x34]
	mov r1, #0
	ldr r0, [r0, #0x24]
	bl BufferBoxMonNickname
	b _021F6836
_021F67F4:
	add r2, r4, #0
	add r2, #0x21
	ldrb r1, [r4, #0x1f]
	ldrb r2, [r2]
	mov r5, #4
	bl ov14_021E60C0
	add r2, r0, #0
	ldr r0, [r4, #0x34]
	mov r1, #0
	ldr r0, [r0, #0x24]
	bl BufferBoxMonNickname
	b _021F6836
_021F6810:
	mov r5, #0x1f
	b _021F6836
_021F6814:
	add r2, r4, #0
	add r2, #0x21
	ldrb r1, [r4, #0x1f]
	ldrb r2, [r2]
	mov r5, #0x20
	bl ov14_021E60C0
	add r2, r0, #0
	ldr r0, [r4, #0x34]
	mov r1, #0
	ldr r0, [r0, #0x24]
	bl BufferBoxMonNickname
	b _021F6836
_021F6830:
	mov r5, #0x21
	b _021F6836
_021F6834:
	mov r5, #6
_021F6836:
	add r0, r4, #0
	add r1, r5, #0
	add r2, r6, #0
	bl ov14_021F6698
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov14_021F67B0

