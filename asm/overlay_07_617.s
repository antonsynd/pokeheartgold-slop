	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_02232658
	.extern ov07_0223251C
	.extern ov07_022375BC

	.text

	.text
	thumb_func_start ov07_02232658
ov07_02232658: ; 0x02232658
	push {r4, lr}
	add r4, r1, #0
	bl ov07_0223251C
	lsl r2, r0, #4
	ldr r0, _0223266C ; =ov07_022375BC
	lsl r1, r4, #2
	add r0, r0, r2
	ldr r0, [r1, r0]
	pop {r4, pc}
	.balign 4, 0
_0223266C: .word ov07_022375BC
	thumb_func_end ov07_02232658

