	.include "asm/macros.inc"
	.include "overlay_47.inc"
	.include "global.inc"
	.public ov47_02258B8C
	.extern ov47_02259E68

	.text

	.text
	thumb_func_start ov47_02258B8C
ov47_02258B8C: ; 0x02258B8C
	push {r4, r5, r6, lr}
	ldr r5, _02258BB0 ; =ov47_02259E68
	add r6, r0, #0
	mov r4, #0
_02258B94:
	ldr r1, [r5]
	ldr r0, [r6]
	lsl r1, r1, #0x18
	lsr r1, r1, #0x18
	bl FreeBgTilemapBuffer
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #4
	blt _02258B94
	ldr r0, [r6]
	bl Heap_Free
	pop {r4, r5, r6, pc}
	.balign 4, 0
_02258BB0: .word ov47_02259E68
	thumb_func_end ov47_02258B8C

