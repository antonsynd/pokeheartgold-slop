#include "constants/sndseq.h"
#include "constants/items.h"
#include "msgdata/msg/msg_0010.h"
	.include "asm/macros.inc"
	.include "overlay_15.inc"
	.include "global.inc"
	.public ov15_021FE9F0
	.extern ov15_021FE990

	.text

	.text
	thumb_func_start ov15_021FE9F0
ov15_021FE9F0: ; 0x021FE9F0
	push {r4, r5, r6, r7, lr}
	sub sp, #0x1c
	add r5, r1, #0
	add r1, sp, #0x18
	add r4, r2, #0
	add r6, r3, #0
	bl ov15_021FE990
	add r7, r0, #0
	cmp r6, #0
	bne _021FEA2C
	mov r0, #0x68
	str r0, [sp]
	mov r0, #0x10
	lsl r1, r4, #0x10
	str r0, [sp, #4]
	mov r3, #0
	str r3, [sp, #8]
	lsr r1, r1, #0x10
	str r1, [sp, #0xc]
	mov r1, #0x28
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	add r0, r5, #0
	ldr r1, [r1, #0x14]
	mov r2, #0x18
	bl BlitBitmapRectToWindow
	b _021FEA50
_021FEA2C:
	mov r0, #0x68
	str r0, [sp]
	mov r0, #0x10
	lsl r1, r4, #0x10
	str r0, [sp, #4]
	mov r3, #0
	str r3, [sp, #8]
	lsr r1, r1, #0x10
	str r1, [sp, #0xc]
	mov r1, #0x28
	str r1, [sp, #0x10]
	str r0, [sp, #0x14]
	ldr r1, [sp, #0x18]
	add r0, r5, #0
	ldr r1, [r1, #0x14]
	mov r2, #0x40
	bl BlitBitmapRectToWindow
_021FEA50:
	mov r0, #6
	add r1, r7, #0
	bl Heap_FreeExplicit
	add sp, #0x1c
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov15_021FE9F0

