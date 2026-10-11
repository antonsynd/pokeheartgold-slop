	.include "asm/macros.inc"
	.include "overlay_80_0222BDF4.inc"
	.include "global.inc"
	.public FrontierScript_ReadVarPtr
	.public FrtCmd_033
	.public ov80_0222BFE4

	.text

	thumb_func_start FrtCmd_033
FrtCmd_033: ; 0x0222C018
	push {r3, r4, r5, lr}
	add r5, r0, #0
	bl FrontierScript_ReadVarPtr
	add r4, r0, #0
	add r0, r5, #0
	bl FrontierScript_ReadVarPtr
	add r1, r0, #0
	ldrh r0, [r4]
	ldrh r1, [r1]
	bl ov80_0222BFE4
	add r5, #0x8c
	strb r0, [r5]
	mov r0, #0
	pop {r3, r4, r5, pc}
	.balign 4, 0
	thumb_func_end FrtCmd_033

