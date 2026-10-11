	.include "asm/macros.inc"
	.include "overlay_49_022655E0.inc"
	.include "global.inc"
	.public ov49_02265668

    .text

	.text
	thumb_func_start ov49_02265668
ov49_02265668: ; 0x02265668
	push {r3, r4, r5, lr}
	ldr r0, [r0, #4]
	ldr r4, [r1, #8]
	add r5, r2, #0
	bl ov49_02258DAC
	cmp r4, r0
	bne _02265684
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	mov r1, #5
	bl sub_0200606C
	pop {r3, r4, r5, pc}
_02265684:
	add r0, r4, #0
	bl ov49_02258F70
	cmp r0, #0
	bne _02265696
	lsl r0, r5, #0x10
	lsr r0, r0, #0x10
	bl PlaySE
_02265696:
	pop {r3, r4, r5, pc}
	thumb_func_end ov49_02265668

