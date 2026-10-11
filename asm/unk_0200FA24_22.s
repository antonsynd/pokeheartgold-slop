	.include "asm/macros.inc"
	.include "unk_0200FA24.inc"
	.include "global.inc"
	.public sub_0200FF88
	.extern sub_0200FFD8

	.text
	thumb_func_start sub_0200FF88
sub_0200FF88: ; 0x0200FF88
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	ldr r0, [sp, #0x18]
	mov r1, #0x10
	add r6, r2, #0
	add r7, r3, #0
	bl Heap_AllocAtEnd
	add r1, r0, #0
	str r5, [r1]
	str r4, [r1, #4]
	mov r2, #1
	str r6, [r1, #8]
	ldr r0, _0200FFB0 ; =sub_0200FFD8
	lsl r2, r2, #0xa
	str r7, [r1, #0xc]
	bl SysTask_CreateOnVWaitQueue
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
_0200FFB0: .word sub_0200FFD8
	thumb_func_end sub_0200FF88

