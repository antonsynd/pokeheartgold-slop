	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_02242A8C
	.public ov81_02242D18
	.public ov81_02242DAC

	.text

	thumb_func_start ov81_02242D18
ov81_02242D18: ; 0x02242D18
	push {r4, r5, r6, r7, lr}
	sub sp, #0xc
	add r6, r0, #0
	add r7, r1, #0
	mov r0, #0x64
	mov r1, #0xc
	str r2, [sp, #8]
	add r5, r3, #0
	bl Heap_Alloc
	add r4, r0, #0
	mov r0, #0
	strb r0, [r4]
	strb r0, [r4, #1]
	strb r0, [r4, #2]
	strb r0, [r4, #3]
	strb r0, [r4, #4]
	strb r0, [r4, #5]
	strb r0, [r4, #6]
	strb r0, [r4, #7]
	strb r0, [r4, #8]
	strb r0, [r4, #9]
	strb r0, [r4, #0xa]
	strb r0, [r4, #0xb]
	ldr r0, [sp, #0x24]
	ldr r2, [sp, #8]
	str r0, [r4]
	ldr r0, [sp, #0x28]
	ldr r3, [sp, #0x20]
	str r0, [r4, #4]
	str r5, [sp]
	mov r0, #1
	str r0, [sp, #4]
	add r0, r6, #0
	add r1, r7, #0
	bl ov81_02242A8C
	str r0, [r4, #8]
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x28]
	add r0, r4, #0
	bl ov81_02242DAC
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	thumb_func_end ov81_02242D18

