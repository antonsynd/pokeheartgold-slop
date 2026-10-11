	.include "asm/macros.inc"
	.include "overlay_49_022655E0.inc"
	.include "global.inc"
	.public ov49_0226571C

    .text

	.text
	thumb_func_start ov49_0226571C
ov49_0226571C: ; 0x0226571C
	push {r4, r5, r6, lr}
	ldr r6, _02265734 ; =0x00010550
	add r5, r0, #0
	mov r4, #0
_02265724:
	ldr r0, [r5, r6]
	bl Heap_Free
	add r4, r4, #1
	add r5, #0x10
	cmp r4, #0xf
	blt _02265724
	pop {r4, r5, r6, pc}
	.balign 4, 0
_02265734: .word 0x00010550
	thumb_func_end ov49_0226571C

