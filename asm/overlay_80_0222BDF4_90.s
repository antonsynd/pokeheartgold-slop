	.include "asm/macros.inc"
	.include "overlay_80_0222BDF4.inc"
	.include "global.inc"
	.public FrontierScript_ReadVar
	.public FrtCmd_059
	.public ov80_0222D2EC

	.text

	thumb_func_start FrtCmd_059
FrtCmd_059: ; 0x0222D2CC
	push {r4, lr}
	add r4, r0, #0
	bl FrontierScript_ReadVar
	add r1, r4, #0
	add r1, #0x78
	strh r0, [r1]
	ldr r1, _0222D2E8 ; =ov80_0222D2EC
	add r0, r4, #0
	bl FrontierScriptContext_Pause
	mov r0, #1
	pop {r4, pc}
	nop
_0222D2E8: .word ov80_0222D2EC
	thumb_func_end FrtCmd_059

