	.include "asm/macros.inc"
	.include "overlay_80_0222BDF4.inc"
	.include "global.inc"
	.public FrontierScript_ReadVarPtr
	.public FrtCmd_113

	.text

	thumb_func_start FrtCmd_113
FrtCmd_113: ; 0x0222E10C
	push {r4, lr}
	bl FrontierScript_ReadVarPtr
	add r4, r0, #0
	bl sub_020304B4
	strh r0, [r4]
	mov r0, #0
	pop {r4, pc}
	.balign 4, 0
	thumb_func_end FrtCmd_113

