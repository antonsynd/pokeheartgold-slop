	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021EBB88
	.public ov102_021EC37C

	.text

	thumb_func_start ov102_021EBB88
ov102_021EBB88: ; 0x021EBB88
	push {r4, lr}
	sub sp, #8
	add r4, r0, #0
	mov r0, #0x10
	str r0, [sp]
	ldr r0, _021EBBC0 ; =0x04000050
	mov r1, #2
	mov r2, #0x3f
	mov r3, #0
	bl G2x_SetBlendAlpha_
	mov r0, #1
	add r1, r0, #0
	bl ToggleBgLayer
	mov r0, #0x7c
	str r0, [sp]
	mov r0, #0xc
	add r4, #0x1c
	str r0, [sp, #4]
	add r0, r4, #0
	mov r1, #2
	mov r2, #0x3f
	mov r3, #0
	bl ov102_021EC37C
	add sp, #8
	pop {r4, pc}
	.balign 4, 0
_021EBBC0: .word 0x04000050
	thumb_func_end ov102_021EBB88

