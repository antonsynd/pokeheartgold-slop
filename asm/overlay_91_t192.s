	.include "asm/macros.inc"
	.include "overlay_91.inc"
	.include "global.inc"
	.public ov91_02260B5C
	.extern ov91_0225E6F8

	.text

	.text
	thumb_func_start ov91_02260B5C
ov91_02260B5C: ; 0x02260B5C
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	mov r0, #0x41
	lsl r0, r0, #2
	ldrsh r1, [r5, r0]
	sub r1, r1, #1
	strh r1, [r5, r0]
	ldrsh r0, [r5, r0]
	cmp r0, #0
	bge _02260BFA
	add r0, r5, #0
	add r0, #0xf8
	ldr r0, [r0]
	bl ov91_0225E6F8
	add r6, r0, #0
	add r0, r5, #0
	add r0, #0xf8
	ldr r1, [r0]
	ldr r0, [r1, #0x10]
	ldr r1, [r1, #8]
	bl FX_Atan2Idx
	asr r0, r0, #4
	lsl r4, r0, #1
	ldr r1, _02260C3C ; =0x0001E200
	lsl r0, r6, #9
	bl _s32_div_f
	lsl r0, r0, #0x10
	lsr r6, r0, #4
	asr r7, r6, #0x1f
	ldr r0, _02260C40 ; =FX_SinCosTable_
	lsl r1, r4, #1
	ldrsh r0, [r0, r1]
	add r2, r6, #0
	add r3, r7, #0
	asr r1, r0, #0x1f
	bl _ll_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r0, r0, r2
	adc r1, r3
	lsl r1, r1, #0x14
	lsr r0, r0, #0xc
	orr r0, r1
	asr r1, r0, #0xc
	lsr r0, r2, #2
	add r1, r1, r0
	lsr r0, r2, #3
	strh r1, [r5, r0]
	add r0, r4, #1
	lsl r1, r0, #1
	ldr r0, _02260C40 ; =FX_SinCosTable_
	add r2, r6, #0
	ldrsh r0, [r0, r1]
	add r3, r7, #0
	asr r1, r0, #0x1f
	bl _ll_mul
	mov r2, #2
	mov r3, #0
	lsl r2, r2, #0xa
	add r4, r0, r2
	adc r1, r3
	lsl r0, r1, #0x14
	lsr r1, r4, #0xc
	orr r1, r0
	asr r1, r1, #0xc
	lsr r0, r2, #2
	add r1, r1, r0
	ldr r0, _02260C44 ; =0x00000102
	strh r1, [r5, r0]
	mov r1, #8
	add r0, r1, #0
	add r0, #0xfc
	strh r1, [r5, r0]
_02260BFA:
	add r0, r5, #0
	add r0, #0xfc
	ldrh r2, [r0]
	mov r0, #1
	lsl r0, r0, #8
	ldrh r1, [r5, r0]
	add r0, r0, #2
	add r2, r2, r1
	add r1, r5, #0
	add r1, #0xfc
	strh r2, [r1]
	add r1, r5, #0
	add r1, #0xfe
	ldrh r1, [r1]
	ldrh r0, [r5, r0]
	mov r2, #0
	add r1, r1, r0
	add r0, r5, #0
	add r0, #0xfe
	strh r1, [r0]
	add r1, r5, #0
	add r1, #0xfc
	ldrh r1, [r1]
	add r0, r5, #4
	bl sub_020182E0
	add r0, r5, #4
	add r5, #0xfe
	ldrh r1, [r5]
	mov r2, #2
	bl sub_020182E0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_02260C3C: .word 0x0001E200
_02260C40: .word FX_SinCosTable_
_02260C44: .word 0x00000102
	thumb_func_end ov91_02260B5C

