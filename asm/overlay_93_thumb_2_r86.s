	.include "asm/macros.inc"
	.include "overlay_93_thumb_2.inc"
	.include "global.inc"
	.public ov93_02262830

	.text

	.text
	thumb_func_start ov93_02262830
ov93_02262830: ; 0x02262830
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r6, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	add r0, sp, #0
	mov r1, #0
	mov r2, #0x14
	bl MI_CpuFill8
	mov r0, #2
	str r0, [sp]
	add r0, sp, #0
	strh r5, [r0, #4]
	mov r1, #5
	strb r1, [r0, #6]
	strb r4, [r0, #7]
	add r0, r6, #0
	add r1, sp, #0
	bl ov93_0225E230
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end ov93_02262830

