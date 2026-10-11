	.include "asm/macros.inc"
	.include "overlay_80_0222BDF4.inc"
	.include "global.inc"
	.public FrontierScript_ReadVar
	.public FrtCmd_032
	.public ov80_0222BFE4

	.text

	thumb_func_start FrtCmd_032
FrtCmd_032: ; 0x0222BFF8
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl FrontierScript_ReadVar
	add r4, r0, #0
	add r0, r5, #0
	bl FrontierScriptContext_ReadHalfWord
	add r1, r0, #0
	add r0, r4, #0
	bl ov80_0222BFE4
	add r5, #0x8c
	strb r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	thumb_func_end FrtCmd_032

