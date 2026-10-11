	.include "asm/macros.inc"
	.include "overlay_80_0222BDF4.inc"
	.include "global.inc"
	.public FrontierScript_ReadVar
	.public FrtCmd_083

	.text

	thumb_func_start FrtCmd_083
FrtCmd_083: ; 0x0222CB24
	push {r3, r4, lr}
	sub sp, #4
	add r4, r0, #0
	bl FrontierScript_ReadVar
	mov r2, #0
	str r2, [sp]
	add r1, r0, #0
	ldr r0, [r4]
	add r3, r2, #0
	ldr r0, [r0]
	bl ov80_02239BF0
	mov r0, #0
	add sp, #4
	pop {r3, r4, pc}
	thumb_func_end FrtCmd_083

