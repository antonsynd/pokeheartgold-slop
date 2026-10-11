	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0223F860
	.public ov40_02242CFC

	.text

	thumb_func_start ov40_0223F860
ov40_0223F860: ; 0x0223F860
	push {r4, lr}
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r4, [r0, r1]
	bl ov40_02242CFC
	cmp r0, #0
	beq _0223F87A
	add r0, r4, #0
	bl Heap_Free
	mov r0, #1
	pop {r4, pc}
_0223F87A:
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov40_0223F860

