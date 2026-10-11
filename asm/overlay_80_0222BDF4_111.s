	.include "asm/macros.inc"
	.include "overlay_80_0222BDF4.inc"
	.include "global.inc"
	.public FrontierScript_ReadVar
	.public FrtCmd_069
	.public ov80_0222F030

	.text

	thumb_func_start FrtCmd_069
FrtCmd_069: ; 0x0222DF64
	push {r3, r4, r5, r6, r7, lr}
	sub sp, #0x20
	add r5, r0, #0
	ldr r0, [r5]
	bl FrontierSystem_GetFrontierMap
	add r7, r0, #0
	add r0, r5, #0
	bl FrontierScript_ReadVar
	str r0, [sp, #0x18]
	add r0, r5, #0
	bl FrontierScript_ReadVar
	add r4, r0, #0
	add r0, r5, #0
	bl FrontierScript_ReadVar
	add r6, r0, #0
	add r0, r5, #0
	bl FrontierScriptContext_ReadHalfWord
	str r0, [sp, #0x1c]
	add r0, r5, #0
	bl FrontierScriptContext_ReadHalfWord
	add r0, r5, #0
	bl FrontierScriptContext_ReadHalfWord
	ldr r0, [r5]
	ldr r0, [r0]
	bl Frontier_GetLaunchArgs
	ldr r0, [r0, #8]
	bl SaveArray_Party_Get
	ldr r1, [sp, #0x18]
	bl Party_GetMonByIndex
	str r4, [sp]
	add r1, r0, #0
	str r6, [sp, #4]
	mov r2, #0
	str r2, [sp, #8]
	str r2, [sp, #0xc]
	mov r0, #8
	str r0, [sp, #0x10]
	str r2, [sp, #0x14]
	ldr r3, [sp, #0x1c]
	add r0, r7, #0
	mov r2, #0xb
	bl ov80_0222F030
	mov r0, #0
	add sp, #0x20
	pop {r3, r4, r5, r6, r7, pc}
	thumb_func_end FrtCmd_069

