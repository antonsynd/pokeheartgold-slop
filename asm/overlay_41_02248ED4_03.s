	.include "asm/macros.inc"
	.include "overlay_41_02248ED4.inc"
	.include "global.inc"
	.public ov41_02248F18
	.extern ov41_02248F6C
	.extern ov41_02248F80
	.extern ov41_022490F0
	.extern ov41_02249280

    .text

	.text
	thumb_func_start ov41_02248F18
ov41_02248F18: ; 0x02248F18
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	add r4, r1, #0
	add r6, r2, #0
	add r7, r3, #0
	bl ov41_02248E28
	mov r0, #0xd
	mov r1, #0x34
	bl Heap_Alloc
	str r0, [r5]
	mov r1, #0
	mov r2, #0x34
	bl memset
	ldr r1, [r5]
	ldr r0, [sp, #0x18]
	str r4, [r1, #4]
	str r6, [r1, #8]
	str r7, [r1]
	str r0, [r1, #0xc]
	ldr r0, [sp, #0x1c]
	str r0, [r1, #0x2c]
	ldr r0, _02248F5C ; =ov41_02248F80
	str r0, [r5, #4]
	ldr r0, _02248F60 ; =ov41_022490F0
	str r0, [r5, #8]
	ldr r0, _02248F64 ; =ov41_02249280
	str r0, [r5, #0xc]
	ldr r0, _02248F68 ; =ov41_02248F6C
	str r0, [r5, #0x10]
	pop {r3, r4, r5, r6, r7, pc}
	nop
_02248F5C: .word ov41_02248F80
_02248F60: .word ov41_022490F0
_02248F64: .word ov41_02249280
_02248F68: .word ov41_02248F6C
	thumb_func_end ov41_02248F18

