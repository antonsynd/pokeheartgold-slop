	.include "asm/macros.inc"
	.include "overlay_05.inc"
	.include "global.inc"
	.public ov05_0221E274
	.extern ov05_0221CD24
	.extern ov05_0221E110
	.extern ov05_0221E2D8
	.extern ov05_0221E390
	.extern ov05_0221E42C
	.extern ov05_0221E4C8
	.extern ov05_0221E564
	.extern ov05_0221EAEC

	.text

	.text
	thumb_func_start ov05_0221E274
ov05_0221E274: ; 0x0221E274
	push {r3, r4, r5, lr}
	sub sp, #0x18
	ldr r5, _0221E2D4 ; =ov05_0221EAEC
	add r3, sp, #0
	add r4, r0, #0
	add r2, r3, #0
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	ldmia r5!, {r0, r1}
	stmia r3!, {r0, r1}
	add r1, r2, #0
	add r0, r4, #0
	mov r2, #0x1f
	bl ov05_0221CD24
	add r0, r4, #0
	bl ov05_0221E2D8
	add r0, r4, #0
	bl ov05_0221E390
	add r0, r4, #0
	bl ov05_0221E42C
	add r0, r4, #0
	bl ov05_0221E4C8
	mov r5, #0
_0221E2B0:
	add r0, r4, #0
	add r1, r5, #0
	bl ov05_0221E110
	add r5, r5, #1
	cmp r5, #6
	blo _0221E2B0
	add r0, r4, #0
	mov r1, #0x10
	bl ov05_0221E564
	mov r0, #0x21
	mov r1, #0x1e
	lsl r0, r0, #4
	str r1, [r4, r0]
	add sp, #0x18
	pop {r3, r4, r5, pc}
	nop
_0221E2D4: .word ov05_0221EAEC
	thumb_func_end ov05_0221E274

