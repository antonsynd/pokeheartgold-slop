	.include "asm/macros.inc"
	.include "overlay_102.inc"
	.include "global.inc"
	.public ov102_021EBAAC
	.extern ov102_021EC298

	.text

	.text
	thumb_func_start ov102_021EBAAC
ov102_021EBAAC: ; 0x021EBAAC
	push {r3, lr}
	sub sp, #8
	add r1, r0, #0
	mov r0, #0
	str r0, [r1, #0x14]
	str r0, [sp]
	mov r0, #6
	str r0, [sp, #4]
	add r0, r1, #0
	mov r2, #1
	ldr r1, [r1, #0xc]
	add r0, #0x3c
	add r3, r2, #0
	bl ov102_021EC298
	add sp, #8
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end ov102_021EBAAC

