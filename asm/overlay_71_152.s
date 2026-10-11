	.include "asm/macros.inc"
	.include "overlay_71.inc"
	.include "global.inc"
	.public ov71_0224B1FC
	.extern ov71_0224B234
	.extern ov71_0224BF84

	.text

	.text
	thumb_func_start ov71_0224B1FC
ov71_0224B1FC: ; 0x0224B1FC
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r2, [r4]
	add r5, r0, #0
	cmp r2, #4
	bhs _0224B22A
	lsl r3, r2, #2
	ldr r2, _0224B230 ; =ov71_0224BF84
	add r1, r5, #4
	ldr r2, [r2, r3]
	blx r2
	cmp r0, #0
	beq _0224B220
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	mov r0, #0
	str r0, [r5, #4]
_0224B220:
	add r0, r5, #0
	bl ov71_0224B234
	mov r0, #0
	pop {r3, r4, r5, pc}
_0224B22A:
	mov r0, #1
	pop {r3, r4, r5, pc}
	nop
_0224B230: .word ov71_0224BF84
	thumb_func_end ov71_0224B1FC

