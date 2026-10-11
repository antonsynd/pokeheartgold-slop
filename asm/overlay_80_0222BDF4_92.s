	.include "asm/macros.inc"
	.include "overlay_80_0222BDF4.inc"
	.include "global.inc"
	.public FrontierScript_ReadVarPtr
	.public FrtCmd_060

	.text

	thumb_func_start FrtCmd_060
FrtCmd_060: ; 0x0222D328
	push {r3, lr}
	bl FrontierScript_ReadVarPtr
	mov r0, #1
	pop {r3, pc}
	.balign 4, 0
	thumb_func_end FrtCmd_060

