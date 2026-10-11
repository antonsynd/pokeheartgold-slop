	.include "asm/macros.inc"
	.include "overlay_90.inc"
	.include "global.inc"
	.public ov90_02258BD4
	.public ov90_02258DD0
	.public ov90_02258E54

	.text

	thumb_func_start ov90_02258BD4
ov90_02258BD4: ; 0x02258BD4
	push {r3, r4, r5, r6, lr}
	sub sp, #0x14
	add r5, r1, #0
	mov r1, #0x73
	add r6, r0, #0
	add r0, r5, #0
	lsl r1, r1, #2
	bl Heap_Alloc
	mov r2, #0x73
	add r4, r0, #0
	mov r1, #0
	lsl r2, r2, #2
	bl memset
	str r6, [r4, #8]
	mov r0, #0xc8
	add r1, r5, #0
	bl NARC_New
	str r0, [r4, #0xc]
	add r0, r4, #0
	add r0, #0x10
	mov r1, #1
	add r2, r5, #0
	bl ov90_02258DD0
	mov r0, #2
	str r0, [sp]
	mov r0, #1
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	ldr r0, _02258C34 ; =0x00001388
	mov r2, #3
	str r0, [sp, #0xc]
	str r5, [sp, #0x10]
	add r0, r4, #0
	ldr r1, [r4, #0xc]
	add r0, #0x10
	add r3, r2, #0
	bl ov90_02258E54
	str r0, [r4, #0x28]
	add r0, r4, #0
	add sp, #0x14
	pop {r3, r4, r5, r6, pc}
	nop
_02258C34: .word 0x00001388
	thumb_func_end ov90_02258BD4

