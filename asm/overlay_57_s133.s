	.include "macros.inc"
	.include "overlay_57.inc"
	.include "global.inc"
	.public ov57_0223B90C
	.extern ov57_0223B890
	.extern ov57_0223B8B8

	.text

	.text
	thumb_func_start ov57_0223B90C
ov57_0223B90C: ; 0x0223B90C
	push {r4, r5, r6, lr}
	add r6, r0, #0
	add r5, r1, #0
	mov r0, #0x34
	mov r1, #0xc
	bl Heap_Alloc
	add r4, r0, #0
	mov r0, #1
	str r0, [r4]
	mov r1, #0
	str r6, [r4, #4]
	add r0, r5, #0
	sub r2, r1, #1
	str r5, [r4, #8]
	bl ov57_0223B890
	mov r2, #0xfa
	ldr r0, _0223B93C ; =ov57_0223B8B8
	add r1, r4, #0
	lsl r2, r2, #2
	bl SysTask_CreateOnMainQueue
	pop {r4, r5, r6, pc}
	.balign 4, 0
_0223B93C: .word ov57_0223B8B8
	thumb_func_end ov57_0223B90C

