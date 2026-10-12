	.include "asm/macros.inc"
	.include "overlay_80_02239D74.inc"
	.include "global.inc"
	.public ov80_02239D74
	.extern ov80_02239DD0
	.extern ov80_02239F48

    .text

	.text
	thumb_func_start ov80_02239D74
ov80_02239D74: ; 0x02239D74
	push {r3, r4, r5, r6, lr}
	sub sp, #4
	add r5, r0, #0
	add r6, r1, #0
	mov r0, #0x65
	mov r1, #0xc
	bl Heap_Alloc
	mov r1, #0
	mov r2, #0xc
	add r4, r0, #0
	bl MI_CpuFill8
	add r0, r5, #0
	bl ov80_02239DD0
	str r0, [r4]
	add r0, r6, #0
	bl ov80_02239F48
	str r0, [r4, #4]
	mov r0, #9
	str r0, [sp]
	ldr r0, _02239DB4 ; =0x04000050
	mov r1, #4
	mov r2, #0x1f
	mov r3, #8
	bl G2x_SetBlendAlpha_
	add r0, r4, #0
	add sp, #4
	pop {r3, r4, r5, r6, pc}
	.balign 4, 0
_02239DB4: .word 0x04000050
	thumb_func_end ov80_02239D74

