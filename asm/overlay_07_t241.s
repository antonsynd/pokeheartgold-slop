	.include "asm/macros.inc"
	.include "overlay_07.inc"
	.include "global.inc"
	.public ov07_0222204C

	.text

	.text
	thumb_func_start ov07_0222204C
ov07_0222204C: ; 0x0222204C
	push {r3, lr}
	sub r0, r1, r0
	add r1, r2, #0
	bl FX_Div
	add r1, sp, #0
	str r0, [sp]
	bl FX_Modf
	cmp r0, #0
	beq _0222206C
	mov r0, #1
	ldr r1, [sp]
	lsl r0, r0, #0xc
	add r0, r1, r0
	str r0, [sp]
_0222206C:
	ldr r0, [sp]
	cmp r0, #0
	bge _02222074
	neg r0, r0
_02222074:
	str r0, [sp]
	asr r0, r0, #0xc
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov07_0222204C

