	.include "asm/macros.inc"
	.include "overlay_80_0222BDF4.inc"
	.include "global.inc"
	.public FrontierScript_ReadVarPtr
	.public FrtCmd_204

	.text

	thumb_func_start FrtCmd_204
FrtCmd_204: ; 0x0222E218
	push {r4, lr}
	add r4, r0, #0
	bl FrontierScript_ReadVarPtr
	ldr r1, [r4]
	add r1, #0x39
	ldrb r1, [r1]
	strh r1, [r0]
	mov r0, #1
	pop {r4, pc}
	thumb_func_end FrtCmd_204

