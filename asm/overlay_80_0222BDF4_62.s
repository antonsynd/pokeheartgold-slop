	.include "asm/macros.inc"
	.include "overlay_80_0222BDF4.inc"
	.include "global.inc"
	.public FrontierScript_ReadVarPtr
	.public FrtCmd_112

	.text

	thumb_func_start FrtCmd_112
FrtCmd_112: ; 0x0222CE00
	push {r3, r4, r5, lr}
	add r5, r0, #0
	ldr r0, [r5]
	ldr r0, [r0]
	bl Frontier_GetLaunchArgs
	add r4, r0, #0
	add r0, r5, #0
	bl FrontierScript_ReadVarPtr
	add r5, r0, #0
	ldr r0, [r4, #8]
	mov r1, #0xb
	add r2, sp, #0
	mov r3, #0
	bl sub_0202FD28
	strh r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end FrtCmd_112

