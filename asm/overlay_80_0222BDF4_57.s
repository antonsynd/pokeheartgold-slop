	.include "asm/macros.inc"
	.include "overlay_80_0222BDF4.inc"
	.include "global.inc"
	.public FrtCmd_108

	.text

	thumb_func_start FrtCmd_108
FrtCmd_108: ; 0x0222CB9C
	push {r3, lr}
	ldr r0, [r0]
	ldr r0, [r0]
	bl Frontier_GetLaunchArgs
	ldr r0, [r0, #8]
	mov r1, #0xb
	add r2, sp, #0
	bl sub_0202FBF0
	mov r0, #0
	pop {r3, pc}
	thumb_func_end FrtCmd_108

