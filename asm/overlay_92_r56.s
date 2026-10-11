	.include "asm/macros.inc"
	.include "overlay_92.inc"
	.include "global.inc"
	.public ov92_0225EB40

	.text

	.text
	thumb_func_start ov92_0225EB40
ov92_0225EB40: ; 0x0225EB40
	push {r3, r4, r5, lr}
	add r5, r0, #0
	add r4, r1, #0
	mov r0, #0x71
	mov r1, #0x10
	bl Heap_Alloc
	add r3, r0, #0
	mov r2, #0x10
	mov r1, #0
_0225EB54:
	strb r1, [r3]
	add r3, r3, #1
	sub r2, r2, #1
	bne _0225EB54
	mov r1, #0x4b
	str r5, [r0, #4]
	lsl r1, r1, #4
	strh r1, [r0, #8]
	str r4, [r0, #0xc]
	pop {r3, r4, r5, pc}
	thumb_func_end ov92_0225EB40

