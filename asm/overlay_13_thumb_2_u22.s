	.include "asm/macros.inc"
	.include "overlay_13_thumb_2.inc"
	.include "global.inc"
	.public ov13_02222998
	.public ov13_022229EC

	.text

	.text
	thumb_func_start ov13_02222998
ov13_02222998: ; 0x02222998
	push {r4, r5, r6, lr}
	sub sp, #8
	ldr r2, [r1]
	ldr r0, [r1, #4]
	ldr r5, [sp, #0x18]
	str r2, [sp]
	str r0, [sp, #4]
	ldr r0, [r5]
	mov r4, #0
	ldr r2, _022229E8 ; =0x01FF6210
	asr r1, r0, #0x1f
	add r3, r4, #0
	bl _ll_mul
	lsr r3, r0, #6
	lsl r2, r1, #0x1a
	orr r3, r2
	lsr r0, r1, #6
	add r6, r4, r3
	adc r4, r0
	ldr r0, [r5, #4]
	ldr r2, _022229E8 ; =0x01FF6210
	asr r1, r0, #0x1f
	mov r3, #0
	bl _ll_mul
	lsr r3, r0, #6
	lsl r2, r1, #0x1a
	orr r3, r2
	lsr r0, r1, #6
	add r2, r6, r3
	adc r4, r0
	add r0, sp, #0
	mov r1, #1
	add r3, r4, #0
	bl SOC_Poll
	add sp, #8
	pop {r4, r5, r6, pc}
	nop
_022229E8: .word 0x01FF6210
	thumb_func_end ov13_02222998

	thumb_func_start ov13_022229EC
ov13_022229EC: ; 0x022229EC
	push {r3, r4, r5, lr}
	ldr r5, [sp, #0x14]
	ldr r4, [sp, #0x10]
	strb r5, [r4]
	str r4, [sp]
	bl SOC_SendTo
	pop {r3, r4, r5, pc}
	thumb_func_end ov13_022229EC

