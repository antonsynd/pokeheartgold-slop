#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021F6628.inc"
	.include "global.inc"
	.public ov14_021F7AC4

    .text

	.text
	thumb_func_start ov14_021F7AC4
ov14_021F7AC4: ; 0x021F7AC4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5, #0x2c]
	add r4, r2, #0
	bl GridInputHandler_GetDpadBox
	add r1, sp, #0
	add r2, sp, #0
	add r1, #3
	add r2, #2
	bl DpadMenuBox_GetPosition
	ldr r0, [r5, #0x2c]
	add r1, r4, #0
	bl GridInputHandler_GetDpadBox
	add r1, sp, #0
	add r1, #1
	add r2, sp, #0
	bl DpadMenuBox_GetPosition
	mov r0, #0xa
	mov r1, #8
	bl Heap_Alloc
	add r4, r0, #0
	ldr r1, [r4, #4]
	mov r0, #3
	and r1, r0
	mov r0, #0x10
	orr r0, r1
	str r0, [r4, #4]
	add r0, sp, #0
	ldrb r1, [r0, #3]
	strb r1, [r4]
	ldrb r1, [r0, #2]
	strb r1, [r4, #1]
	ldrb r1, [r0, #1]
	ldrb r0, [r0, #3]
	cmp r0, r1
	blo _021F7B24
	sub r0, r0, r1
	strb r0, [r4, #2]
	ldr r1, [r4, #4]
	mov r0, #1
	bic r1, r0
	str r1, [r4, #4]
	b _021F7B34
_021F7B24:
	sub r0, r1, r0
	strb r0, [r4, #2]
	ldr r1, [r4, #4]
	mov r0, #1
	bic r1, r0
	mov r0, #1
	orr r0, r1
	str r0, [r4, #4]
_021F7B34:
	add r0, sp, #0
	ldrb r1, [r0]
	ldrb r0, [r0, #2]
	cmp r0, r1
	blo _021F7B4C
	sub r0, r0, r1
	strb r0, [r4, #3]
	ldr r1, [r4, #4]
	mov r0, #2
	bic r1, r0
	str r1, [r4, #4]
	b _021F7B58
_021F7B4C:
	sub r0, r1, r0
	strb r0, [r4, #3]
	ldr r1, [r4, #4]
	mov r0, #2
	orr r0, r1
	str r0, [r4, #4]
_021F7B58:
	ldrb r0, [r4, #2]
	ldr r1, [r4, #4]
	lsl r0, r0, #8
	lsr r1, r1, #2
	bl _u32_div_f
	lsr r0, r0, #8
	strb r0, [r4, #2]
	ldrb r0, [r4, #3]
	ldr r1, [r4, #4]
	lsl r0, r0, #8
	lsr r1, r1, #2
	bl _u32_div_f
	lsr r0, r0, #8
	strb r0, [r4, #3]
	str r4, [r5, #0xc]
	pop {r3, r4, r5, pc}
	thumb_func_end ov14_021F7AC4

