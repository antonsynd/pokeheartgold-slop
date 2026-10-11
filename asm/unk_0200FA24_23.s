	.include "asm/macros.inc"
	.include "unk_0200FA24.inc"
	.include "global.inc"
	.public sub_0200FFB4
	.extern sub_0200FFF8

	.text
	thumb_func_start sub_0200FFB4
sub_0200FFB4: ; 0x0200FFB4
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r0, r2, #0
	mov r1, #8
	bl Heap_AllocAtEnd
	add r1, r0, #0
	mov r2, #1
	str r5, [r1]
	ldr r0, _0200FFD4 ; =sub_0200FFF8
	lsl r2, r2, #0xa
	str r4, [r1, #4]
	bl SysTask_CreateOnVWaitQueue
	pop {r3, r4, r5, pc}
	.balign 4, 0
_0200FFD4: .word sub_0200FFF8
	thumb_func_end sub_0200FFB4

