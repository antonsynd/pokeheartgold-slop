	.include "asm/macros.inc"
	.include "overlay_71.inc"
	.include "global.inc"
	.public ov71_02249D28
	.extern ov71_0224BDE8

	.text

	.text
	thumb_func_start ov71_02249D28
ov71_02249D28: ; 0x02249D28
	push {r3, r4, r5, lr}
	add r4, r1, #0
	ldr r2, [r4]
	add r5, r0, #0
	cmp r2, #2
	bhs _02249D50
	lsl r3, r2, #2
	ldr r2, _02249D54 ; =ov71_0224BDE8
	add r1, r5, #4
	ldr r2, [r2, r3]
	blx r2
	cmp r0, #0
	beq _02249D4C
	ldr r0, [r4]
	add r0, r0, #1
	str r0, [r4]
	mov r0, #0
	str r0, [r5, #4]
_02249D4C:
	mov r0, #0
	pop {r3, r4, r5, pc}
_02249D50:
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0
_02249D54: .word ov71_0224BDE8
	thumb_func_end ov71_02249D28

