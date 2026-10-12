#include "constants/pokemon.h"
	.include "asm/macros.inc"
	.include "overlay_14_021F6628.inc"
	.include "global.inc"
	.public ov14_021F6AC0
	.extern ov14_021F6B10
	.extern ov14_021F6B28
	.extern ov14_021F8B10

    .text

	.text
	thumb_func_start ov14_021F6AC0
ov14_021F6AC0: ; 0x021F6AC0
	push {r3, r4, r5, r6, lr}
	sub sp, #0xc
	add r6, r1, #0
	add r5, r0, #0
	add r4, r2, #0
	bl ov14_021F6B10
	mov r0, #0xc
	add r2, r6, #0
	mul r2, r0
	mov r0, #1
	str r0, [sp]
	lsl r0, r4, #0x18
	lsr r0, r0, #0x18
	str r0, [sp, #4]
	mov r0, #0xa
	str r0, [sp, #8]
	ldr r0, _021F6B04 ; =ov14_021F8B10
	ldr r1, _021F6B08 ; =ov14_021F8B10 + 4
	ldr r3, _021F6B0C ; =ov14_021F8B10 + 8
	ldr r0, [r0, r2]
	ldr r1, [r1, r2]
	ldr r2, [r3, r2]
	add r3, r5, #0
	bl GridInputHandler_Create
	ldr r1, [r5, #0x34]
	str r0, [r1, #0x2c]
	add r0, r5, #0
	add r1, r4, #0
	bl ov14_021F6B28
	add sp, #0xc
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_021F6B04: .word ov14_021F8B10
_021F6B08: .word ov14_021F8B10 + 4
_021F6B0C: .word ov14_021F8B10 + 8
	thumb_func_end ov14_021F6AC0

