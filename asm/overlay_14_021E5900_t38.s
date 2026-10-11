#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021E5900.inc"
	.include "global.inc"
	.public ov14_021E71E8
	.extern ov14_021E60C0
	.extern ov14_021E71C8

    .text

	.text
	thumb_func_start ov14_021E71E8
ov14_021E71E8: ; 0x021E71E8
	push {r3, r4, r5, r6, r7, lr}
	add r4, r0, #0
	mov r0, #0xa
	mov r1, #0xc
	bl Heap_AllocAtEnd
	ldr r2, [r4, #0x34]
	ldr r1, _021E725C ; =0x000088DC
	str r0, [r2, r1]
	ldr r0, [r4, #0x34]
	ldr r6, [r0, r1]
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	add r2, r0, r1
	ldr r1, _021E7260 ; =0x00004094
	ldrb r1, [r2, r1]
	lsl r1, r1, #2
	add r1, r0, r1
	mov r0, #0xbf
	lsl r0, r0, #2
	ldr r0, [r1, r0]
	str r0, [r6]
	mov r0, #0
	strh r0, [r6, #4]
	strb r0, [r6, #6]
	add r0, r4, #0
	ldrb r1, [r4, #0x1f]
	add r4, #0x21
	ldrb r2, [r4]
	bl ov14_021E60C0
	mov r5, #0
	add r4, r0, #0
	sub r7, r5, #1
_021E722E:
	add r1, r5, #0
	add r0, r4, #0
	add r1, #0x36
	mov r2, #0
	bl GetBoxMonData
	lsl r0, r0, #0x10
	lsr r0, r0, #0x10
	bl ov14_021E71C8
	cmp r0, r7
	beq _021E7254
	ldrb r2, [r6, #6]
	mov r1, #1
	lsl r1, r0
	add r0, r2, #0
	orr r0, r1
	strb r0, [r6, #6]
	pop {r3, r4, r5, r6, r7, pc}
_021E7254:
	add r5, r5, #1
	cmp r5, #4
	blo _021E722E
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_021E725C: .word 0x000088DC
_021E7260: .word 0x00004094
	thumb_func_end ov14_021E71E8

