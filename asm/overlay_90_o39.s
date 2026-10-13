	.include "asm/macros.inc"
	.include "overlay_90.inc"
	.include "global.inc"
	.public ov90_02259084

	.text

	.text
	thumb_func_start ov90_02259084
ov90_02259084: ; 0x02259084
	push {r4, r5, r6, lr}
	add r5, r0, #0
	mov r1, #3
	ldr r0, [r5]
	add r2, r1, #0
	mov r3, #0
	bl BgSetPosTextAndCommit
	ldr r0, [r5, #8]
	mov r6, #0
	cmp r0, #0
	bls _022590B6
	add r4, r6, #0
_0225909E:
	ldr r1, [r5, #4]
	ldr r0, [r5]
	ldr r1, [r1, r4]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl FreeBgTilemapBuffer
	ldr r0, [r5, #8]
	add r6, r6, #1
	add r4, #0x20
	cmp r6, r0
	blo _0225909E
_022590B6:
	ldr r0, [r5]
	bl Heap_Free
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov90_02259084

