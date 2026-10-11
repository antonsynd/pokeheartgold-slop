	.include "asm/macros.inc"
	.include "overlay_49_022655E0.inc"
	.include "global.inc"
	.public ov49_02265738

    .text

	.text
	thumb_func_start ov49_02265738
ov49_02265738: ; 0x02265738
	push {r3, r4, r5, r6, r7, lr}
	add r6, r1, #0
	ldr r1, _0226575C ; =0x00010640
	add r7, r2, #0
	mov r4, #0
	add r5, r0, r1
_02265744:
	add r2, r4, #0
	add r0, r5, #0
	add r1, r6, #0
	add r2, #0x90
	add r3, r7, #0
	bl ov49_02258830
	add r4, r4, #1
	add r5, r5, #4
	cmp r4, #0x27
	blt _02265744
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0226575C: .word 0x00010640
	thumb_func_end ov49_02265738

