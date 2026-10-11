	.include "asm/macros.inc"
	.include "overlay_80_0222BDF4.inc"
	.include "global.inc"
	.public FrontierScript_ReadVarPtr
	.public FrtCmd_075

	.text

	thumb_func_start FrtCmd_075
FrtCmd_075: ; 0x0222E0EC
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl FrontierScript_ReadVarPtr
	add r4, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl Frontier_GetLaunchArgs
	ldr r0, [r0, #8]
	bl sub_0205C298
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end FrtCmd_075

