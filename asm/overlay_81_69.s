	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_02242A8C
	.public ov81_02242CBC
	.public ov81_02242D94

	.text

	thumb_func_start ov81_02242CBC
ov81_02242CBC: ; 0x02242CBC
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
	mov r1, #0
	strb r1, [r4]
	strb r1, [r4, #1]
	strb r1, [r4, #2]
	strb r1, [r4, #3]
	strb r1, [r4, #4]
	strb r1, [r4, #5]
	strb r1, [r4, #6]
	strb r1, [r4, #7]
	strb r1, [r4, #8]
	strb r1, [r4, #9]
	strb r1, [r4, #0xa]
	ldr r0, [sp, #0x24]
	strb r1, [r4, #0xb]
	str r0, [r4]
	ldr r0, [sp, #0x28]
	ldr r2, [sp, #8]
	str r0, [r4, #4]
	str r5, [sp]
	str r1, [sp, #4]
	ldr r3, [sp, #0x20]
	add r0, r6, #0
	add r1, r7, #0
	bl ov81_02242A8C
	str r0, [r4, #8]
	ldr r1, [sp, #0x24]
	ldr r2, [sp, #0x28]
	add r0, r4, #0
	bl ov81_02242D94
	add r0, r4, #0
	add sp, #0xc
	pop {r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end ov81_02242CBC

