	.include "asm/macros.inc"
	.include "overlay_40.inc"
	.include "global.inc"
	.public ov40_0222BF94
	.public ov40_0222C018

	.text

	thumb_func_start ov40_0222C018
ov40_0222C018: ; 0x0222C018
	push {r3, lr}
	ldr r1, _0222C034 ; =0x000006D8
	ldr r1, [r0, r1]
	lsl r1, r1, #2
	add r2, r0, r1
	ldr r1, _0222C038 ; =0x0000081C
	ldr r2, [r2, r1]
	sub r1, r1, #4
	str r2, [r0, r1]
	bl ov40_0222BF94
	mov r0, #1
	pop {r3, pc}
	nop
_0222C034: .word 0x000006D8
_0222C038: .word 0x0000081C
	thumb_func_end ov40_0222C018

