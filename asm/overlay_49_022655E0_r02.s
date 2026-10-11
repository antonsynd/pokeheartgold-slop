	.include "asm/macros.inc"
	.include "overlay_49_022655E0.inc"
	.include "global.inc"
	.public ov49_02265628

    .text

	.text
	thumb_func_start ov49_02265628
ov49_02265628: ; 0x02265628
	push {r4, lr}
	add r4, r0, #0
	ldrh r1, [r4]
	ldrh r0, [r4, #2]
	add r0, r1, r0
	strh r0, [r4]
	ldrh r0, [r4]
	ldr r2, [r4, #4]
	asr r0, r0, #4
	lsl r1, r0, #2
	ldr r0, _0226565C ; =FX_SinCosTable_
	asr r3, r2, #0x1f
	ldrsh r0, [r0, r1]
	asr r1, r0, #0x1f
	bl _ll_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r2, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r2, #0xc
	orr r1, r0
	str r1, [r4, #8]
	pop {r4, pc}
	.balign 4, 0
_0226565C: .word FX_SinCosTable_
	thumb_func_end ov49_02265628

