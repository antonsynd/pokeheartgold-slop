	.include "asm/macros.inc"
	.include "overlay_80_0222BDF4.inc"
	.include "global.inc"
	.public FrontierScript_ReadVar
	.public FrtCmd_201

	.text

	thumb_func_start FrtCmd_201
FrtCmd_201: ; 0x0222E160
	push {r3, lr}
	bl FrontierScript_ReadVar
	bl sub_020378E4
	mov r0, #0
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end FrtCmd_201

