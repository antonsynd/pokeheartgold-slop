	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_02240B70
	.public ov40_02242CFC

	.text

	thumb_func_start ov40_02240B70
ov40_02240B70: ; 0x02240B70
	push {r4, lr}
	mov r1, #0x86
	lsl r1, r1, #4
	ldr r4, [r0, r1]
	bl ov40_02242CFC
	cmp r0, #0
	beq _02240B8A
	add r0, r4, #0
	bl Heap_Free
	mov r0, #1
	pop {r4, pc}
_02240B8A:
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov40_02240B70

