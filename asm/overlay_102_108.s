	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021EBE3C
	.public ov102_021EC37C

	.text

	thumb_func_start ov102_021EBE3C
ov102_021EBE3C: ; 0x021EBE3C
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #0x10
	str r0, [sp]
	ldr r0, _021EBE7C ; =0x04000050
	mov r1, #4
	mov r2, #0x3f
	mov r3, #0
	bl G2x_SetBlendAlpha_
	mov r0, #2
	mov r1, #1
	bl ToggleBgLayer
	add r0, r4, #0
	mov r3, #0
	add r0, #0x80
	str r3, [r0]
	mov r0, #0x7c
	str r0, [sp]
	mov r0, #0xc
	add r4, #0x40
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #4
	mov r2, #0x3f
	bl ov102_021EC37C
	add sp, #8
	pop {r4, pc}
	nop
_021EBE7C: .word 0x04000050
	thumb_func_end ov102_021EBE3C

