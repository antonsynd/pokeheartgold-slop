	.include "asm/macros.inc"
	.include "overlay_57.inc"
	.include "global.inc"
	.public ov57_0223B73C
	.public ov57_0223B74C
	.extern ov57_0223B828

	.text

	.text
	thumb_func_start ov57_0223B73C
ov57_0223B73C: ; 0x0223B73C
	push {r3, lr}
	mov r1, #2
	mov r2, #0
	mov r3, #3
	bl ov57_0223B828
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov57_0223B73C

	thumb_func_start ov57_0223B74C
ov57_0223B74C: ; 0x0223B74C
	push {r3, lr}
	mov r1, #3
	mov r2, #0
	add r3, r1, #0
	bl ov57_0223B828
	mov r0, #0
	pop {r3, pc}
	thumb_func_end ov57_0223B74C

