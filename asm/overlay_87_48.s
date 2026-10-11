	.include "asm/macros.inc"
	.include "overlay_87.inc"
	.include "global.inc"
	.public ov87_021E7A04

	.text

	.text
	thumb_func_start ov87_021E7A04
ov87_021E7A04: ; 0x021E7A04
	push {r4, lr}
	mov r1, #0xe2
	add r4, r0, #0
	lsl r1, r1, #2
	ldr r1, [r4, r1]
	mov r0, #0x7a
	ldr r1, [r1, #0x10]
	bl Heap_Alloc
	mov r1, #0xe3
	lsl r1, r1, #2
	str r0, [r4, r1]
	ldr r0, [r4, r1]
	cmp r0, #0
	bne _021E7A28
	bne _021E7A28
	bl GF_AssertFail
_021E7A28:
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov87_021E7A04

