#include "config.h"
#include "constants/pokemon.h"
#include "constants/sndseq.h"
	.include "asm/macros.inc"
	.include "overlay_12_022378C0.inc"
	.include "global.inc"
	.public ov12_0223A218

	.text

	.text
	thumb_func_start ov12_0223A218
ov12_0223A218: ; 0x0223A218
	push {r3, r4, r5, r6, r7, lr}
	bl OverlayManager_GetData
	add r6, r0, #0
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	add r0, #0x2b
	ldrb r0, [r0]
	cmp r0, #0
	beq _0223A25A
	mov r4, #0
	mov r7, #0x71
	add r5, r4, #0
	lsl r7, r7, #2
_0223A236:
	ldr r0, [r6, r7]
	add r0, r0, r5
	ldr r0, [r0, #0x14]
	cmp r0, #0
	beq _0223A244
	bl Heap_Free
_0223A244:
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _0223A236
	mov r0, #0x71
	lsl r0, r0, #2
	ldr r0, [r6, r0]
	bl Heap_Free
	mov r0, #1
	pop {r3, r4, r5, r6, r7, pc}
_0223A25A:
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov12_0223A218

