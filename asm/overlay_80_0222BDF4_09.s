	.include "asm/macros.inc"
	.include "overlay_80_0222BDF4.inc"
	.include "global.inc"
	.public FrontierScript_ReadVar
	.public FrtCmd_004

	.text

	thumb_func_start FrtCmd_004
FrtCmd_004: ; 0x0222BF00
	push {r4, r5, r6, lr}
	add r5, r0, #0
	ldr r4, [r5]
	bl FrontierScript_ReadVar
	add r6, r0, #0
	add r0, r5, #0
	bl FrontierScript_ReadVar
	add r2, r0, #0
	ldr r0, [r4]
	add r1, r6, #0
	bl sub_02096854
	add r0, r5, #0
	bl FrontierScriptContext_Stop
	mov r0, #0
	pop {r4, r5, r6, pc}
	.balign 4, 0
	thumb_func_end FrtCmd_004

