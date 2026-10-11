	.include "asm/macros.inc"
	.include "overlay_93_thumb_2.inc"
	.include "global.inc"
	.public ov93_02262884

	.text

	.text
	thumb_func_start ov93_02262884
ov93_02262884: ; 0x02262884
	push {r4, r5, r6, r7, lr}
	sub sp, #0x14
	add r7, r0, #0
	add r5, r1, #0
	add r4, r2, #0
	add r0, sp, #0
	mov r1, #0
	mov r2, #0x14
	add r6, r3, #0
	bl MI_CpuFill8
	mov r0, #3
	str r0, [sp]
	add r0, sp, #0
	strh r5, [r0, #4]
	strb r4, [r0, #6]
	mov r1, #4
	strb r1, [r0, #7]
	strb r6, [r0, #8]
	add r0, r7, #0
	add r1, sp, #0
	bl ov93_0225E230
	add sp, #0x14
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov93_02262884

