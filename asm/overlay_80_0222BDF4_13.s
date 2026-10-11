	.include "asm/macros.inc"
	.include "overlay_80_0222BDF4.inc"
	.include "global.inc"
	.public FrontierScript_ReadVarPtr
	.public FrtCmd_007

	.text

	thumb_func_start FrtCmd_007
FrtCmd_007: ; 0x0222BF94
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl FrontierScript_ReadVarPtr
	add r4, r0, #0
	add r0, r5, #0
	bl FrontierScript_ReadVarPtr
	ldrh r0, [r0]
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end FrtCmd_007

