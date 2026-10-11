	.include "asm/macros.inc"
	.include "overlay_80_0222BDF4.inc"
	.include "global.inc"
	.public FrtCmd_024
	.public ov80_0222E5A8

	.text

	thumb_func_start FrtCmd_024
FrtCmd_024: ; 0x0222C2F4
	push {r3, r4, r5, r6, r7, lr}
	add r5, r0, #0
	ldr r4, [r5]
	bl FrontierScriptContext_ReadHalfWord
	add r6, r0, #0
	add r0, r5, #0
	bl FrontierScriptContext_ReadHalfWord
	add r7, r0, #0
	add r0, r5, #0
	bl FrontierScriptContext_ReadHalfWord
	add r3, r0, #0
	ldr r0, [r4, #0x60]
	add r1, r6, #0
	add r2, r7, #0
	bl ov80_0222E5A8
	mov r0, #0
	pop {r3, r4, r5, r6, r7, pc}
	.balign 4, 0
	thumb_func_end FrtCmd_024

