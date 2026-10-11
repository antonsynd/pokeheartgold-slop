	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_02241A7C
	.public ov81_02242D88
	.public ov81_022431E0

	.text

	thumb_func_start ov81_02241A7C
ov81_02241A7C: ; 0x02241A7C
	push {r4, lr}
	add r4, r0, #0
	ldr r0, [r4, #0x4c]
	mov r1, #2
	bl ov81_022431E0
	mov r0, #0xe3
	lsl r0, r0, #2
	ldr r0, [r4, r0]
	mov r1, #0
	bl ov81_02242D88
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end ov81_02241A7C

