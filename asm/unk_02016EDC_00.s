	.include "asm/macros.inc"
	.include "unk_02016EDC.inc"
	.include "global.inc"
	.public sub_02016EDC

	.text
	thumb_func_start sub_02016EDC
sub_02016EDC: ; 0x02016EDC
	push {r3, r4, r5, r6, r7, lr}
	add r5, r1, #0
	mov r1, #0xc
	add r6, r0, #0
	add r7, r2, #0
	bl Heap_Alloc
	add r4, r0, #0
	strb r7, [r4, #8]
	mov r0, #0x1d
	strb r5, [r4, #9]
	lsl r0, r0, #4
	add r7, r5, #0
	mul r7, r0
	add r0, r6, #0
	add r1, r7, #0
	str r6, [r4, #4]
	bl Heap_Alloc
	mov r1, #0
	add r2, r7, #0
	str r0, [r4]
	bl MI_CpuFill8
	mov r3, #0
	cmp r5, #0
	ble _02016F28
	mov r0, #0x1d
	add r6, r3, #0
	mov r2, #1
	lsl r0, r0, #4
_02016F1A:
	ldr r1, [r4]
	add r3, r3, #1
	add r1, r1, r6
	str r2, [r1, #0x20]
	add r6, r6, r0
	cmp r3, r5
	blt _02016F1A
_02016F28:
	add r0, r4, #0
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end sub_02016EDC

