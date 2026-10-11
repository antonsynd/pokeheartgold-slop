	.include "asm/macros.inc"
	.include "overlay_80_0222BDF4.inc"
	.include "global.inc"
	.public FrontierScript_ReadVar
	.public FrontierScript_ReadVarPtr
	.public FrtCmd_056

	.text

	thumb_func_start FrtCmd_056
FrtCmd_056: ; 0x0222D260
	push {r3, r4, r5, lr}
	add r4, r0, #0
	bl FrontierScript_ReadVarPtr
	add r5, r0, #0
	add r0, r4, #0
	bl FrontierScript_ReadVar
	add r4, r0, #0
	bl LCRandom
	add r1, r4, #0
	bl _s32_div_f
	strh r1, [r5]
	mov r0, #1
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end FrtCmd_056

