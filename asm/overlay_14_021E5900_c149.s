#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021E5900.inc"
	.include "global.inc"
	.public ov14_021E8A7C

    .text

	.text
	thumb_func_start ov14_021E8A7C
ov14_021E8A7C: ; 0x021E8A7C
	push {r4, lr}
	add r4, r0, #0
	add r1, r4, #0
	add r1, #0x27
	ldrb r1, [r1]
	ldr r0, [r4, #0x18]
	cmp r1, #0
	bne _021E8AA8
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	ldrb r2, [r0, #0x14]
	cmp r1, #0x1e
	bhs _021E8AA0
	add r1, r4, #0
	add r1, #0x21
	strb r2, [r1]
	b _021E8AA8
_021E8AA0:
	add r1, r4, #0
	add r2, #0x1e
	add r1, #0x21
	strb r2, [r1]
_021E8AA8:
	add r1, r4, #0
	add r1, #0x21
	ldrb r1, [r1]
	cmp r1, #0x1e
	bhs _021E8AC0
	ldr r0, [r0, #0x38]
	cmp r0, #1
	bne _021E8AC0
	ldrb r1, [r4, #0x1f]
	ldr r0, [r4, #4]
	bl PCStorage_SetBoxModified
_021E8AC0:
	ldr r0, [r4, #0x18]
	bl Heap_Free
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov14_021E8A7C

