	.include "asm/macros.inc"
	.include "overlay_71.inc"
	.include "global.inc"
	.public ov71_022470DC
	.extern _0224BBD4

	.text

	.text
	thumb_func_start ov71_022470DC
ov71_022470DC: ; 0x022470DC
	push {r3, r4, lr}
	sub sp, #0x14
	add r4, r0, #0
	ldr r0, [r4, #8]
	add r2, sp, #4
	str r0, [sp, #4]
	mov r0, #0
	str r0, [sp, #8]
	str r0, [sp, #0xc]
	ldr r0, [r4, #8]
	mov r3, #0x80
	str r0, [sp, #0x10]
	ldr r0, [r4, #0x1c]
	lsl r1, r0, #2
	ldr r0, _02247120 ; =_0224BBD4
	ldr r0, [r0, r1]
	mov r1, #2
	str r0, [sp]
	ldr r0, [r4]
	bl SetBgAffine
	ldr r0, [r4, #0x1c]
	add r2, sp, #4
	lsl r1, r0, #2
	ldr r0, _02247120 ; =_0224BBD4
	mov r3, #0x80
	ldr r0, [r0, r1]
	mov r1, #6
	str r0, [sp]
	ldr r0, [r4]
	bl SetBgAffine
	add sp, #0x14
	pop {r3, r4, pc}
	.balign 4, 0
_02247120: .word _0224BBD4
	thumb_func_end ov71_022470DC

