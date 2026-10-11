	.include "asm/macros.inc"
	.include "overlay_81.inc"
	.include "global.inc"
	.public ov81_0223F754
	.public ov81_0224086C
	.public ov81_02240F38
	.public ov81_02241804

	.text

	thumb_func_start ov81_0223F754
ov81_0223F754: ; 0x0223F754
	push {r4, lr}
	add r4, r0, #0
	bl ov81_02241804
	add r0, r4, #0
	mov r1, #1
	bl ov81_02240F38
	add r0, r4, #0
	mov r1, #9
	bl ov81_0224086C
	strb r0, [r4, #0x10]
	pop {r4, pc}
	thumb_func_end ov81_0223F754

