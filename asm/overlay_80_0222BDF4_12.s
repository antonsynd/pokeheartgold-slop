	.include "asm/macros.inc"
	.include "overlay_80_0222BDF4.inc"
	.include "global.inc"
	.public FrontierScript_ReadVarPtr
	.public FrtCmd_006

	.text

	thumb_func_start FrtCmd_006
FrtCmd_006: ; 0x0222BF7C
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl FrontierScript_ReadVarPtr
	add r4, r0, #0
	add r0, r5, #0
	bl FrontierScriptContext_ReadHalfWord
	strh r0, [r4]
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end FrtCmd_006

