	.include "asm/macros.inc"
	.include "overlay_71.inc"
	.include "global.inc"
	.public ov71_0224A98C
	.extern ov71_0224A9C4
	.extern ov71_0224BEF0

	.text

	.text
	thumb_func_start ov71_0224A98C
ov71_0224A98C: ; 0x0224A98C
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r2, [r4]
	add r5, r0, #0
	cmp r2, #3
	bhs _0224A9BA
	lsl r3, r2, #2
	ldr r2, _0224A9C0 ; =ov71_0224BEF0
	add r1, r5, #4
	ldr r2, [r2, r3]
	blx r2
	cmp r0, #0
	beq _0224A9B0
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	mov r0, #0
	str r0, [r5, #4]
_0224A9B0:
	add r0, r5, #0
	bl ov71_0224A9C4
	mov r0, #0
	pop {r3, r4, r5, pc}
_0224A9BA:
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_0224A9C0: .word ov71_0224BEF0
	thumb_func_end ov71_0224A98C

